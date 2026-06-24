//-----------------------------------------------------------------------------
// Title         : SoC Interconnect Wrapper
//-----------------------------------------------------------------------------
// File          : soc_interconnect_wrap_v2.sv
// Author        : Manuel Eggimann  <meggimann@iis.ee.ethz.ch>
// Created       : 30.10.2020
//-----------------------------------------------------------------------------
// Description :
// This module instantiates the SoC interconnect and attaches the various SoC
// ports. Furthermore, the wrapper also instantiates the required protocol converters
// (AXI, APB).
//-----------------------------------------------------------------------------
// Copyright (C) 2013-2020 ETH Zurich, University of Bologna
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License. You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
//-----------------------------------------------------------------------------
`include "soc_mem_map.svh"
`include "tcdm_macros.svh"
`include "axi/assign.svh"
`include "pulp_soc_defines.sv" // Ensure we have access to NB_CLUSTERS

module soc_interconnect_wrap
    import pkg_soc_interconnect::addr_map_rule_t;
    #(
      parameter int  NR_HWPE_PORTS = 0,
      parameter int  NR_L2_PORTS = 4,
      localparam int AXI_IN_ADDR_WIDTH = 32, 
      localparam int AXI_IN_DATA_WIDTH = 64, 
      parameter int  AXI_IN_ID_WIDTH = 6,
      parameter int  AXI_USER_WIDTH = 6,
      localparam int AXI_OUT_ADDR_WIDTH = 32, 
      localparam int AXI_OUT_DATA_WIDTH = 32  
    ) (
       input logic clk_i,
       input logic rst_ni,
       input logic test_en_i,
       XBAR_TCDM_BUS.Slave      tcdm_fc_data, 
       XBAR_TCDM_BUS.Slave      tcdm_fc_instr, 
       XBAR_TCDM_BUS.Slave      tcdm_udma_tx, 
       XBAR_TCDM_BUS.Slave      tcdm_udma_rx, 
       XBAR_TCDM_BUS.Slave      tcdm_debug, 
       XBAR_TCDM_BUS.Slave      tcdm_hwpe[NR_HWPE_PORTS], 
       
       // CHANGED: Converted AXI plugs to arrays based on NB_CLUSTERS
       AXI_BUS.Slave            axi_master_plug[`NB_CLUSTERS], 
       AXI_BUS.Master           axi_slave_plug[`NB_CLUSTERS], 
       
       APB_BUS.Master           apb_peripheral_bus, 
       XBAR_TCDM_BUS.Master     l2_interleaved_slaves[NR_L2_PORTS], 
       XBAR_TCDM_BUS.Master     l2_private_slaves[2], 
       XBAR_TCDM_BUS.Master     boot_rom_slave

     );

    localparam ADDR_WIDTH = 32;
    localparam DATA_WIDTH = 32;

    //////////////////////////////////////////////////////////////
    // 64-bit AXI to TCDM Bridge (Cluster to SoC communication) //
    //////////////////////////////////////////////////////////////
    
    // FIX 1: Use explicit range [HIGH:LOW] instead of just [SIZE]
    // Also use the macro directly or the package param to ensure it's a constant
    XBAR_TCDM_BUS axi_bridge_2_interconnect[pkg_soc_interconnect::NR_CLUSTER_2_SOC_TCDM_MASTER_PORTS-1:0](); 
    
    // CHANGED: Wrapped the protocol converter in a generate loop for N clusters
    for (genvar cl = 0; cl < `NB_CLUSTERS; cl++) begin : gen_axi_bridges

	    // Create a local 4-port TCDM interface array for this cluster's bridge.
	    // QuestaSim 10.7c cannot slice unpacked interface arrays with [base+:width],
	    // so we declare a local array and wire each port individually.
	    XBAR_TCDM_BUS tcdm_local[4]();

	    // Wire local[0..3] → axi_bridge_2_interconnect[cl*4 .. cl*4+3]
	    // using the TCDM_ASSIGN_INTF macro which expands to individual signal assigns
	    `TCDM_ASSIGN_INTF(axi_bridge_2_interconnect[cl*4 + 0], tcdm_local[0])
	    `TCDM_ASSIGN_INTF(axi_bridge_2_interconnect[cl*4 + 1], tcdm_local[1])
	    `TCDM_ASSIGN_INTF(axi_bridge_2_interconnect[cl*4 + 2], tcdm_local[2])
	    `TCDM_ASSIGN_INTF(axi_bridge_2_interconnect[cl*4 + 3], tcdm_local[3])

	    axi64_2_lint32_wrap #(
		.AXI_USER_WIDTH ( AXI_USER_WIDTH ),
		.AXI_ID_WIDTH   ( AXI_IN_ID_WIDTH )
	    ) i_axi64_to_lint32 (
		.clk_i      ( clk_i              ),
		.rst_ni     ( rst_ni             ),
		.test_en_i  ( test_en_i          ),
		.axi_master ( axi_master_plug[cl]),
		.tcdm_slaves( tcdm_local        )   // 4-element local array — constant size
	    );

    end

    ////////////////////////////////////////
    // Address Rules for the interconnect //
    ////////////////////////////////////////
    // CHANGED: Added cluster TCDM rules so cluster cores can reach
    // their own TCDM (0x10000000-0x107FFFFF) through the SoC interconnect.
    // idx:0 = AXI crossbar (routes to cluster slave ports)
    // idx:1 = contiguous crossbar (L2 private banks + boot ROM)
    // idx:2 = interleaved crossbar (L2 shared banks)
    // CORRECT — scales automatically:
     localparam NR_RULES_L2_DEMUX = 3 + `NB_CLUSTERS;

	function automatic addr_map_rule_t [NR_RULES_L2_DEMUX-1:0] build_l2_demux_rules();
	    // [0] and [1]: cluster windows → AXI crossbar (idx:0), highest priority
	    for (int cl = 0; cl < `NB_CLUSTERS; cl++) begin
		build_l2_demux_rules[cl] = '{
		    idx:        0,
		    start_addr: 32'h1000_0000 + cl * 32'h0040_0000,
		    end_addr:   32'h1000_0000 + cl * 32'h0040_0000 + 32'h003F_FFFF
		};
	    end
	    // [NB_CLUSTERS+0]: private banks + boot ROM → contiguous crossbar (idx:1)
	    build_l2_demux_rules[`NB_CLUSTERS + 0] = '{idx:1,
		start_addr: `SOC_MEM_MAP_PRIVATE_BANK0_START_ADDR,
		end_addr:   `SOC_MEM_MAP_PRIVATE_BANK1_END_ADDR};
	    // [NB_CLUSTERS+1]: boot ROM → contiguous crossbar (idx:1)
	    build_l2_demux_rules[`NB_CLUSTERS + 1] = '{idx:1,
		start_addr: `SOC_MEM_MAP_BOOT_ROM_START_ADDR,
		end_addr:   `SOC_MEM_MAP_BOOT_ROM_END_ADDR};
	    // [NB_CLUSTERS+2]: L2 interleaved → interleaved crossbar (idx:2)
	    build_l2_demux_rules[`NB_CLUSTERS + 2] = '{idx:2,
		start_addr: `SOC_MEM_MAP_TCDM_START_ADDR,
		end_addr:   `SOC_MEM_MAP_TCDM_END_ADDR};
	endfunction

    localparam addr_map_rule_t [NR_RULES_L2_DEMUX-1:0] L2_DEMUX_RULES = build_l2_demux_rules();
    localparam NR_RULES_INTERLEAVED_REGION = 1;
    localparam addr_map_rule_t [NR_RULES_INTERLEAVED_REGION-1:0] INTERLEAVED_ADDR_SPACE = '{
       '{ idx: 1 , start_addr: `SOC_MEM_MAP_TCDM_START_ADDR          , end_addr: `SOC_MEM_MAP_TCDM_END_ADDR}};
    
    localparam NR_RULES_CONTIG_CROSSBAR = 3;
    localparam addr_map_rule_t [NR_RULES_CONTIG_CROSSBAR-1:0] CONTIGUOUS_CROSSBAR_RULES = '{
         '{ idx: 0 , start_addr: `SOC_MEM_MAP_PRIVATE_BANK0_START_ADDR , end_addr: `SOC_MEM_MAP_PRIVATE_BANK0_END_ADDR} ,
         '{ idx: 1 , start_addr: `SOC_MEM_MAP_PRIVATE_BANK1_START_ADDR , end_addr: `SOC_MEM_MAP_PRIVATE_BANK1_END_ADDR} ,
         '{ idx: 2 , start_addr: `SOC_MEM_MAP_BOOT_ROM_START_ADDR      , end_addr: `SOC_MEM_MAP_BOOT_ROM_END_ADDR}};

    localparam NR_RULES_AXI_CROSSBAR = 1 + `NB_CLUSTERS;

	function automatic addr_map_rule_t [NR_RULES_AXI_CROSSBAR-1:0] build_axi_xbar_rules();
	    // One rule per cluster: FC/DMA accessing cluster TCDM/periph → that cluster's S2C port
	    for (int cl = 0; cl < `NB_CLUSTERS; cl++) begin
		build_axi_xbar_rules[cl] = '{
		    idx:        cl,                                          // axi_slaves[cl]
		    start_addr: 32'h1000_0000 + cl * 32'h0040_0000,
		    end_addr:   32'h1000_0000 + cl * 32'h0040_0000 + 32'h003F_FFFF
		};
	    end
	    // Peripherals (APB bridge)
	    build_axi_xbar_rules[`NB_CLUSTERS] = '{
		idx:        `NB_CLUSTERS,
		start_addr: `SOC_MEM_MAP_PERIPHERALS_START_ADDR,
		end_addr:   `SOC_MEM_MAP_PERIPHERALS_END_ADDR};

	endfunction

    localparam addr_map_rule_t [NR_RULES_AXI_CROSSBAR-1:0] AXI_CROSSBAR_RULES = build_axi_xbar_rules();

    XBAR_TCDM_BUS tcdm_fc_data_addr_remapped();
    assign tcdm_fc_data_addr_remapped.req = tcdm_fc_data.req;
    assign tcdm_fc_data_addr_remapped.wen = tcdm_fc_data.wen;
    assign tcdm_fc_data_addr_remapped.wdata = tcdm_fc_data.wdata;
    assign tcdm_fc_data_addr_remapped.be = tcdm_fc_data.be;
    assign tcdm_fc_data.gnt = tcdm_fc_data_addr_remapped.gnt;
    assign tcdm_fc_data.r_opc = tcdm_fc_data_addr_remapped.r_opc;
    assign tcdm_fc_data.r_rdata = tcdm_fc_data_addr_remapped.r_rdata;
    assign tcdm_fc_data.r_valid = tcdm_fc_data_addr_remapped.r_valid;

    always_comb begin
        tcdm_fc_data_addr_remapped.add = tcdm_fc_data.add;
        if (tcdm_fc_data.add[31:20] == 12'h000)
            tcdm_fc_data_addr_remapped.add[31:20] = 12'h1c0;
    end

    //////////////////////////////
    // Instantiate Interconnect //
    //////////////////////////////

    AXI_BUS #(.AXI_ADDR_WIDTH(32),
              .AXI_DATA_WIDTH(32),
              .AXI_ID_WIDTH(pkg_soc_interconnect::AXI_ID_OUT_WIDTH),
              .AXI_USER_WIDTH(AXI_USER_WIDTH)
              ) axi_to_axi_lite_bridge();

    XBAR_TCDM_BUS master_ports[pkg_soc_interconnect::NR_TCDM_MASTER_PORTS](); 

    `TCDM_ASSIGN_INTF(master_ports[0], tcdm_fc_data_addr_remapped)
    `TCDM_ASSIGN_INTF(master_ports[1], tcdm_fc_instr)
    `TCDM_ASSIGN_INTF(master_ports[2], tcdm_udma_tx)
    `TCDM_ASSIGN_INTF(master_ports[3], tcdm_udma_rx)
    `TCDM_ASSIGN_INTF(master_ports[4], tcdm_debug)

    `define NR_SOC_TCDM_MASTER_PORTS 5
    
    // CHANGED: Nested loops to assign all clusters dynamically without hardcoding _c1
    for (genvar cl = 0; cl < `NB_CLUSTERS; cl++) begin : gen_tcdm_masters
        for (genvar i = 0; i < 4; i++) begin : gen_tcdm_ports
            `TCDM_ASSIGN_INTF(master_ports[`NR_SOC_TCDM_MASTER_PORTS + (cl*4) + i], axi_bridge_2_interconnect[(cl*4) + i])
        end
    end

    XBAR_TCDM_BUS contiguous_slaves[3]();
    `TCDM_ASSIGN_INTF(l2_private_slaves[0], contiguous_slaves[0])
    `TCDM_ASSIGN_INTF(l2_private_slaves[1], contiguous_slaves[1])
    `TCDM_ASSIGN_INTF(boot_rom_slave, contiguous_slaves[2])

    // CHANGED: Scaled AXI slaves array
    AXI_BUS #(.AXI_ADDR_WIDTH(32),
              .AXI_DATA_WIDTH(32),
              .AXI_ID_WIDTH(pkg_soc_interconnect::AXI_ID_OUT_WIDTH),
              .AXI_USER_WIDTH(AXI_USER_WIDTH)
              ) axi_slaves[1 + `NB_CLUSTERS](); 
              
    // CHANGED: Dynamic assignment of AXI slaves
    for (genvar cl = 0; cl < `NB_CLUSTERS; cl++) begin : gen_axi_slaves
        `AXI_ASSIGN(axi_slave_plug[cl], axi_slaves[cl])
    end
    `AXI_ASSIGN(axi_to_axi_lite_bridge, axi_slaves[`NB_CLUSTERS]) // Peripherals


    //Interconnect instantiation
    soc_interconnect #(
                       .NR_MASTER_PORTS(pkg_soc_interconnect::NR_TCDM_MASTER_PORTS), 
                       .NR_MASTER_PORTS_INTERLEAVED_ONLY(NR_HWPE_PORTS), 
                       .NR_ADDR_RULES_L2_DEMUX(NR_RULES_L2_DEMUX),
                       .NR_SLAVE_PORTS_INTERLEAVED(NR_L2_PORTS), 
                       .NR_ADDR_RULES_SLAVE_PORTS_INTLVD(NR_RULES_INTERLEAVED_REGION),
                       .NR_SLAVE_PORTS_CONTIG(3), 
                       .NR_ADDR_RULES_SLAVE_PORTS_CONTIG(NR_RULES_CONTIG_CROSSBAR),
                       .NR_AXI_SLAVE_PORTS(1 + `NB_CLUSTERS), // CHANGED: Dynamically scaled
                       .NR_ADDR_RULES_AXI_SLAVE_PORTS(NR_RULES_AXI_CROSSBAR),
                       .AXI_MASTER_ID_WIDTH(1), 
                       .AXI_USER_WIDTH(AXI_USER_WIDTH)
                       ) i_soc_interconnect (
                                             .clk_i,
                                             .rst_ni,
                                             .test_en_i,
                                             .master_ports(master_ports),
                                             .master_ports_interleaved_only(tcdm_hwpe),
                                             .addr_space_l2_demux(L2_DEMUX_RULES),
                                             .addr_space_interleaved(INTERLEAVED_ADDR_SPACE),
                                             .interleaved_slaves(l2_interleaved_slaves),
                                             .addr_space_contiguous(CONTIGUOUS_CROSSBAR_RULES),
                                             .contiguous_slaves(contiguous_slaves),
                                             .addr_space_axi(AXI_CROSSBAR_RULES),
                                             .axi_slaves(axi_slaves)
                                             );

    ////////////////////////
    // AXI4 to APB Bridge //
    ////////////////////////

    AXI_LITE #(
               .AXI_ADDR_WIDTH(32),
               .AXI_DATA_WIDTH(32)) axi_lite_to_apb_bridge();

    axi_to_axi_lite_intf #(
                           .AXI_ADDR_WIDTH(32),
                           .AXI_DATA_WIDTH(32),
                           .AXI_ID_WIDTH(pkg_soc_interconnect::AXI_ID_OUT_WIDTH),
                           .AXI_USER_WIDTH(AXI_USER_WIDTH),
                           .AXI_MAX_WRITE_TXNS(1),
                           .AXI_MAX_READ_TXNS(1),
                           .FALL_THROUGH(1)
                           ) i_axi_to_axi_lite (
                                                .clk_i,
                                                .rst_ni,
                                                .testmode_i(test_en_i),
                                                .slv(axi_to_axi_lite_bridge),
                                                .mst(axi_lite_to_apb_bridge)
                                                );

    localparam addr_map_rule_t [0:0] APB_BRIDGE_RULES = '{
        '{ idx: 0, start_addr: `SOC_MEM_MAP_PERIPHERALS_START_ADDR, end_addr: `SOC_MEM_MAP_PERIPHERALS_END_ADDR}};

    axi_lite_to_apb_intf #(
                           .NoApbSlaves(1),
                           .NoRules(1),
                           .AddrWidth(32),
                           .DataWidth(32),
                           .PipelineRequest(1'b0),
                           .PipelineResponse(1'b0),
                           .rule_t(addr_map_rule_t)
                           ) i_axi_lite_to_apb (
                                                .clk_i,
                                                .rst_ni,
                                                .slv(axi_lite_to_apb_bridge),
                                                .paddr_o(apb_peripheral_bus.paddr),
                                                .pprot_o(),
                                                .pselx_o(apb_peripheral_bus.psel),
                                                .penable_o(apb_peripheral_bus.penable),
                                                .pwrite_o(apb_peripheral_bus.pwrite),
                                                .pwdata_o(apb_peripheral_bus.pwdata),
                                                .pstrb_o(),
                                                .pready_i(apb_peripheral_bus.pready),
                                                .prdata_i(apb_peripheral_bus.prdata),
                                                .pslverr_i(apb_peripheral_bus.pslverr),
                                                .addr_map_i(APB_BRIDGE_RULES)
                                                );
    // This MUST print axi_slaves[1] connected — add a simulation check:
    initial begin
	    $display("NR_RULES_AXI_CROSSBAR = %0d", NR_RULES_AXI_CROSSBAR);
	    $display("AXI_CROSSBAR_RULES[1].start = %08h", AXI_CROSSBAR_RULES[1].start_addr);
	    $display("AXI_CROSSBAR_RULES[1].end   = %08h", AXI_CROSSBAR_RULES[1].end_addr);
	    $display("AXI_CROSSBAR_RULES[1].idx   = %0d",  AXI_CROSSBAR_RULES[1].idx);
    end

endmodule : soc_interconnect_wrap

