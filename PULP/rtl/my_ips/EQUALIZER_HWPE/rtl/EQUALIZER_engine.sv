/*
 * EQUALIZER_engine.sv
 *
 * Copyright (C) 2020 ETH Zurich and University of Bologna
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
 */

import EQUALIZER_package::*;
import hwpe_stream_package::*;
import hci_package::*;

module EQUALIZER_engine #(
  parameter int unsigned BW_ALIGNED       = 256    ,
  parameter int unsigned DATA_WIDTH_IN    = 12     ,
  parameter int unsigned DATA_WIDTH_OUT   = 16     ,
  parameter int unsigned N_FFT            = 8      ,
  parameter int unsigned FIFO_DEPTH       = 8                       
) (                     
  // global signals                     
  input  logic                                           clk_i                ,
  input  logic                                           rst_ni               ,
  input  logic                                           test_mode_i          ,
  // input data stream + handshake
  hwpe_stream_intf_stream.sink                           data_in  [N_FFT]     ,
  // output data stream + handshake               
  hwpe_stream_intf_stream.source                         data_out [N_FFT]     ,
  // control channel
  input  ctrl_engine_t                                   ctrl_i        
);

  logic  [N_FFT -1 : 0]   [31:0]                 in32                     ;
  logic  [N_FFT -1 : 0]   [31:0]                 out32                    ;  
  logic  [N_FFT -1 : 0]                          valid_in                 ;
  logic                                          valid_out                ;

  logic  [N_FFT -1 : 0]   [DATA_WIDTH_IN -1:0]   in_r                     ;
  logic  [N_FFT -1 : 0]   [DATA_WIDTH_IN -1:0]   in_i                     ;
  logic  [N_FFT -1 : 0]   [DATA_WIDTH_OUT-1:0]   out_r                    ;
  logic  [N_FFT -1 : 0]   [DATA_WIDTH_OUT-1:0]   out_i                    ;


  logic                                          all_data_arrive          ;
  logic  [N_FFT -1 : 0]                          data_arrive              ;

generate
  for(genvar i = 0 ; i < N_FFT ; i++) 
  begin
    assign in_r [i]                               = in32[i] [DATA_WIDTH_IN-1    : 0  ] ;
    assign in_i [i]                               = in32[i] [DATA_WIDTH_IN+16-1 : 16 ] ;

    assign out32[i] [DATA_WIDTH_OUT   -1 : 0  ]   = out_r[i]                           ;
    assign out32[i] [DATA_WIDTH_OUT+16-1 : 16 ]   = out_i[i]                           ;
  end
endgenerate


assign all_data_arrive = &data_arrive ;

  equalizer #(
    .N           (           N_FFT              ),
    .WL_IN       (       DATA_WIDTH_IN          ),
    .MF_WL_OUT   (       DATA_WIDTH_OUT         )
  ) i_EQUALIZER  (
    .clk         (   clk_i                      ),
    .rst_n       (   rst_ni                     ),
    .y_valid     (   &valid_in & ctrl_i.enable  ),
    .y_re_flat   (   in_r                       ),
    .y_im_flat   (   in_i                       ),
    .x_re_flat   (   out_r                      ),
    .x_im_flat   (   out_i                      ),
    .x_valid     (   valid_out                  )
  );


generate 
  for (genvar i = 0 ; i < N_FFT ; i++)
  begin
    EQUALIZER_FIFO #(
      .BW_ALIGNED      (     BW_ALIGNED     ),
      .FIFO_DEPTH      (     FIFO_DEPTH     )
    ) i_equlizer_fifo  (
      .clk_i           ( clk_i              ),
      .rst_ni          ( rst_ni             ),
      .test_mode_i     ( test_mode_i        ),
      .data_in         ( data_in        [i] ),
      .data_out        ( data_out       [i] ),
      .in32            ( in32           [i] ),
      .out32           ( out32          [i] ),
      .valid_in        ( valid_in       [i] ),
      .data_arrive     ( data_arrive    [i] ),
      .all_data_arrive ( all_data_arrive    ),
      .valid_out       ( valid_out          ),
      .ctrl_i          ( ctrl_i             )
  );
  end
endgenerate


endmodule
