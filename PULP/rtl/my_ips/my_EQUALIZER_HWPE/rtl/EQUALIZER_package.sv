/*
 * EQUALIZER_package.sv
 *
 * Copyright (C) 2019-2020 ETH Zurich, University of Bologna
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

import hci_package::*;

package EQUALIZER_package;

  // registers in register file
  // make the d1 for no. frames
  parameter int REG_BASE_ADDR [8] = '{0, 1, 2, 3, 4, 5, 6, 7};
  
  parameter int REG_TOT_LEN        = 8;

  parameter int REG_D0_LEN         = 9;
  parameter int REG_D0_STRIDE      = 10;
  
  parameter int REG_D1_LEN         = 11;
  parameter int REG_D1_STRIDE      = 12;



  typedef struct packed {
    hci_package::hci_streamer_ctrl_t data_in_source_ctrl;
    hci_package::hci_streamer_ctrl_t data_out_sink_ctrl;
  } ctrl_streamer_t;

  
  typedef struct packed {
    hci_package::hci_streamer_flags_t data_in_source_flags;
    hci_package::hci_streamer_flags_t data_out_sink_flags;
    logic tcdm_fifo_empty;
  } flags_streamer_t;


  typedef struct packed {
    logic enable;
  } ctrl_engine_t; 



  typedef enum {
    EQUALIZER_IDLE,
    EQUALIZER_CONFIG_STREAMER,
    EQUALIZER_WORKING,
    EQUALIZER_FINISH_CURRENT_TASK,
    EQUALIZER_CHECK_NEW_TASK,
    EQUALIZER_CONFIG_DATA_IN,
    EQUALIZER_WAIT_TO_CONFIG_DATA_OUT,
    EQUALIZER_CONFIG_DATA_OUT,
    EQUALIZER_FINISH_DATA_OUT,
    EQUALIZER_FINISHED
  } state_fsm_t;

endpackage