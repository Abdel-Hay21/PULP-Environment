// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

/*
 * hwpe_subsystem.sv
 * Francesco Conti <fconti@iis.ee.ethz.ch>
 * Marwan Khaled   <khaledryad816@gmail.com>
 */
 
/* Marwan's modifications: 
 * changing the FFT_top from N_MASTER_PORT*32 to N_MASTER_PORT*16
 * periph -> periph_FFT1,periph_FFT2
 * Adding another hwpe_top_wrap_i_2
 * event unit
 */


import hci_package::*;

module hwpe_subsystem
#(
  parameter N_CORES        = 8,
  parameter N_MASTER_PORT  = 8,
  parameter ID_WIDTH       = 8,
  parameter FIFO_DEPTH_IN  = 2,
  parameter FIFO_DEPTH_OUT = 4
)
(
  input  logic                             clk,
  input  logic                             rst_n,
  input  logic                             test_mode,
  
  hci_core_intf.master                     s_hci_hwpe_FFT [7:0],
  XBAR_PERIPH_BUS.Slave                    hwpe_cfg_slave,

  output logic [$clog2(FIFO_DEPTH_IN)-1:0] usage_fifo_in  [7:0],
  output logic [N_CORES-1:0][3:0]          evt_o,
  output logic                             busy_o
);

  // Internal signals:
  logic [N_CORES-1:0][1:0] evt_internal [7:0];
  logic [2:0]              r_sel_reg;


  hwpe_ctrl_intf_periph #(
    .ID_WIDTH ( ID_WIDTH )
  ) 
  periph_FFT [7:0] (
    .clk      (   clk    )
  );
 


  // 1. Instantiation Loop (0 to 7)
  generate
    for(genvar i=0; i<8; i++) 
    begin : FFT_gen
     FFT_top #(
     .ID             ( ID_WIDTH           ),
     .N_CORES        ( N_CORES            ), 
     .BW             ( N_MASTER_PORT * 32 ),
     .FIFO_DEPTH_IN  ( FIFO_DEPTH_IN      ),
     .FIFO_DEPTH_OUT ( FIFO_DEPTH_OUT     )
     ) 
     i_fft (
     .clk_i         ( clk                ),
     .rst_ni        ( rst_n              ), 
     .test_mode_i   ( test_mode          ),
     .evt_o         ( evt_internal[i]    ),
     .usage_fifo_in ( usage_fifo_in[i]   ),
     .tcdm          ( s_hci_hwpe_FFT[i]  ), 
     .periph        ( periph_FFT[i]      )
     );
     // Route Engine i Completion Event to Core i
     assign evt_o[i] = {2'b0, evt_internal[i][i]}; 
    end
  endgenerate

  


  // 2. 8-Way Address Decoder & Signal Routing
  always_comb begin
   // ENGINE 0
   periph_FFT[0].req  =  1'b0;
   periph_FFT[0].add  =  hwpe_cfg_slave.add[6:0];
   periph_FFT[0].wen  =  hwpe_cfg_slave.wen;
   periph_FFT[0].be   =  hwpe_cfg_slave.be;
   periph_FFT[0].data =  hwpe_cfg_slave.wdata;
   periph_FFT[0].id   =  hwpe_cfg_slave.id;

   // ENGINE 1
   periph_FFT[1].req  =  1'b0;
   periph_FFT[1].add  =  hwpe_cfg_slave.add[6:0];
   periph_FFT[1].wen  =  hwpe_cfg_slave.wen;
   periph_FFT[1].be   =  hwpe_cfg_slave.be;
   periph_FFT[1].data =  hwpe_cfg_slave.wdata;
   periph_FFT[1].id   =  hwpe_cfg_slave.id;

   // ENGINE 2
   periph_FFT[2].req  =  1'b0;
   periph_FFT[2].add  =  hwpe_cfg_slave.add[6:0];
   periph_FFT[2].wen  =  hwpe_cfg_slave.wen;
   periph_FFT[2].be   =  hwpe_cfg_slave.be;
   periph_FFT[2].data =  hwpe_cfg_slave.wdata;
   periph_FFT[2].id   =  hwpe_cfg_slave.id;

   // ENGINE 3
   periph_FFT[3].req  =  1'b0;
   periph_FFT[3].add  =  hwpe_cfg_slave.add[6:0];
   periph_FFT[3].wen  =  hwpe_cfg_slave.wen;
   periph_FFT[3].be   =  hwpe_cfg_slave.be;
   periph_FFT[3].data =  hwpe_cfg_slave.wdata;
   periph_FFT[3].id   =  hwpe_cfg_slave.id;

   // ENGINE 4
   periph_FFT[4].req  =  1'b0;
   periph_FFT[4].add  =  hwpe_cfg_slave.add[6:0];
   periph_FFT[4].wen  =  hwpe_cfg_slave.wen;
   periph_FFT[4].be   =  hwpe_cfg_slave.be;
   periph_FFT[4].data =  hwpe_cfg_slave.wdata;
   periph_FFT[4].id   =  hwpe_cfg_slave.id;

   // ENGINE 5
   periph_FFT[5].req  =  1'b0;
   periph_FFT[5].add  =  hwpe_cfg_slave.add[6:0];
   periph_FFT[5].wen  =  hwpe_cfg_slave.wen;
   periph_FFT[5].be   =  hwpe_cfg_slave.be;
   periph_FFT[5].data =  hwpe_cfg_slave.wdata;
   periph_FFT[5].id   =  hwpe_cfg_slave.id;

   // ENGINE 6
   periph_FFT[6].req  =  1'b0;
   periph_FFT[6].add  =  hwpe_cfg_slave.add[6:0];
   periph_FFT[6].wen  =  hwpe_cfg_slave.wen;
   periph_FFT[6].be   =  hwpe_cfg_slave.be;
   periph_FFT[6].data =  hwpe_cfg_slave.wdata;
   periph_FFT[6].id   =  hwpe_cfg_slave.id;

   // ENGINE 7
   periph_FFT[7].req  =  1'b0;
   periph_FFT[7].add  =  hwpe_cfg_slave.add[6:0];
   periph_FFT[7].wen  =  hwpe_cfg_slave.wen;
   periph_FFT[7].be   =  hwpe_cfg_slave.be;
   periph_FFT[7].data =  hwpe_cfg_slave.wdata;
   periph_FFT[7].id   =  hwpe_cfg_slave.id;



   // 3. Request/req
   if (hwpe_cfg_slave.req && (hwpe_cfg_slave.add[11:10] == 2'b0)) 
    begin
      case (hwpe_cfg_slave.add[9:7])
        3'b000:  periph_FFT[0].req  =  1'b1;
        3'b001:  periph_FFT[1].req  =  1'b1;
        3'b010:  periph_FFT[2].req  =  1'b1;
        3'b011:  periph_FFT[3].req  =  1'b1;
        3'b100:  periph_FFT[4].req  =  1'b1;
        3'b101:  periph_FFT[5].req  =  1'b1;
        3'b110:  periph_FFT[6].req  =  1'b1;
        3'b111:  periph_FFT[7].req  =  1'b1;
      endcase
    end
  end



  // 4. Responses/gnt
  always_comb begin
    case (hwpe_cfg_slave.add[9:7])
      3'b000:  hwpe_cfg_slave.gnt  =  periph_FFT[0].gnt;
      3'b001:  hwpe_cfg_slave.gnt  =  periph_FFT[1].gnt;
      3'b010:  hwpe_cfg_slave.gnt  =  periph_FFT[2].gnt;
      3'b011:  hwpe_cfg_slave.gnt  =  periph_FFT[3].gnt;
      3'b100:  hwpe_cfg_slave.gnt  =  periph_FFT[4].gnt;
      3'b101:  hwpe_cfg_slave.gnt  =  periph_FFT[5].gnt;
      3'b110:  hwpe_cfg_slave.gnt  =  periph_FFT[6].gnt;
      3'b111:  hwpe_cfg_slave.gnt  =  periph_FFT[7].gnt;
      default: hwpe_cfg_slave.gnt  =  1'b0;
    endcase
  end
  


  // 5. Latch the selection bit
  always_ff @(posedge clk or negedge rst_n) 
  begin
    if (!rst_n) 
    	r_sel_reg <= 3'b0;
    else if (hwpe_cfg_slave.req && hwpe_cfg_slave.gnt)
   	  r_sel_reg <= hwpe_cfg_slave.add[9:7];
  end



  always_comb begin
    case (r_sel_reg)
      3'b000: 
        begin 
          hwpe_cfg_slave.r_valid  =  periph_FFT[0].r_valid;
      		hwpe_cfg_slave.r_rdata  =  periph_FFT[0].r_data;
      		hwpe_cfg_slave.r_id     =  periph_FFT[0].r_id; 
        end
      		    
      3'b001:
        begin 
          hwpe_cfg_slave.r_valid  =  periph_FFT[1].r_valid;
      		hwpe_cfg_slave.r_rdata  =  periph_FFT[1].r_data; 
     	  	hwpe_cfg_slave.r_id     =  periph_FFT[1].r_id;
      	end
      		    
      3'b010: 
        begin 
          hwpe_cfg_slave.r_valid  =  periph_FFT[2].r_valid;
      		hwpe_cfg_slave.r_rdata  =  periph_FFT[2].r_data;
      		hwpe_cfg_slave.r_id     =  periph_FFT[2].r_id; 
      	end
      		    
      3'b011: 
        begin 
          hwpe_cfg_slave.r_valid  =  periph_FFT[3].r_valid; 
      	  hwpe_cfg_slave.r_rdata  =  periph_FFT[3].r_data;
     		  hwpe_cfg_slave.r_id     =  periph_FFT[3].r_id;
        end
      		    
      3'b100: 
        begin 
          hwpe_cfg_slave.r_valid  =  periph_FFT[4].r_valid; 
      	  hwpe_cfg_slave.r_rdata  =  periph_FFT[4].r_data;
     		  hwpe_cfg_slave.r_id     =  periph_FFT[4].r_id;
     		end
     		    
      3'b101: 
        begin 
          hwpe_cfg_slave.r_valid  =  periph_FFT[5].r_valid;
          hwpe_cfg_slave.r_rdata  =  periph_FFT[5].r_data;
          hwpe_cfg_slave.r_id     =  periph_FFT[5].r_id;
        end
     	  	    
      3'b110: 
        begin 
          hwpe_cfg_slave.r_valid  =  periph_FFT[6].r_valid; 
          hwpe_cfg_slave.r_rdata  =  periph_FFT[6].r_data; 
     	    hwpe_cfg_slave.r_id     =  periph_FFT[6].r_id;
        end
     	      	    
      3'b111: 
        begin 
          hwpe_cfg_slave.r_valid  =  periph_FFT[7].r_valid;
      	  hwpe_cfg_slave.r_rdata  =  periph_FFT[7].r_data;
      	  hwpe_cfg_slave.r_id     =  periph_FFT[7].r_id; 
        end
                    
    endcase
  end

  assign hwpe_cfg_slave.r_opc = 1'b0;
  assign busy_o               = 1'b1;

endmodule

