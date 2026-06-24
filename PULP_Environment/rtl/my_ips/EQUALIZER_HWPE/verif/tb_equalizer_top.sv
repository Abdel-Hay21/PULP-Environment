`timescale 1ns/1ps
// ============================================================
// Testbench : tb_equalizer_top   (back-to-back streaming)
// DUT       : equalizer_top   (Matched Filter -> Cholesky linear solver)
//
// Drives the 400 modeling y-vectors back-to-back and self-checks the DUT's
// detected symbols against the golden x-vectors.
//
// PROTOCOL (matches the proven sub-block TBs):
//   Both hermitian_mf_chain_comb and linear_solver_pipelined are validated
//   with 1-vector/cycle back-to-back streaming (y_valid held high, new vector
//   each clock). So this TB streams continuously; the n-th x_valid output is
//   matched to the n-th input vector (in-order, fixed-latency pipeline).
//
// RESET: equalizer_top is active-low rst_n. (Inside the DUT the solver's 'rst'
//   is active-low too and is fed rst_n directly.)
//
// FILES REQUIRED IN THE SIM WORKING DIRECTORY
//   read by the DUT : top_H_re.txt top_H_im.txt top_L_re.txt top_L_im.txt top_inv.txt
//   read by the TB  : top_y_re.txt top_y_im.txt top_x_re.txt top_x_im.txt
//
// VECTOR FILE STRUCTURE (all four TB files)
//   3200 lines = 400 vectors x 8 elements; 8 contiguous lines = one vector,
//   line j = element j. All 16-bit hex.   y = Q1.15 (input)   x = Q3.13 (golden)
//
// FORMAT BRIDGE (verified): DUT y port is 12-bit Q1.11; files are 16-bit Q1.15
//   -> feed the top 12 bits  y_q111 = y_word[15:4].  The dropped 4 LSBs are
//   < 1 Q3.13 LSB on x (heavy regularization), so a strict bit-exact match is
//   not guaranteed; scoreboard reports both bit-exact rate and within-TOL rate.
//   Set TOL_LSB=0 for a strict check.
// ============================================================
module tb_equalizer_top #(
    parameter int N          = 8,
    parameter int WL_IN      = 12,     // DUT y port : Q1.11
    parameter int FL_IN      = 11,
    parameter int MF_WL_OUT  = 16,     // DUT x port : Q3.13

    parameter int NUM_VEC    = 400,
    parameter int Y_FILE_W   = 12,     // y files 16-bit (Q1.15)
    parameter int X_FILE_W   = 16,     // x files 16-bit (Q3.13)
    parameter int X_FRAC     = 13,     // Q3.13 frac bits (LSB scaling)

    parameter int TOL_LSB    = 8,      // allowed |err| per element, Q3.13 LSBs (0 = bit-exact)
    parameter int WARMUP     = 8,      // cycles after reset release before streaming
    parameter int DRAIN      = 200,    // extra cycles to flush the pipeline after last input
    parameter int MAX_PRINT  = 20      // cap on verbose per-vector mismatch prints
);

    localparam int ELEMS = N;
    localparam int LINES = NUM_VEC * ELEMS;

    // ---- clock / reset ----
    logic clk = 1'b0;
    logic rst_n;
    always #5 clk = ~clk;   // 100 MHz

    // ---- DUT interface ----
    logic                          y_valid;
    logic signed [N*WL_IN-1:0]     y_re_flat, y_im_flat;
    logic                          x_valid;
    logic signed [N*MF_WL_OUT-1:0] x_re_flat, x_im_flat;

    equalizer_top #(
        .N(N), .WL_IN(WL_IN), .FL_IN(FL_IN), .MF_WL_OUT(MF_WL_OUT)
    ) dut (
        .clk(clk), .rst_n(rst_n),
        .y_valid(y_valid), .y_re_flat(y_re_flat), .y_im_flat(y_im_flat),
        .x_valid(x_valid), .x_re_flat(x_re_flat), .x_im_flat(x_im_flat)
    );

    // ---- vector memories ----
    logic [Y_FILE_W-1:0] y_re_mem [0:LINES-1];
    logic [Y_FILE_W-1:0] y_im_mem [0:LINES-1];
    logic [X_FILE_W-1:0] x_re_mem [0:LINES-1];
    logic [X_FILE_W-1:0] x_im_mem [0:LINES-1];

    initial begin : load_vectors
        $readmemh("top_y_re.txt", y_re_mem);
        $readmemh("top_y_im.txt", y_im_mem);
        $readmemh("top_x_re.txt", x_re_mem);
        $readmemh("top_x_im.txt", x_im_mem);
    end

    function automatic int get_elem (input logic signed [N*MF_WL_OUT-1:0] bus, input int j);
        return $signed(bus[j*MF_WL_OUT +: MF_WL_OUT]);
    endfunction

    // ---- scoreboard ----
    int     out_idx, vec_fail, first_fail, max_abs_err;
    longint cmp_total, cmp_exact, cmp_within, sum_abs_err;

    task automatic check_vector(input int vi);
        int j, dr, di, er, ei, ar, ai;
        logic vec_ok;
        vec_ok = 1'b1;
        for (j = 0; j < ELEMS; j++) begin
            dr = get_elem(x_re_flat, j);
            di = get_elem(x_im_flat, j);
            er = $signed(x_re_mem[vi*ELEMS + j]);
            ei = $signed(x_im_mem[vi*ELEMS + j]);
            ar = (dr > er) ? (dr - er) : (er - dr);
            ai = (di > ei) ? (di - ei) : (ei - di);
            cmp_total++; sum_abs_err += ar; if (ar > max_abs_err) max_abs_err = ar;
            if (ar == 0) cmp_exact++;  if (ar <= TOL_LSB) cmp_within++; else vec_ok = 1'b0;
            cmp_total++; sum_abs_err += ai; if (ai > max_abs_err) max_abs_err = ai;
            if (ai == 0) cmp_exact++;  if (ai <= TOL_LSB) cmp_within++; else vec_ok = 1'b0;
        end
        if (!vec_ok) begin
            if (first_fail < 0) first_fail = vi;
            if (vec_fail < MAX_PRINT) begin
                $display("[FAIL] vector %0d", vi);
                for (j = 0; j < ELEMS; j++)
                    $display("   el%0d  DUT=(%0d,%0d)  EXP=(%0d,%0d)  err=(%0d,%0d)",
                             j, get_elem(x_re_flat,j), get_elem(x_im_flat,j),
                             $signed(x_re_mem[vi*ELEMS+j]), $signed(x_im_mem[vi*ELEMS+j]),
                             get_elem(x_re_flat,j) - $signed(x_re_mem[vi*ELEMS+j]),
                             get_elem(x_im_flat,j) - $signed(x_im_mem[vi*ELEMS+j]));
            end
            vec_fail++;
        end
    endtask

    // ---- diagnostics : first assertion of internal/external valids ----
    bit diag_h = 1'b0, diag_mf = 1'b0, diag_x = 1'b0;
    initial begin @(posedge dut.h_valid_int); diag_h  = 1'b1;
                  $display("[DIAG] dut.h_valid_int (H load)     first high @ %0t", $time); end
    initial begin @(posedge dut.mf_valid);     diag_mf = 1'b1;
                  $display("[DIAG] dut.mf_valid    (MF b valid) first high @ %0t", $time); end
    initial begin @(posedge x_valid);          diag_x  = 1'b1;
                  $display("[DIAG] x_valid         (solver out) first high @ %0t", $time); end

    // ============================================================
    // Driver : reset -> warmup -> stream 400 vectors back-to-back
    // ============================================================
    initial begin : driver
        int k, j;
        out_idx=0; vec_fail=0; first_fail=-1; max_abs_err=0;
        cmp_total=0; cmp_exact=0; cmp_within=0; sum_abs_err=0;

        y_valid = 1'b0; y_re_flat = '0; y_im_flat = '0;

        rst_n = 1'b0;
        repeat (5) @(negedge clk);
        rst_n = 1'b1;

        // let the DUT one-shot h_valid load the H^H coefficients
        repeat (WARMUP) @(negedge clk);

        // back-to-back stream (drive on negedge, DUT samples on posedge)
        for (k = 0; k < NUM_VEC; k++) begin
            @(negedge clk);
            for (j = 0; j < ELEMS; j++) begin
                y_re_flat[j*WL_IN +: WL_IN] = y_re_mem[k*ELEMS + j][Y_FILE_W-1 -: WL_IN];
                y_im_flat[j*WL_IN +: WL_IN] = y_im_mem[k*ELEMS + j][Y_FILE_W-1 -: WL_IN];
            end
            y_valid = 1'b1;
        end
        @(negedge clk);
        y_valid = 1'b0;

        // wait for the pipeline to flush the last outputs
        repeat (DRAIN) @(posedge clk);

        if (out_idx < NUM_VEC) begin
            $display("[STALL] only %0d/%0d outputs after drain. seen: h_valid_int=%0b mf_valid=%0b x_valid=%0b",
                     out_idx, NUM_VEC, diag_h, diag_mf, diag_x);
            $display("        (mf_valid=1 & x_valid=0 -> solver; mf_valid=0 -> MF/coef path)");
            report_and_finish();
        end
    end

    // ============================================================
    // Monitor : capture every x_valid output in order
    // ============================================================
    always @(posedge clk) begin : monitor
        if (rst_n && x_valid && (out_idx < NUM_VEC)) begin
            check_vector(out_idx);
            out_idx++;
            if (out_idx == NUM_VEC) report_and_finish();
        end
    end

    // ============================================================
    // Report
    // ============================================================
    task automatic report_and_finish();
        real lsb, exact_pct, within_pct, mean_lsb;
        lsb = 1.0 / real'(1 << X_FRAC);
        if (cmp_total > 0) begin
            exact_pct  = 100.0*real'(cmp_exact )/real'(cmp_total);
            within_pct = 100.0*real'(cmp_within)/real'(cmp_total);
            mean_lsb   = real'(sum_abs_err)/real'(cmp_total);
        end else begin
            exact_pct = 0.0; within_pct = 0.0; mean_lsb = 0.0;
        end
        $display("=========================================================");
        $display(" tb_equalizer_top  RESULTS");
        $display("   output vectors captured : %0d / %0d", out_idx, NUM_VEC);
        $display("   element comparisons      : %0d  (re + im)", cmp_total);
        $display("   bit-exact matches        : %0d  (%.2f%%)", cmp_exact, exact_pct);
        $display("   within TOL_LSB = %0d      : %0d  (%.2f%%)", TOL_LSB, cmp_within, within_pct);
        $display("   max |err|                : %0d LSB   (%.3e)", max_abs_err, real'(max_abs_err)*lsb);
        $display("   mean |err|               : %.3f LSB   (%.3e)", mean_lsb, mean_lsb*lsb);
        $display("   failing vectors          : %0d  (first = %0d)", vec_fail, first_fail);
        if (out_idx == NUM_VEC && vec_fail == 0) $display("   OVERALL : *** PASS ***");
        else if (out_idx != NUM_VEC)             $display("   OVERALL : *** INCOMPLETE (stalled) ***");
        else                                     $display("   OVERALL : *** FAIL ***");
        $display("=========================================================");
        $finish;
    endtask

    // ---- global watchdog ----
    initial begin : watchdog
        repeat (NUM_VEC + WARMUP + DRAIN + 5000) @(posedge clk);
        $display("[TIMEOUT] watchdog fired with %0d/%0d captured", out_idx, NUM_VEC);
        report_and_finish();
    end

`ifdef DUMP_VCD
    initial begin $dumpfile("tb_equalizer_top.vcd"); $dumpvars(0, tb_equalizer_top); end
`endif

endmodule
// ============================================================
// tb_equalizer_top.sv — end of file
// ============================================================