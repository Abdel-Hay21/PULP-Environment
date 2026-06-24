module equalizer #(
  parameter int unsigned N_FFT = 8
) (
    input  logic                          clk_i,
    input  logic                          rst_n,
    input  logic                          valid_in,
    output logic                          valid_out,
    input  logic [N_FFT-1:0] [11:0]       in_r,
    input  logic [N_FFT-1:0] [11:0]       in_i,
    output logic [N_FFT-1:0] [11:0]       out_r,
    output logic [N_FFT-1:0] [11:0]       out_i
);

  // ─── Parameters ───────────────────────────────────────────────
  localparam int unsigned DELAY = 100;

  // ─── Shift Register: 100 stages deep, each stage holds N_FFT×12 bits ──
  logic [DELAY-1:0] [N_FFT-1:0] [11:0] sr_r;
  logic [DELAY-1:0] [N_FFT-1:0] [11:0] sr_i;

  // ─── Valid shift register: tracks valid_in through 100 cycles ─
  logic [DELAY-1:0] valid_sr;

  // ─── Sequential Logic ─────────────────────────────────────────
  always_ff @(posedge clk_i or negedge rst_n) begin
    if (!rst_n) begin
      sr_r      <= '0;
      sr_i      <= '0;
      valid_sr  <= '0;
    end else begin
      // Shift everything: stage[0] = input, stage[k] = stage[k-1]
      sr_r     [0] <= in_r;
      sr_i     [0] <= in_i;
      valid_sr [0] <= valid_in;

      for (int k = 1; k < DELAY; k++) begin
        sr_r     [k] <= sr_r     [k-1];
        sr_i     [k] <= sr_i     [k-1];
        valid_sr [k] <= valid_sr [k-1];
      end
    end
  end

  // ─── Output Logic ─────────────────────────────────────────────
  // Add 1 to each element at the tail of the shift register
  always_comb begin
    for (int n = 0; n < N_FFT; n++) begin
      out_r[n] = sr_r[DELAY-1][n] + 12'd1;
      out_i[n] = sr_i[DELAY-1][n] + 12'd1;
    end
  end

  assign valid_out = valid_sr[DELAY-1];

endmodule