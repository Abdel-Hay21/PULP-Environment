/* 
 * EQUALIZER_fsm.sv
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

module EQUALIZER_fsm #(
    parameter int unsigned N_FFT = 8
)(
  // global signals
  input  logic                clk_i                       ,
  input  logic                rst_ni                      ,
  input  logic                test_mode_i                 ,
  input  logic                clear_i                     ,
  // ctrl & flags   
  // streamer   
  input  flags_streamer_t     flags_streamer_i[N_FFT]     ,
  output ctrl_streamer_t      ctrl_streamer_o [N_FFT]     ,
  output logic                clear_streamer              ,
  // engine   
  output ctrl_engine_t        ctrl_engine_o               ,
  // control slave   
  output ctrl_slave_t         ctrl_slave_o                ,
  input  ctrl_regfile_t       reg_file_i                  ,
  input  flags_slave_t        flags_slave_i
);

   ctrl_streamer_t            streamer_ctrl_cfg [N_FFT]   ;
   state_fsm_t                cs , ns                     ;
   logic                      New_Task                    ;
   logic               [2:0]  counter_for_check_new_task  ;
   ctrl_regfile_t             reg_file_o                  ;
   logic                      Start_Execute_Task          ;
   logic                      First_Task                  ;
   logic                      Finish_Tasks                ;
   logic                      data_out_late               ;

   logic                      all_sources_done            ;
   logic                      all_sinks_done              ;
   logic                      all_tcdm_fifos_empty        ;
   logic          [N_FFT-1:0] source_done_vector          ;
   logic          [N_FFT-1:0] sink_done_vector            ;
   logic          [N_FFT-1:0] tcdm_fifo_empty_vector      ;


//..................................Streamers_Flags......................................
always_comb 
  begin
    for (int i = 0; i < N_FFT; i++) 
    begin
      source_done_vector[i]     = flags_streamer_i[i].data_in_source_flags.done | flags_streamer_i[i].data_in_source_flags.ready_start ;
      sink_done_vector  [i]     = flags_streamer_i[i].data_out_sink_flags.done  | flags_streamer_i[i].data_out_sink_flags.ready_start  ;
      tcdm_fifo_empty_vector[i] = flags_streamer_i[i].tcdm_fifo_empty                                                                  ;
    end
    
    all_sources_done     = &source_done_vector       ;
    all_sinks_done       = &sink_done_vector         ;   
    all_tcdm_fifos_empty = &tcdm_fifo_empty_vector   ;

  end



//..................................main_fsm_seq......................................
always_ff @(posedge clk_i or negedge rst_ni)
  begin : main_fsm_seq
    if(~rst_ni) begin
      cs <= EQ_IDLE;
    end
    else if(clear_i) begin
      cs <= EQ_IDLE;
    end
    else begin
      cs <= ns;
    end
  end


always_ff @(posedge clk_i or negedge rst_ni)
  begin
    if(~rst_ni) begin
      New_Task <= 1'b0;
    end
    else begin
      if(flags_slave_i.start) begin
        New_Task <= 1'b1;
      end
      if(Start_Execute_Task) begin
        New_Task <= 1'b0;
      end
    end
  end


always_ff @(posedge clk_i or negedge rst_ni)
  begin
    if(~rst_ni) begin
      counter_for_check_new_task <= 0;
    end
    else begin
      if(cs == EQ_CHECK_NEW_TASK) begin
        counter_for_check_new_task <= counter_for_check_new_task + 1;
      end
      if(cs != EQ_CHECK_NEW_TASK) begin
        counter_for_check_new_task <= 0;
      end
    end
  end

//..................................state_fsm_comb......................................
always_comb 
 begin : state_fsm_comb
    ns = cs ;
    case(cs)
     EQ_IDLE : begin
       data_out_late  = 1'b0;
       Finish_Tasks   = 1'b0;
       if(New_Task) 
           ns = EQ_CONFIG_STREAMER;
       else 
           ns = EQ_IDLE ;
     end


     EQ_CONFIG_STREAMER : ns = EQ_WORKING;
    

     EQ_WORKING : begin
       if (all_sources_done)
            ns = EQ_FINISH_CURRENT_TASK;
       else
            ns = EQ_WORKING;
     end


     EQ_FINISH_CURRENT_TASK : ns = EQ_CHECK_NEW_TASK;



     EQ_CHECK_NEW_TASK : begin
       if(flags_slave_i.start) 
         ns = EQ_CONFIG_DATA_IN;
       else if (Finish_Tasks == 1)
         ns = EQ_FINISH_DATA_OUT;
       else if(counter_for_check_new_task < 7)
         ns = EQ_CHECK_NEW_TASK ;
       else if(counter_for_check_new_task == 7)
       begin
         Finish_Tasks  = 1'b1;
         data_out_late = 1'b0;
         if(First_Task == 1)
          ns = EQ_FINISH_DATA_OUT;
         else
          ns = EQ_WAIT_TO_CONFIG_DATA_OUT;
       end
       else
         ns = EQ_FINISH_DATA_OUT;
     end


    EQ_CONFIG_DATA_IN : ns = EQ_WAIT_TO_CONFIG_DATA_OUT;


    EQ_WAIT_TO_CONFIG_DATA_OUT : begin
      if (all_sinks_done)
           ns = EQ_CONFIG_DATA_OUT;
      else if(all_sources_done & !Finish_Tasks)
         begin
           ns = EQ_FINISH_CURRENT_TASK;
           data_out_late = 1'b1;
         end
      else
           ns = EQ_WAIT_TO_CONFIG_DATA_OUT;

    end


    EQ_CONFIG_DATA_OUT : begin
       if ((data_out_late == 1))
       begin
            ns = EQ_WAIT_TO_CONFIG_DATA_OUT;
            data_out_late = 1'b0;
       end
       else
            ns = EQ_WORKING;
    end




    EQ_FINISH_DATA_OUT: begin
      if (all_sinks_done & all_tcdm_fifos_empty)
          ns = EQ_FINISHED;
      else
          ns = EQ_FINISH_DATA_OUT;
    end



    EQ_FINISHED : ns = EQ_IDLE ;    

    endcase     
 end




//..................................fsm_out_comb......................................
always_comb
  begin : fsm_out_comb

  for (int i = 0; i < N_FFT; i++) 
    begin
      //ctrl signals equal ctrl cfg
      ctrl_streamer_o[i] = streamer_ctrl_cfg[i] ;

      //ctrl signals to streamer (req_start)
      ctrl_streamer_o[i].data_in_source_ctrl.req_start = 1'b0;
      ctrl_streamer_o[i].data_out_sink_ctrl.req_start  = 1'b0;
    end

    //ctrl signals to slave
    ctrl_slave_o = '0;

    //ctrl signals to engine
    ctrl_engine_o.enable = 1'b1 ; 

    Start_Execute_Task = 1'b0;
    clear_streamer     = 1'b0;

    case (cs)
      EQ_IDLE :
      begin
        //ctrl signals to engine
        ctrl_engine_o.enable   = 1'b0;
        First_Task             = 1'b1;
        reg_file_o             = reg_file_i;
      end


      EQ_CONFIG_STREAMER :
      begin
        //ctrl signals to streamer (req_start)
        for (int i = 0; i < N_FFT; i++) 
        begin
          //ctrl signals to streamer (req_start)
          ctrl_streamer_o[i].data_in_source_ctrl.req_start = 1'b1;
          ctrl_streamer_o[i].data_out_sink_ctrl.req_start  = 1'b1;
        end
        Start_Execute_Task   = 1'b1;
      end    


      EQ_FINISH_CURRENT_TASK :
      begin
        //ctrl signals to slave
        if(First_Task == 0)
        begin
          reg_file_o      = reg_file_i;
        end
        ctrl_slave_o.done = 1'b1 ;
      end


      EQ_CONFIG_DATA_IN :
      begin
        for (int i = 0; i < N_FFT; i++) 
        begin
          //ctrl signals to streamer (req_start)
          ctrl_streamer_o[i].data_in_source_ctrl.req_start = 1'b1;
        end

        Start_Execute_Task                            = 1'b1;
        if(First_Task == 1)
        begin
           reg_file_o  = reg_file_i;
           First_Task  = 1'b0;
        end
      end


      EQ_CONFIG_DATA_OUT :
      begin
        for (int i = 0; i < N_FFT; i++) 
        begin
          //ctrl signals to streamer (req_start)
          ctrl_streamer_o[i].data_out_sink_ctrl.req_start = 1'b1;
        end
      end
      
      EQ_FINISHED :
      begin
        //clear streamer
        clear_streamer = 1'b1;
      end

    endcase
     
  end

//..................................addressgen_ctrl......................................
always_comb
  begin
    for (int i = 0; i < N_FFT; i++) begin
     streamer_ctrl_cfg[i].data_in_source_ctrl.req_start                 = '0;
     streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d1_len    = '0;
     streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d1_stride = '0; 
     streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d2_len    = '0; 
     streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d2_stride = '0; 
     streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d3_stride = '0; 

     streamer_ctrl_cfg[i].data_out_sink_ctrl.req_start                  = '0;
     streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d1_len     = '0;
     streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d1_stride  = '0; 
     streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d2_len     = '0; 
     streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d2_stride  = '0; 
     streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d3_stride  = '0; 


     //ctrl signals to streamer (addressgen_ctrl)
     streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.dim_enable_1h = '1; 
     streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.dim_enable_1h  = '1;

     if(!rst_ni)
     begin
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.base_addr     = '0;
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.tot_len       = '0;
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d0_len        = '0;
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d0_stride     = '0;
     end
     else if(ctrl_streamer_o[i].data_in_source_ctrl.req_start)
     begin
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.base_addr     = reg_file_i.hwpe_params[i]             ;
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.tot_len       = reg_file_i.hwpe_params[REG_TOT_LEN]   ;
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d0_len        = reg_file_i.hwpe_params[REG_D0_LEN]    ;
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d0_stride     = reg_file_i.hwpe_params[REG_D0_STRIDE] ;
     end
     else begin
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.base_addr     = streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.base_addr  ;
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.tot_len       = streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.tot_len    ;
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d0_len        = streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d0_len     ;
        streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d0_stride     = streamer_ctrl_cfg[i].data_in_source_ctrl.addressgen_ctrl.d0_stride  ;
     end


     if(!rst_ni)
     begin
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.base_addr      = '0 ;
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.tot_len        = '0 ;
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d0_len         = '0 ;
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d0_stride      = '0 ;
     end
     else if(ctrl_streamer_o[i].data_out_sink_ctrl.req_start)
     begin
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.base_addr      = reg_file_o.hwpe_params[i]             ;
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.tot_len        = reg_file_o.hwpe_params[REG_TOT_LEN]   ;
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d0_len         = reg_file_o.hwpe_params[REG_D0_LEN]    ;
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d0_stride      = reg_file_o.hwpe_params[REG_D0_STRIDE] ;
     end
     else begin
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.base_addr     = streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.base_addr ;
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.tot_len       = streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.tot_len   ;
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d0_len        = streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d0_len    ;
        streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d0_stride     = streamer_ctrl_cfg[i].data_out_sink_ctrl.addressgen_ctrl.d0_stride ;
     end

    end

  end


endmodule : EQUALIZER_fsm