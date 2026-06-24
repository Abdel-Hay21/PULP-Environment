package pkg_soc_interconnect;

    `include "pulp_soc_defines.sv"

    typedef struct packed {
        logic [31:0] idx;
        logic [31:0] start_addr;
        logic [31:0] end_addr;
    } addr_map_rule_t;

    //Warning, if you change the NR_SOC_TCDM_MASTER_PORTS parameter you must also change the identically named preprocessor
    //macro in soc_interconnect_wrap.sv. The macro is a workaround for a synopsys bug that prevent the usage of parameters
    //in index expression on the left-hand side of an assignment.
    localparam int unsigned NR_SOC_TCDM_MASTER_PORTS = 5; // FC instructions, FC data, uDMA RX, uDMA TX, debug access
    
    // Cluster 0 AXI ports
    localparam NR_CLUSTER_2_SOC_TCDM_MASTER_PORTS = 32 * `NB_CLUSTERS; // N clusters × 4 ports
    
    // UPDATE THIS: Add the new Cluster 1 ports to the total count
    localparam int unsigned NR_TCDM_MASTER_PORTS = NR_SOC_TCDM_MASTER_PORTS + NR_CLUSTER_2_SOC_TCDM_MASTER_PORTS;  // 5+8=13 for N=2
    
    // CORRECT (dynamic):
    localparam AXI_ID_OUT_WIDTH = 1 + $clog2(NR_TCDM_MASTER_PORTS);



endpackage : pkg_soc_interconnect

