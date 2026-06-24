// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

// ── Fixed (non-cluster) register defines ─────────────────────────────────────
`define REG_INFO        7'b0000000 //BASEADDR+0x00 CONTAINS NUMBER OF CORES [31:16] AND CLUSTERS [15:0]
`define REG_FCBOOT      7'b0000001 //BASEADDR+0x04
`define REG_FCFETCH     7'b0000010 //BASEADDR+0x08

`define REG_PADFUN0     7'b0000100 //BASEADDR+0x10 sets the mux for pins  0 (bits [1:0]) to 15 (bits [31:30])
`define REG_PADFUN1     7'b0000101 //BASEADDR+0x14 sets the mux for pins 16 (bits [1:0]) to 31 (bits [31:30])
`define REG_PADFUN2     7'b0000110 //BASEADDR+0x18 sets the mux for pins 32 (bits [1:0]) to 47 (bits [31:30])
`define REG_PADFUN3     7'b0000111 //BASEADDR+0x1C sets the mux for pins 48 (bits [1:0]) to 63 (bits [31:30])

// PAD configuration bits [5:0]:
//   bit0   : pull UP enable
//   bit1   : pull DOWN enable
//   bit2   : Schmitt Trigger enable
//   bit3   : Slew Rate Limit enable
//   bit4-5 : Driving Strength
//   bit6-7 : unused
`define REG_PADCFG0     7'b0001000 //BASEADDR+0x20 pins  0- 3
`define REG_PADCFG1     7'b0001001 //BASEADDR+0x24 pins  4- 7
`define REG_PADCFG2     7'b0001010 //BASEADDR+0x28 pins  8-11
`define REG_PADCFG3     7'b0001011 //BASEADDR+0x2C pins 12-15
`define REG_PADCFG4     7'b0001100 //BASEADDR+0x30 pins 16-19
`define REG_PADCFG5     7'b0001101 //BASEADDR+0x34 pins 20-23
`define REG_PADCFG6     7'b0001110 //BASEADDR+0x38 pins 24-27
`define REG_PADCFG7     7'b0001111 //BASEADDR+0x3C pins 28-31
`define REG_PADCFG8     7'b0010000 //BASEADDR+0x40 pins 32-35
`define REG_PADCFG9     7'b0010001 //BASEADDR+0x44 pins 36-39
`define REG_PADCFG10    7'b0010010 //BASEADDR+0x48 pins 40-43
`define REG_PADCFG11    7'b0010011 //BASEADDR+0x4C pins 44-47
`define REG_PADCFG12    7'b0010100 //BASEADDR+0x50 pins 48-51
`define REG_PADCFG13    7'b0010101 //BASEADDR+0x54 pins 52-55
`define REG_PADCFG14    7'b0010110 //BASEADDR+0x58 pins 56-59
`define REG_PADCFG15    7'b0010111 //BASEADDR+0x5C pins 60-63

`define REG_JTAGREG     7'b0011101 //BASEADDR+0x74

`define REG_CORESTATUS  7'b0101000 //BASEADDR+0xA0 EOC(bit[31]) + status(bit[30:0])
`define REG_CS_RO       7'b0110000 //BASEADDR+0xC0 read-only mirror of REG_CORESTATUS
`define REG_BOOTSEL     7'b0110001 //BASEADDR+0xC4
`define REG_CLKSEL      7'b0110010 //BASEADDR+0xC8

`define REG_CTRL_PER    7'b0011110 //BASEADDR+0x78  (hyper-AXI select)

// ── N-cluster register address scheme (byte offsets from APB base) ────────────
//
//   Cluster cl block base = 0x100 + cl * 0x10
//
//   +0x00  CLUSTER_CTRL_cl  — byp[0] pow[1] fetch_en[2] rstn[3]
//   +0x04  CLUSTER_IRQ_cl   — irq[0]
//   +0x08  CLUSTER_BOOT_cl  — 32-bit boot address
//   +0x0C  (reserved)
//
//   The block now starts at 0x100, ABOVE every fixed register
//   (CORESTATUS 0xA0, CS_RO 0xC0, BOOTSEL 0xC4, CLKSEL 0xC8, JTAGREG 0x74,
//   CTRL_PER 0x78). The previous 0x70 base collided with CORESTATUS for
//   NB_CLUSTERS >= 4 (cluster 3 base = 0xA0), which shadowed the EOC bit and
//   prevented the testbench from ever seeing end-of-computation.
//
//   With a 4 KB (APB_ADDR_WIDTH=12) window the real ceiling is the 48-cluster
//   address-space limit, not the register map.

//`define MSG_VERBOSE

module apb_soc_ctrl #(
    parameter int unsigned APB_ADDR_WIDTH = 12,  // APB slaves are 4KB by default
    parameter int unsigned NB_CLUSTERS    = 1,   // N_CLUSTERS  (generalized)
    parameter int unsigned NB_CORES       = 4,   // N_CORES
    parameter int unsigned JTAG_REG_SIZE  = 8,
    parameter int unsigned NBIT_PADCFG    = 6
) (
    input  logic                      HCLK,
    input  logic                      HRESETn,
    input  logic [APB_ADDR_WIDTH-1:0] PADDR,
    input  logic               [31:0] PWDATA,
    input  logic                      PWRITE,
    input  logic                      PSEL,
    input  logic                      PENABLE,
    output logic               [31:0] PRDATA,
    output logic                      PREADY,
    output logic                      PSLVERR,

    input  logic                      sel_fll_clk_i,
    input  logic                      boot_l2_i,
    input  logic [1:0]                bootsel_i,
    input  logic                      fc_fetch_en_valid_i,
    input  logic                      fc_fetch_en_i,

    output logic [63:0][NBIT_PADCFG-1:0] pad_cfg,
    output logic [63:0][1:0]             pad_mux,

    input  logic [JTAG_REG_SIZE-1:0]  soc_jtag_reg_i,
    output logic [JTAG_REG_SIZE-1:0]  soc_jtag_reg_o,

    output logic               [31:0] fc_bootaddr_o,
    output logic                      fc_fetchen_o,
    output logic                      sel_hyper_axi_o,

    output logic [NB_CLUSTERS-1:0]        cluster_pow_o,
    output logic [NB_CLUSTERS-1:0]        cluster_byp_o,
    output logic [NB_CLUSTERS-1:0][31:0]  cluster_boot_addr_o,
    output logic [NB_CLUSTERS-1:0]        cluster_fetch_enable_o,
    output logic [NB_CLUSTERS-1:0]        cluster_rstn_o,
    output logic [NB_CLUSTERS-1:0]        cluster_irq_o
);

    // ── Sanity checks ─────────────────────────────────────────────────────────
    if (NBIT_PADCFG > 8 || NBIT_PADCFG < 3)
        $error("apb_soc_ctrl: NBIT_PADCFG out of range [3,8].");
    if (NB_CLUSTERS > 48)
        $error("apb_soc_ctrl: NB_CLUSTERS > 48 exceeds the cluster address space.");

    // ── Internal registers ────────────────────────────────────────────────────
    logic [31:0] r_pwr_reg;
    logic [31:0] r_corestatus;

    logic  [6:0] s_apb_addr;
    logic [15:0] n_cores;
    logic [15:0] n_clusters;

    logic [63:0] r_pad_fun0;
    logic [63:0] r_pad_fun1;

    // Per-cluster register arrays
    logic [NB_CLUSTERS-1:0][31:0] r_cluster_boot;
    logic [NB_CLUSTERS-1:0]       r_cluster_fetch_enable;
    logic [NB_CLUSTERS-1:0]       r_cluster_rstn;
    logic [NB_CLUSTERS-1:0]       r_cluster_byp;
    logic [NB_CLUSTERS-1:0]       r_cluster_pow;
    logic [NB_CLUSTERS-1:0]       r_cluster_irq;

    logic [JTAG_REG_SIZE-1:0] r_jtag_rego;
    logic [JTAG_REG_SIZE-1:0] r_jtag_regi_sync[1:0];

    logic [31:0] r_bootaddr;
    logic        r_fetchen;
    logic        r_sel_hyper_axi;
    logic  [1:0] r_bootsel;

    // ── Output wiring ─────────────────────────────────────────────────────────
    assign soc_jtag_reg_o         = r_jtag_rego;
    assign fc_bootaddr_o          = r_bootaddr;
    assign fc_fetchen_o           = r_fetchen;
    assign cluster_pow_o          = r_cluster_pow;
    assign cluster_byp_o          = r_cluster_byp;
    assign cluster_rstn_o         = r_cluster_rstn;
    assign cluster_boot_addr_o    = r_cluster_boot;
    assign cluster_fetch_enable_o = r_cluster_fetch_enable;
    assign cluster_irq_o          = r_cluster_irq;
    assign sel_hyper_axi_o        = r_sel_hyper_axi;

    assign n_cores    = NB_CORES;
    assign n_clusters = NB_CLUSTERS;

    assign PREADY  = 1'b1;
    assign PSLVERR = 1'b0;

    assign s_apb_addr = PADDR[8:2];

    // ── pad_mux reconstruction ────────────────────────────────────────────────
    always_comb begin
        for (int i = 0; i < 64; i++) begin
            pad_mux[i][0] = r_pad_fun0[i];
            pad_mux[i][1] = r_pad_fun1[i];
        end
    end

    // ── Cluster address decode helpers ────────────────────────────────────────
    //
    //  get_cluster_idx : returns 0..NB_CLUSTERS-1 if PADDR falls in the cluster
    //                    register block, else -1.
    //  PADDR[3:2]      : selects the register within each cluster block
    //                    2'b00=CTRL  2'b01=IRQ  2'b10=BOOT  2'b11=reserved
    //
    //  Block base is 0x100, ABOVE all fixed registers. The compare uses the full
    //  PADDR (NOT addr[7:0], which cannot represent 0x100 and would wrap).

    localparam logic [APB_ADDR_WIDTH-1:0] CLUSTER_REG_BASE   = 'h100;
    localparam logic [APB_ADDR_WIDTH-1:0] CLUSTER_REG_STRIDE = 'h10;

    function automatic int get_cluster_idx(input logic [APB_ADDR_WIDTH-1:0] addr);
        get_cluster_idx = -1;
        for (int c = 0; c < NB_CLUSTERS; c++) begin
            automatic logic [APB_ADDR_WIDTH-1:0] base =
                CLUSTER_REG_BASE + c*CLUSTER_REG_STRIDE;
            if (addr >= base && addr <= (base + 'h08))
                get_cluster_idx = c;
        end
    endfunction

    // ── Sequential write path ─────────────────────────────────────────────────
    always_ff @(posedge HCLK or negedge HRESETn) begin
        if (!HRESETn) begin
            r_corestatus           <= '0;
            r_pwr_reg              <= '0;
            r_pad_fun0             <= '0;
            r_pad_fun1             <= '0;
            r_jtag_regi_sync[0]    <= '0;
            r_jtag_regi_sync[1]    <= '0;
            r_jtag_rego            <= '0;
            r_bootaddr             <= 32'h1A000080;
            r_fetchen              <= 1'b0;
            r_cluster_pow          <= '0;
            r_cluster_byp          <= {NB_CLUSTERS{1'b1}};   // all bypassed
            pad_cfg                <= '1;
            r_sel_hyper_axi        <= 1'b0;
            r_cluster_fetch_enable <= '0;                     // all fetch disabled
            r_cluster_boot         <= '0;
            r_cluster_rstn         <= {NB_CLUSTERS{1'b1}};   // all OUT of reset
            r_cluster_irq          <= '0;
        end else begin
            // JTAG input double-sync
            r_jtag_regi_sync[1] <= soc_jtag_reg_i;
            r_jtag_regi_sync[0] <= r_jtag_regi_sync[1];

            // Allow fetch-enable to be driven by external signal
            if (fc_fetch_en_valid_i)
                r_fetchen <= fc_fetch_en_i;

            if (PSEL && PENABLE && PWRITE) begin

                // ── Non-cluster registers ─────────────────────────────────
                case (s_apb_addr)
                    `REG_FCBOOT:
                        r_bootaddr <= PWDATA;

                    `REG_FCFETCH:
                        r_fetchen <= PWDATA[0];

                    `REG_PADFUN0:
                        for (int i = 0; i < 16; i++) begin
                            r_pad_fun0[i] <= PWDATA[i*2];
                            r_pad_fun1[i] <= PWDATA[i*2+1];
                        end
                    `REG_PADFUN1:
                        for (int i = 0; i < 16; i++) begin
                            r_pad_fun0[16+i] <= PWDATA[i*2];
                            r_pad_fun1[16+i] <= PWDATA[i*2+1];
                        end
                    `REG_PADFUN2:
                        for (int i = 0; i < 16; i++) begin
                            r_pad_fun0[32+i] <= PWDATA[i*2];
                            r_pad_fun1[32+i] <= PWDATA[i*2+1];
                        end
                    `REG_PADFUN3:
                        for (int i = 0; i < 16; i++) begin
                            r_pad_fun0[48+i] <= PWDATA[i*2];
                            r_pad_fun1[48+i] <= PWDATA[i*2+1];
                        end

                    `REG_PADCFG0: begin
                        pad_cfg[0] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[1] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[2] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[3] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG1: begin
                        pad_cfg[4] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[5] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[6] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[7] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG2: begin
                        pad_cfg[8]  <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[9]  <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[10] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[11] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG3: begin
                        pad_cfg[12] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[13] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[14] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[15] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG4: begin
                        pad_cfg[16] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[17] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[18] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[19] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG5: begin
                        pad_cfg[20] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[21] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[22] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[23] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG6: begin
                        pad_cfg[24] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[25] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[26] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[27] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG7: begin
                        pad_cfg[28] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[29] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[30] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[31] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG8: begin
                        pad_cfg[32] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[33] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[34] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[35] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG9: begin
                        pad_cfg[36] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[37] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[38] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[39] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG10: begin
                        pad_cfg[40] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[41] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[42] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[43] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG11: begin
                        pad_cfg[44] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[45] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[46] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[47] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG12: begin
                        pad_cfg[48] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[49] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[50] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[51] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG13: begin
                        pad_cfg[52] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[53] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[54] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[55] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG14: begin
                        pad_cfg[56] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[57] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[58] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[59] <= PWDATA[24 +: NBIT_PADCFG];
                    end
                    `REG_PADCFG15: begin
                        pad_cfg[60] <= PWDATA[0  +: NBIT_PADCFG];
                        pad_cfg[61] <= PWDATA[8  +: NBIT_PADCFG];
                        pad_cfg[62] <= PWDATA[16 +: NBIT_PADCFG];
                        pad_cfg[63] <= PWDATA[24 +: NBIT_PADCFG];
                    end

                    `REG_JTAGREG:
                        r_jtag_rego <= PWDATA[JTAG_REG_SIZE-1:0];

                    `REG_CORESTATUS:
                        r_corestatus <= PWDATA[31:0];

                    `REG_CTRL_PER: begin
`ifdef HYPER_RAM
                        r_sel_hyper_axi <= PWDATA[0];
`endif
                    end

                    default: begin
`ifndef SYNTHESIS
  `ifdef MSG_VERBOSE
                        $display("[APB SOC CTRL] INVALID WRITE ACCESS to %x at time %t", PADDR, $time);
  `endif
`endif
                    end
                endcase

                // ── N-cluster write decode ────────────────────────────────
                // Runs independently of the case above. Now that the cluster
                // block is at 0x100, it can never overlap a fixed register.
                begin : cluster_write_decode
                    automatic int cl = get_cluster_idx(PADDR);
                    if (cl >= 0) begin
                        case (PADDR[3:2])
                            2'b00: begin   // CLUSTER_CTRL
                                r_cluster_byp[cl]          <= PWDATA[0];
                                r_cluster_pow[cl]          <= PWDATA[1];
                                r_cluster_fetch_enable[cl] <= PWDATA[2];
                                r_cluster_rstn[cl]         <= PWDATA[3];
                            end
                            2'b01:  r_cluster_irq[cl]  <= PWDATA[0];  // CLUSTER_IRQ
                            2'b10:  r_cluster_boot[cl] <= PWDATA;     // CLUSTER_BOOT
                            default: ;  // reserved (+0x0C)
                        endcase
                    end
                end

            end // PSEL && PENABLE && PWRITE
        end
    end // always_ff write

    // ── Combinational read path ───────────────────────────────────────────────
    always_comb begin
        PRDATA = 32'h0;

        // ── N-cluster read decode (checked first) ─────────────────────────
        begin : cluster_read_decode
            automatic int cl = get_cluster_idx(PADDR);
            if (cl >= 0) begin
                case (PADDR[3:2])
                    2'b00:  PRDATA = {28'h0,
                                      r_cluster_rstn[cl],
                                      r_cluster_fetch_enable[cl],
                                      r_cluster_pow[cl],
                                      r_cluster_byp[cl]};
                    2'b01:  PRDATA = {31'b0, r_cluster_irq[cl]};
                    2'b10:  PRDATA = r_cluster_boot[cl];
                    default: PRDATA = 32'h0;
                endcase
            end else begin
                // ── Fixed (non-cluster) read decode ───────────────────────
                case (s_apb_addr)
                    `REG_PADFUN0:
                        for (int i = 0; i < 16; i++) begin
                            PRDATA[i*2]   = r_pad_fun0[i];
                            PRDATA[i*2+1] = r_pad_fun1[i];
                        end
                    `REG_PADFUN1:
                        for (int i = 0; i < 16; i++) begin
                            PRDATA[i*2]   = r_pad_fun0[16+i];
                            PRDATA[i*2+1] = r_pad_fun1[16+i];
                        end
                    `REG_PADFUN2:
                        for (int i = 0; i < 16; i++) begin
                            PRDATA[i*2]   = r_pad_fun0[32+i];
                            PRDATA[i*2+1] = r_pad_fun1[32+i];
                        end
                    `REG_PADFUN3:
                        for (int i = 0; i < 16; i++) begin
                            PRDATA[i*2]   = r_pad_fun0[48+i];
                            PRDATA[i*2+1] = r_pad_fun1[48+i];
                        end

                    `REG_PADCFG0:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i];
                    `REG_PADCFG1:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+4];
                    `REG_PADCFG2:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+8];
                    `REG_PADCFG3:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+12];
                    `REG_PADCFG4:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+16];
                    `REG_PADCFG5:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+20];
                    `REG_PADCFG6:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+24];
                    `REG_PADCFG7:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+28];
                    `REG_PADCFG8:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+32];
                    `REG_PADCFG9:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+36];
                    `REG_PADCFG10:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+40];
                    `REG_PADCFG11:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+44];
                    `REG_PADCFG12:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+48];
                    `REG_PADCFG13:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+52];
                    `REG_PADCFG14:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+56];
                    `REG_PADCFG15:
                        for (int i = 0; i < 4; i++)
                            PRDATA[i*8 +: NBIT_PADCFG] = pad_cfg[i+60];

                    `REG_FCBOOT:
                        PRDATA = r_bootaddr;
                    `REG_INFO:
                        PRDATA = {n_cores, n_clusters};
                    `REG_CORESTATUS:
                        PRDATA = r_corestatus;
                    `REG_CS_RO:
                        PRDATA = r_corestatus;
                    `REG_BOOTSEL:
                        PRDATA = {30'h0, r_bootsel};
                    `REG_CLKSEL:
                        PRDATA = {31'h0, sel_fll_clk_i};
                    `REG_JTAGREG:
                        PRDATA = {16'h0, r_jtag_regi_sync[0], r_jtag_rego};
                    `REG_CTRL_PER:
                        PRDATA = {31'b0, r_sel_hyper_axi};

                    default: begin
                        PRDATA = 32'h0;
`ifndef SYNTHESIS
  `ifdef MSG_VERBOSE
                        $display("[APB SOC CTRL] INVALID READ ACCESS to %x at time %t", PADDR, $time);
  `endif
`endif
                    end
                endcase
            end
        end
    end // always_comb read

    // ── Boot-select capture (separate FF block, async reset) ──────────────────
    always_ff @(posedge HCLK or negedge HRESETn) begin
        if (!HRESETn)
            r_bootsel <= 2'b00;
        else
            r_bootsel <= bootsel_i;
    end

endmodule
