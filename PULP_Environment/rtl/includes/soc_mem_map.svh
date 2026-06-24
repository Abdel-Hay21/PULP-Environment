//-----------------------------------------------------------------------------
// Title         : SoC Memory Region Definitions
//-----------------------------------------------------------------------------
// File          : soc_mem_map.svh
// Author        : Manuel Eggimann  <meggimann@iis.ee.ethz.ch>
// Created       : 30.10.2020
//-----------------------------------------------------------------------------
// Description :
// This file contains start and end address definitions for the soc_interconnect.
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

`define SOC_MEM_MAP_TCDM_START_ADDR             32'h1C01_0000
`define SOC_MEM_MAP_TCDM_END_ADDR               32'h1C09_0000
`define SOC_MEM_MAP_TCDM_ALIAS_START_ADDR       32'h0000_0000
`define SOC_MEM_MAP_TCDM_ALIAS_END_ADDR         32'h0010_0000

`define SOC_MEM_MAP_PRIVATE_BANK0_START_ADDR    32'h1C00_0000
`define SOC_MEM_MAP_PRIVATE_BANK0_END_ADDR      32'h1C00_8000

`define SOC_MEM_MAP_PRIVATE_BANK1_START_ADDR    32'h1C00_8000
`define SOC_MEM_MAP_PRIVATE_BANK1_END_ADDR      32'h1C01_0000

`define SOC_MEM_MAP_BOOT_ROM_START_ADDR         32'h1A00_0000
`define SOC_MEM_MAP_BOOT_ROM_END_ADDR           32'h1A04_0000

`define SOC_MEM_MAP_AXI_PLUG_START_ADDR         32'h1000_0000
`define SOC_MEM_MAP_AXI_PLUG_END_ADDR           32'h1040_0000

`define SOC_MEM_MAP_PERIPHERALS_START_ADDR      32'h1A10_0000
`define SOC_MEM_MAP_PERIPHERALS_END_ADDR        32'h1A40_0000




// In soc_mem_map.svh — ADD these defines:

// ADD these N-cluster macros:

// Base address of cluster address space
`define CLUSTER_ADDR_BASE       32'h1000_0000

// Per-cluster stride (4 MB)
`define CLUSTER_ADDR_STRIDE     32'h0040_0000

// Per-cluster window size
`define CLUSTER_ADDR_WINDOW     32'h003F_FFFF

// Compute start/end address for cluster cl (use inside generate expressions)
// Usage example: 32'(`CLUSTER_ADDR_BASE) + cl * 32'(`CLUSTER_ADDR_STRIDE)
// These are used inside soc_interconnect_wrap.sv generate loops — no macro needed there.

// Maximum N — for documentation and assertion use
`define CLUSTER_MAX_N           48
