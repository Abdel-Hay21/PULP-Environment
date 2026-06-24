/* 
 * EQUALIZER_ctrl.sv
 *
 * Copyright (C) 2018 ETH Zurich, University of Bologna
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
 * Authors:  Sama Zayed  <samazayed2003@gmail.com>    
 */

import EQUALIZER_package::*;
import hwpe_ctrl_package::*;

module EQUALIZER_ctrl
#(
  parameter int unsigned N_CONTEXT       = 2,
  parameter int unsigned N_IO_REGS       = 11,
  parameter int unsigned ID              = 10,
  parameter int unsigned N_FFT           = 8
)
(
  // global signals
  input  logic                                  clk_i,
  input  logic                                  rst_ni,
  input  logic                                  test_mode_i,
  output logic                                  clear_o,
  // events
  output logic            [REGFILE_N_EVT-1:0]   evt_o,
  // ctrl & flags
  output ctrl_engine_t                          ctrl_engine_o,
  output ctrl_streamer_t                        ctrl_streamer_o  [N_FFT],
  input  flags_streamer_t                       flags_streamer_i [N_FFT],
  output logic                                  clear_streamer,
  // periph slave port
  hwpe_ctrl_intf_periph.slave                   periph
);


  ctrl_slave_t   slave_ctrl;
  flags_slave_t  slave_flags;
  ctrl_regfile_t reg_file;



  /* Peripheral slave & register file */
  hwpe_ctrl_slave #(
    .N_CORES        (  1                    ),
    .N_CONTEXT      ( N_CONTEXT             ),
    .N_IO_REGS      ( N_IO_REGS             ),
    .N_GENERIC_REGS (  8                    ),
    .ID_WIDTH       ( ID                    )
  ) i_slave (
    .clk_i    ( clk_i       ),
    .rst_ni   ( rst_ni      ),
    .clear_o  ( clear_o     ),
    .cfg      ( periph      ),
    .ctrl_i   ( slave_ctrl  ),
    .flags_o  ( slave_flags ),
    .reg_file ( reg_file    )
  );

  
  assign evt_o = slave_flags.evt;

  EQUALIZER_fsm #(
    .N_FFT            ( N_FFT              )
  ) i_fsm (
    .clk_i            ( clk_i              ),
    .rst_ni           ( rst_ni             ),
    .test_mode_i      ( test_mode_i        ),
    .clear_i          ( clear_o            ),
    .clear_streamer   ( clear_streamer     ),
    .ctrl_streamer_o  ( ctrl_streamer_o    ),
    .flags_streamer_i ( flags_streamer_i   ),
    .ctrl_engine_o    ( ctrl_engine_o      ),
    .ctrl_slave_o     ( slave_ctrl         ),
    .flags_slave_i    ( slave_flags        ),
    .reg_file_i       ( reg_file           )
    );




endmodule