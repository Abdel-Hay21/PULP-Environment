/*
 * Copyright (C) 2020 ETH Zurich and University of Bologna
 *
 * Copyright and related rights are licensed under the Solderpad Hardware
 * License, Version 0.51 (the "License"); you may not use this file except in
 * compliance with the License.  You may obtain a copy of the License at
 * http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
 * or agreed to in writing, software, hardware and materials distributed under
 * this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

/*
 * Authors:  Mohamed Abdelhay <abdelhaymohamed21@gmail.com>
             Sama Zayed       <samazayed2003@gmail.com>
 */

import hwpe_ctrl_package::* ;
import hci_package::*       ;
import EQUALIZER_package::* ;

module EQUALIZER_top_wrap
#(
  parameter N_CORES        = 1       ,
  parameter FIFO_DEPTH     = 4       ,
  parameter N_CONTEXT      = 2       ,
  parameter N_MASTER_PORT  = 4       ,
  parameter ID             = 10      ,
  parameter N_FFT          = 8       ,
  parameter BW             = 8       ,
  parameter DW             = BW * 32 ,
  parameter BE             = DW / 8  
)
(
  // global signals
  input  logic                                     clk_i            ,
  input  logic                                     rst_ni,        
  input  logic                                     test_mode_i      ,
  // evnets
  output logic [N_CORES-1:0][REGFILE_N_EVT-1:0]    evt_o            ,
  // tcdm master ports
  output logic [N_FFT-1:0]                         tcdm_req         ,
  input  logic [N_FFT-1:0]                         tcdm_gnt         , 
  output logic [N_FFT-1:0][32 - 1 : 0]             tcdm_add         ,
  output logic [N_FFT-1:0]                         tcdm_wen         ,
  output logic [N_FFT-1:0][BE - 1 : 0]             tcdm_be          ,
  output logic [N_FFT-1:0][DW - 1 : 0]             tcdm_data        ,
  input  logic [N_FFT-1:0][DW - 1 : 0]             tcdm_r_data      ,
  input  logic [N_FFT-1:0]                         tcdm_r_valid     ,
  // periph slave port
  input  logic                                     periph_req       ,
  output logic                                     periph_gnt       ,
  input  logic       [32 - 1 : 0]                  periph_add       ,
  input  logic                                     periph_wen       ,
  input  logic       [4  - 1 : 0]                  periph_be        ,
  input  logic       [32 - 1 : 0]                  periph_data      ,
  input  logic       [ID - 1 : 0]                  periph_id        ,
  output logic       [32 - 1 : 0]                  periph_r_data    ,
  output logic                                     periph_r_valid   ,
  output logic       [ID - 1 : 0]                  periph_r_id
);


  hci_core_intf #(
    .DW ( DW )
  ) tcdm [N_FFT-1:0] (
    .clk ( clk_i )
  );

  hwpe_ctrl_intf_periph #(
    .ID_WIDTH ( ID )
  ) periph (
    .clk ( clk_i )
  );



  // bindings Memory
  generate
    for(genvar ii=0; ii<N_FFT; ii++) begin: tcdm_binding
      assign tcdm_req  [ii]      =      tcdm[ii].req       ;
      assign tcdm_add  [ii]      =      tcdm[ii].add       ;
      assign tcdm_wen  [ii]      =      tcdm[ii].wen       ;
      assign tcdm_be   [ii]      =      tcdm[ii].be        ;
      assign tcdm_data [ii]      =      tcdm[ii].data      ;
      assign tcdm[ii].gnt        =      tcdm_gnt     [ii]  ;
      assign tcdm[ii].r_data     =      tcdm_r_data  [ii]  ;
      assign tcdm[ii].r_valid    =      tcdm_r_valid [ii]  ;
    end
  endgenerate



  // bindings Control
  always_comb
  begin
    periph.req     =   periph_req     ;
    periph.add     =   periph_add     ;
    periph.wen     =   periph_wen     ;
    periph.be      =   periph_be      ;
    periph.data    =   periph_data    ;
    periph.id      =   periph_id      ;
    periph_gnt     =   periph.gnt     ;
    periph_r_data  =   periph.r_data  ;
    periph_r_valid =   periph.r_valid ;
    periph_r_id    =   periph.r_id    ;
  end


  EQUALIZER_top #(
      .ID          ( ID         ) ,
      .BW          ( DW         ) ,
      .FIFO_DEPTH  ( FIFO_DEPTH ) ,
      .N_CONTEXT   ( N_CONTEXT  ) , 
      .N_FFT       ( N_FFT      ) 
  ) i_equalizer_top (
      .clk_i            ( clk_i          ) ,
      .rst_ni           ( rst_ni         ) ,
      .test_mode_i      ( test_mode_i    ) ,
      .periph           ( periph         ) ,
      .tcdm             ( tcdm           ) ,
      .evt_o            ( evt_o          )
  );

endmodule // EQUALIZER_top_wrap
