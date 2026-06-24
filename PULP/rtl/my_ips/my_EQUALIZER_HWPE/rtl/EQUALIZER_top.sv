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

module EQUALIZER_top #(
  parameter int unsigned ID         = 10      ,
  parameter int unsigned BW         = 288     ,
  parameter int unsigned FIFO_DEPTH = 8       ,
  parameter int unsigned N_CONTEXT  = 2       ,
  parameter int unsigned N_FFT      = 8
) (
  // global signals
  input  logic                    clk_i       ,
  input  logic                    rst_ni      ,
  input  logic                    test_mode_i ,
  // events
  output logic           [1:0]    evt_o       ,
  // tcdm master ports
  hci_core_intf.master            tcdm [N_FFT],
  // periph slave port
  hwpe_ctrl_intf_periph.slave     periph
);

  localparam BW_ALIGNED = BW;

  logic                           clear_streamer          ;
  ctrl_streamer_t                 streamer_ctrl  [N_FFT]  ;
  flags_streamer_t                streamer_flags [N_FFT]  ;
  ctrl_engine_t                   engine_ctrl             ;




  hwpe_stream_intf_stream #(
    .DATA_WIDTH ( BW_ALIGNED )
  ) data_in [N_FFT] (
    .clk        (   clk_i    )
  );

  hwpe_stream_intf_stream #(
    .DATA_WIDTH ( BW_ALIGNED )
  ) data_out [N_FFT] (
    .clk        (   clk_i    )
  );







  //                                                                                                     
  //     ▄▄▄▄                                                     ▄▄▄▄      ▄▄▄▄                         
  //   ██▀▀▀▀█                        ██                          ▀▀██      ▀▀██                         
  //  ██▀        ▄████▄   ██▄████▄  ███████    ██▄████   ▄████▄     ██        ██       ▄████▄    ██▄████ 
  //  ██        ██▀  ▀██  ██▀   ██    ██       ██▀      ██▀  ▀██    ██        ██      ██▄▄▄▄██   ██▀     
  //  ██▄       ██    ██  ██    ██    ██       ██       ██    ██    ██        ██      ██▀▀▀▀▀▀   ██      
  //   ██▄▄▄▄█  ▀██▄▄██▀  ██    ██    ██▄▄▄    ██       ▀██▄▄██▀    ██▄▄▄     ██▄▄▄   ▀██▄▄▄▄█   ██      
  //     ▀▀▀▀     ▀▀▀▀    ▀▀    ▀▀     ▀▀▀▀    ▀▀         ▀▀▀▀       ▀▀▀▀      ▀▀▀▀     ▀▀▀▀▀    ▀▀      
                                                                                                    
                                                                                                    
  EQUALIZER_ctrl #(
    .N_CONTEXT        ( N_CONTEXT          ),
    .ID               ( ID                 )
  ) i_ctrl (
    .clk_i            ( clk_i              ),
    .rst_ni           ( rst_ni             ),
    .test_mode_i      ( test_mode_i        ),
    .clear_streamer   ( clear_streamer     ),
    .evt_o            ( evt_o              ),
    .ctrl_streamer_o  ( streamer_ctrl      ),
    .flags_streamer_i ( streamer_flags     ),
    .ctrl_engine_o    ( engine_ctrl        ),
    .periph           ( periph             )
  );




                                                                                
//    ▄▄▄▄                                                                         
//  ▄█▀▀▀▀█     ██                                                                 
//  ██▄       ███████    ██▄████   ▄████▄    ▄█████▄  ████▄██▄   ▄████▄    ██▄████ 
//   ▀████▄     ██       ██▀      ██▄▄▄▄██   ▀ ▄▄▄██  ██ ██ ██  ██▄▄▄▄██   ██▀     
//       ▀██    ██       ██       ██▀▀▀▀▀▀  ▄██▀▀▀██  ██ ██ ██  ██▀▀▀▀▀▀   ██      
//  █▄▄▄▄▄█▀    ██▄▄▄    ██       ▀██▄▄▄▄█  ██▄▄▄███  ██ ██ ██  ▀██▄▄▄▄█   ██      
//   ▀▀▀▀▀       ▀▀▀▀    ▀▀         ▀▀▀▀▀    ▀▀▀▀ ▀▀  ▀▀ ▀▀ ▀▀    ▀▀▀▀▀    ▀▀      
                                                                                
                                                                                

generate 
  for (genvar i = 0 ; i < N_FFT ; i++)
  begin
    EQUALIZER_streamer #(
      .BW              ( BW ),
      .TCDM_FIFO_DEPTH ( 0  )
    ) i_streamer (
      .clk_i         ( clk_i              ),
      .rst_ni        ( rst_ni             ),
      .test_mode_i   ( test_mode_i        ),
      .enable_i      ( 1'b1               ),
      .clear_i       ( clear_streamer     ),
      .data_in       ( data_in        [i] ),
      .data_out      ( data_out       [i] ),
      .tcdm          ( tcdm           [i] ),
      .ctrl_i        ( streamer_ctrl  [i] ),
      .flags_o       ( streamer_flags [i] )
  );
  end
endgenerate




                                                            
  // ▄▄▄▄▄▄▄▄                         ██                        
  // ██▀▀▀▀▀▀                         ▀▀                        
  // ██        ██▄████▄   ▄███▄██   ████     ██▄████▄   ▄████▄  
  // ███████   ██▀   ██  ██▀  ▀██     ██     ██▀   ██  ██▄▄▄▄██ 
  // ██        ██    ██  ██    ██     ██     ██    ██  ██▀▀▀▀▀▀ 
  // ██▄▄▄▄▄▄  ██    ██  ▀██▄▄███  ▄▄▄██▄▄▄  ██    ██  ▀██▄▄▄▄█ 
  // ▀▀▀▀▀▀▀▀  ▀▀    ▀▀   ▄▀▀▀ ██  ▀▀▀▀▀▀▀▀  ▀▀    ▀▀    ▀▀▀▀▀  
  //                      ▀████▀▀                               
                                                            

  EQUALIZER_engine #(
    .BW_ALIGNED      (    BW_ALIGNED     ),
    .DATA_WIDTH      (        12         ),
    .FIFO_DEPTH      (    FIFO_DEPTH     ),
    .N_FFT           (       N_FFT       )
  ) i_engine (   
    .clk_i           ( clk_i             ),
    .rst_ni          ( rst_ni            ),
    .test_mode_i     ( test_mode_i       ),
    .data_in         ( data_in           ),
    .data_out        ( data_out          ),
    .ctrl_i          ( engine_ctrl       )
  );

endmodule
