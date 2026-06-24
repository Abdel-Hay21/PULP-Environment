// ============================================================
// Module      : equalizer
// Description : Top-level MIMO linear equalizer
//
//                 hermitian_mf_chain_comb  ->  linear_solver_pipelined
//
//   Stage 1 (MF)     : forms H^H internally and computes
//                      b(k) = H^H * y(k)              (matched-filter output)
//   Stage 2 (solver) : given precomputed L and 1/diag(L), solves
//                      L z = b   then   L^H x = z      (Cholesky detector)
//                      -> detected symbol vector x(k)
//
//   Net (flat, constant channel):
//       x = (H^H H + sigma^2 I)^-1 H^H y      [regularized / MMSE, see note]
//
// CONSTANT DATA (flat channel => H, L, 1/diag(L) are compile-time constants
// extracted offline by the modeling stage; no channel-estimation block).
// Read here via $readmemh (simulation flow). For synthesis, replace the
// initial-block reads with ROM / parameter initialization.
//
//   top_H_re/_im.txt : 64 entries, 12-bit Q1.11, row-major full 8x8 H
//                      H[r][c] = entry[r*N + c]
//   top_L_re/_im.txt : 36 entries, 16-bit Q5.11, lower triangle incl. diagonal,
//                      row-major (r outer, c = 0..r inner)
//   top_inv.txt      : 8  entries, 16-bit Q4.12, 1/L[r][r] for r = 0..7
//
// VERIFIED NOTE: the provided L factors (H^H H + sigma^2 I), i.e. the realized
// detector is regularized/MMSE, NOT pure zero-forcing. The solver RTL is
// agnostic; the regularization lives entirely in the loaded L.
//
// INTEGRATION GLUE handled at this level:
//   * reset polarity : MF is active-low rst_n; solver 'rst' is ALSO active-low
//                      (rst=1 runs, rst=0 resets), so both get rst_n directly
//   * MF enable      : tied high (continuous operation)
//   * H load strobe  : one-shot h_valid pulse generated after reset release
//   * b -> y seam    : MF out b (Q5.11, 16b) wired straight to solver y (Q5.11) -- formats match
//   * valid chain    : MF x_valid -> solver y_valid ; solver valid_out -> top x_valid
//
// TIMING REQUIREMENT: hold y_valid LOW until at least 2 cycles after rst_n
// deasserts.  During that warmup the one-shot h_valid loads the H^H coeffs
// into the MF core; y vectors presented earlier would be filtered with
// not-yet-loaded (zero) coefficients.  (y_valid is NOT gated internally.)
// ============================================================

module equalizer #(
    parameter int    N          = 8,    // antennas / streams (must be 8)
    parameter int    WL_IN      = 12,   // H and y input word length (Q1.11)
    parameter int    FL_IN      = 11,   // input fractional bits
    parameter int    MF_WL_OUT  = 16,   // datapath width (MF out Q5.11 / solver out Q3.13)

    // Constant-data hex files (override path if not in sim working directory)
    parameter string H_RE_FILE  = "$HOME/GP/rtl/my_ips/EQUALIZER_HWPE/rtl/engine/top_H_re.txt",
    parameter string H_IM_FILE  = "$HOME/GP/rtl/my_ips/EQUALIZER_HWPE/rtl/engine/top_H_im.txt",
    parameter string L_RE_FILE  = "$HOME/GP/rtl/my_ips/EQUALIZER_HWPE/rtl/engine/top_L_re.txt",
    parameter string L_IM_FILE  = "$HOME/GP/rtl/my_ips/EQUALIZER_HWPE/rtl/engine/top_L_im.txt",
    parameter string INV_FILE   = "$HOME/GP/rtl/my_ips/EQUALIZER_HWPE/rtl/engine/top_inv.txt"
)(
    // -------------------------------------------------------
    // Clock / Reset
    // -------------------------------------------------------
    input  logic                              clk,
    input  logic                              rst_n,

    // -------------------------------------------------------
    // y vector input  (received subcarrier vector, Q1.11)
    // -------------------------------------------------------
    input  logic                              y_valid,
    input  logic signed [N*WL_IN-1:0]         y_re_flat,
    input  logic signed [N*WL_IN-1:0]         y_im_flat,

    // -------------------------------------------------------
    // x = detected symbol vector output (Q3.13)
    //   (port width follows MF_WL_OUT; the value is the SOLVER output,
    //    not the intermediate H^H y)
    // -------------------------------------------------------
    output logic                              x_valid,
    output logic signed [N*MF_WL_OUT-1:0]     x_re_flat,
    output logic signed [N*MF_WL_OUT-1:0]     x_im_flat
);

    // Solver datapath width == MF output width
    localparam int WIDTH    = MF_WL_OUT;
    localparam int TRI_ELEM = (N*(N+1))/2;     // 36 for N=8

    // ============================================================
    // Constant matrices (held after one-time file read)
    // ============================================================
    logic signed [WL_IN-1:0] h_real_arr [0:N-1][0:N-1];
    logic signed [WL_IN-1:0] h_imag_arr [0:N-1][0:N-1];

    logic signed [WIDTH-1:0] l_off_re   [0:N-1][0:N-1];
    logic signed [WIDTH-1:0] l_off_im   [0:N-1][0:N-1];
    logic signed [WIDTH-1:0] inv_L_diag [0:N-1];

    // Scratch memories for $readmemh (flat, file order)
    logic [WL_IN-1:0] mem_H_re [0:N*N-1];
    logic [WL_IN-1:0] mem_H_im [0:N*N-1];
    logic [WIDTH-1:0] mem_L_re [0:TRI_ELEM-1];
    logic [WIDTH-1:0] mem_L_im [0:TRI_ELEM-1];
    logic [WIDTH-1:0] mem_inv  [0:N-1];

    initial begin : load_constants
        int r, c, idx;

        // Default-zero the L array; the strict upper triangle stays 0.
        for (r = 0; r < N; r++)
            for (c = 0; c < N; c++) begin
                l_off_re[r][c] = '0;
                l_off_im[r][c] = '0;
            end

        // Read hex files (values are signed two's-complement bit patterns).
        $readmemh(H_RE_FILE, mem_H_re);
        $readmemh(H_IM_FILE, mem_H_im);
        $readmemh(L_RE_FILE, mem_L_re);
        $readmemh(L_IM_FILE, mem_L_im);
        $readmemh(INV_FILE,  mem_inv);

        // H : full 8x8, row-major   H[r][c] = entry[r*N + c]
        for (r = 0; r < N; r++)
            for (c = 0; c < N; c++) begin
                h_real_arr[r][c] = signed'(mem_H_re[r*N + c]);
                h_imag_arr[r][c] = signed'(mem_H_im[r*N + c]);
            end

        // L : lower triangle incl. diagonal, row-major (r outer, c = 0..r);
        //     inv_L_diag[r] = 1/L[r][r].  Diagonal slot of l_off_* is loaded
        //     for faithfulness to load_flat_channel, but the solver divides
        //     via inv_L_diag, so l_off_*[r][r] is expected to be unused.
        idx = 0;
        for (r = 0; r < N; r++) begin
            for (c = 0; c <= r; c++) begin
                l_off_re[r][c] = signed'(mem_L_re[idx]);
                l_off_im[r][c] = signed'(mem_L_im[idx]);
                idx++;
            end
            inv_L_diag[r] = signed'(mem_inv[r]);
        end
    end

    // ============================================================
    // One-shot H-coefficient load strobe
    //   Constant channel -> load H^H into the MF core exactly once,
    //   on the first cycle after reset release.
    // ============================================================
    logic h_valid_int, h_done;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            h_valid_int <= 1'b0;
            h_done      <= 1'b0;
        end else if (!h_done) begin
            h_valid_int <= 1'b1;   // single-cycle pulse
            h_done      <= 1'b1;
        end else begin
            h_valid_int <= 1'b0;
        end
    end

    // ============================================================
    // Stage 1 : Matched filter    b = H^H y
    // ============================================================
    logic                          mf_valid;
    logic signed [N*MF_WL_OUT-1:0] b_re_flat, b_im_flat;

    hermitian_mf_chain_comb #(
        .N         ( N         ),
        .WL_IN     ( WL_IN     ),
        .FL_IN     ( FL_IN     ),
        .INT_BITS  ( 0         ),
        .MF_WL_OUT ( MF_WL_OUT ),
        .MF_FL_OUT ( 11        ),
        .HERM_REG  ( 1         )
        // remaining MF format params (MF_WL_W/FL_W/PROD/Q2..Q5) use verified defaults
    ) u_mf (
        .clk       ( clk         ),
        .rst_n     ( rst_n       ),
        .en        ( 1'b1        ),     // continuous operation
        .h_valid   ( h_valid_int ),
        .h_real    ( h_real_arr  ),
        .h_imag    ( h_imag_arr  ),
        .y_valid   ( y_valid     ),
        .y_re_flat ( y_re_flat   ),
        .y_im_flat ( y_im_flat   ),
        .x_valid   ( mf_valid    ),
        .x_re_flat ( b_re_flat   ),     // = b (H^H y), Q5.11
        .x_im_flat ( b_im_flat   )
    );

    // ============================================================
    // Stage 2 : Cholesky linear solve   L z = b ,  L^H x = z
    //   reset polarity inverted (solver is active-high)
    //   b (Q5.11) -> solver y (FB_Y = 11, Q5.11) : formats already match
    // ============================================================
    linear_solver_pipelined #(
        .N               ( N            ),
        .WIDTH           ( WIDTH        ),
        .ROUNDING_METHOD ( "CONVERGENT" ),
        .FB_Y            ( 11           ),
        .FB_Z            ( 13           ),
        .FB_L            ( 11           ),
        .FB_XHAT         ( 13           ),
        .FB_INV          ( 12           )
        // remaining per-phase PROD/ACC/SUB frac params use verified defaults
    ) u_solver (
        .clk        ( clk        ),
        .rst        ( rst_n      ),     // solver 'rst' is ACTIVE-LOW (rst=1 runs, rst=0 resets)
        .l_off_re   ( l_off_re   ),
        .l_off_im   ( l_off_im   ),
        .inv_L_diag ( inv_L_diag ),
        .y_valid    ( mf_valid   ),     // chained valid from MF
        .y_re_flat  ( b_re_flat  ),
        .y_im_flat  ( b_im_flat  ),
        .x_re_flat  ( x_re_flat  ),     // detected symbols, Q3.13
        .x_im_flat  ( x_im_flat  ),
        .valid_out  ( x_valid    )
    );

endmodule
// ============================================================
// equalizer.sv — end of file
// ============================================================
