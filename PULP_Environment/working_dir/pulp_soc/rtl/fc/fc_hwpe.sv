// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

module fc_hwpe
#(
    parameter APB_ADDR_WIDTH = 32                    ,
    parameter ID_WIDTH       = 8                     ,
    parameter N_CORES        = 1                     ,
    parameter FIFO_DEPTH     = 4                     ,
    parameter N_CONTEXT      = 2                     ,
    parameter N_MASTER_PORT  = 64                    ,
    parameter N_FFT          = 8                     ,
    parameter BW             = N_MASTER_PORT / N_FFT ,
    parameter DW             = 32 * BW               ,
    parameter BE             = DW / 8  
)
(
    input  logic         clk_i                                  ,
    input  logic         rst_ni                                 ,
    input  logic         test_mode_i                            ,

    XBAR_TCDM_BUS.Master hwacc_xbar_master [N_MASTER_PORT-1:0]  ,
    APB_BUS.Slave        hwacc_cfg_slave                        ,

    output logic [1:0]   evt_o                                  ,
    output logic         busy_o
);

    logic [N_FFT-1 : 0]                tcdm_req           ;
    logic [N_FFT-1 : 0]                tcdm_gnt           ;
    logic [N_FFT-1 : 0] [32-1   : 0]   tcdm_add           ;
    logic [N_FFT-1 : 0]                tcdm_wen           ;
    logic [N_FFT-1 : 0] [BE - 1 : 0]   tcdm_be            ;
    logic [N_FFT-1 : 0] [DW - 1 : 0]   tcdm_wdata         ;
    logic [N_FFT-1 : 0] [DW - 1 : 0]   tcdm_r_rdata       ;
    logic [N_FFT-1 : 0]                tcdm_r_valid       ;


    logic                              periph_req         ;
    logic                              periph_gnt         ;
    logic [32-1   :  0]                periph_add         ;
    logic                              periph_we          ;
    logic [4 -1   :  0]                periph_be          ;
    logic [32-1   :  0]                periph_wdata       ;
    logic [32-1   :  0]                periph_r_rdata     ;
    logic                              periph_r_valid     ;

    apb2per #(
        .PER_ADDR_WIDTH (       32       ),
        .APB_ADDR_WIDTH ( APB_ADDR_WIDTH )
    ) i_apb2per (
        .clk_i                ( clk_i                   ),
        .rst_ni               ( rst_ni                  ),
        .PADDR                ( hwacc_cfg_slave.paddr   ),
        .PWDATA               ( hwacc_cfg_slave.pwdata  ),
        .PWRITE               ( hwacc_cfg_slave.pwrite  ),
        .PSEL                 ( hwacc_cfg_slave.psel    ),
        .PENABLE              ( hwacc_cfg_slave.penable ),
        .PRDATA               ( hwacc_cfg_slave.prdata  ),
        .PREADY               ( hwacc_cfg_slave.pready  ),
        .PSLVERR              ( hwacc_cfg_slave.pslverr ),
        .per_master_req_o     ( periph_req              ),
        .per_master_add_o     ( periph_add              ),
        .per_master_we_o      ( periph_we               ),
        .per_master_wdata_o   ( periph_wdata            ),
        .per_master_be_o      ( periph_be               ),
        .per_master_gnt_i     ( periph_gnt              ),
        .per_master_r_valid_i ( periph_r_valid          ),
        .per_master_r_opc_i   (                         ),
        .per_master_r_rdata_i ( periph_r_rdata          )
    );



    EQUALIZER_top_wrap #(
        .N_CORES          ( N_CORES        ),
        .FIFO_DEPTH       ( FIFO_DEPTH     ),
        .N_CONTEXT        ( N_CONTEXT      ),
        .N_MASTER_PORT    ( N_MASTER_PORT  ),
        .ID               ( ID_WIDTH       ),
        .N_FFT            ( N_FFT          ),
        .BW               ( BW             ),
        .DW               ( DW             ),
        .BE               ( BE             )
    ) i_equalizer_top_wrap (
        .clk_i            ( clk_i          ),
        .rst_ni           ( rst_ni         ),
        .test_mode_i      ( test_mode_i    ),

        .tcdm_req         ( tcdm_req       ),
        .tcdm_gnt         ( tcdm_gnt       ),
        .tcdm_add         ( tcdm_add       ),
        .tcdm_wen         ( tcdm_wen       ),
        .tcdm_be          ( tcdm_be        ),
        .tcdm_data        ( tcdm_wdata     ),
        .tcdm_r_data      ( tcdm_r_rdata   ),
        .tcdm_r_valid     ( tcdm_r_valid   ),

        .periph_req       ( periph_req     ),
        .periph_gnt       ( periph_gnt     ),
        .periph_add       ( periph_add     ),
        .periph_wen       ( ~periph_we     ),
        .periph_be        ( periph_be      ),
        .periph_data      ( periph_wdata   ),
        .periph_id        ( '0             ),
        .periph_r_data    ( periph_r_rdata ),
        .periph_r_valid   ( periph_r_valid ),
        .periph_r_id      (                ),
        .evt_o            ( evt_o          )
    );



    assign busy_o    = 1'b1;


    // aux signals for all-or-nothing gnt/r_valid aggregation across BW banks
    logic [N_FFT-1:0][BW-1:0] bank_gnt;
    logic [N_FFT-1:0][BW-1:0] bank_r_valid;

    generate
        for (genvar i = 0; i < N_FFT; i++) begin : hwacc_binding
            for (genvar j = 0; j < BW; j++) begin : bank_binding

                assign hwacc_xbar_master[i*BW + j].req   = tcdm_req[i];
                assign hwacc_xbar_master[i*BW + j].add   = tcdm_add[i] + 32'd4 * j;
                assign hwacc_xbar_master[i*BW + j].wen   = tcdm_wen[i];
                assign hwacc_xbar_master[i*BW + j].wdata = tcdm_wdata[i][j*32 +: 32];
                assign hwacc_xbar_master[i*BW + j].be    = tcdm_be[i][j*4 +: 4];

                // collect per-bank gnt / r_valid
                assign bank_gnt[i][j]     = hwacc_xbar_master[i*BW + j].gnt;
                assign bank_r_valid[i][j] = hwacc_xbar_master[i*BW + j].r_valid;

                // response data
                assign tcdm_r_rdata[i][j*32 +: 32] = hwacc_xbar_master[i*BW + j].r_rdata;
            end

            // all-or-nothing: gnt/r_valid only when ALL BW banks agree
            assign tcdm_gnt[i]     = &bank_gnt[i];
            assign tcdm_r_valid[i] = &bank_r_valid[i];
        end
    endgenerate

endmodule // fc_hwpe