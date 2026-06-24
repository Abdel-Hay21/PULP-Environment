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
  parameter int REG_BASE_ADDR_0    = 0;
  parameter int REG_BASE_ADDR_1    = 1;
  parameter int REG_BASE_ADDR_2    = 2;
  parameter int REG_BASE_ADDR_3    = 3;
  parameter int REG_BASE_ADDR_4    = 4;
  parameter int REG_BASE_ADDR_5    = 5;
  parameter int REG_BASE_ADDR_6    = 6;
  parameter int REG_BASE_ADDR_7    = 7;

  parameter int REG_TOT_LEN        = 8;

  parameter int REG_D0_LEN         = 9;
  parameter int REG_D0_STRIDE      = 10;
  



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
    EQ_IDLE,
    EQ_CONFIG_STREAMER,
    EQ_WORKING,
    EQ_FINISH_CURRENT_TASK,
    EQ_CHECK_NEW_TASK,
    EQ_CONFIG_DATA_IN,
    EQ_WAIT_TO_CONFIG_DATA_OUT,
    EQ_CONFIG_DATA_OUT,
    EQ_FINISH_DATA_OUT,
    EQ_FINISHED
  } state_fsm_t;

endpackage