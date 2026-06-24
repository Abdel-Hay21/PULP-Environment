onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/ID_WIDTH
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/req
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/add
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/wen
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/wdata
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/be
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/gnt
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/id
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/r_valid
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/r_opc
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/r_id
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/r_rdata
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/ID_WIDTH
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/req
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/add
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/wen
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/wdata
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/be
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/gnt
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/id
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/r_valid
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/r_opc
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/r_id
add wave -noupdate -group hwpe_cfg_slave /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/hwpe_cfg_slave/r_rdata
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/N_CORES
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/N_MASTER_PORT
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/ID_WIDTH
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FIFO_DEPTH_IN
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FIFO_DEPTH_OUT
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/clk
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/rst_n
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/test_mode
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/usage_fifo_in
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/evt_o
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/busy_o
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/evt_internal
add wave -noupdate -expand -group {FFT_gen[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/r_sel_reg
add wave -noupdate -expand -group {FFT_gen[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i}
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/clk_i
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/rst_ni
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/test_mode_i
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/term_event_cl_o
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/term_irq_cl_o
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/term_event_pe_o
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/term_irq_pe_o
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/term_event_o
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/term_irq_o
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/busy_o
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_wdata
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_add
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_req
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_wen
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_be
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_id
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_gnt
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_r_rdata
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_r_valid
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_r_opc
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_ctrl_bus_r_id
add wave -noupdate -expand -group dmac_wrap_i -expand /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_tcdm_bus_wdata
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_tcdm_bus_add
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_tcdm_bus_req
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_tcdm_bus_wen
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_tcdm_bus_be
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_tcdm_bus_gnt
add wave -noupdate -expand -group dmac_wrap_i /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_tcdm_bus_r_rdata
add wave -noupdate -expand -group dmac_wrap_i -expand /tb_pulp/i_dut/cluster_domain_i/cluster_i/dmac_wrap_i/s_tcdm_bus_r_valid
add wave -noupdate -expand -group {i_fft[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/i_fft/DATA_WIDTH}
add wave -noupdate -expand -group {i_fft[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/i_fft/clk}
add wave -noupdate -expand -group {i_fft[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/i_fft/rst_n}
add wave -noupdate -expand -group {i_fft[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/i_fft/valid_in}
add wave -noupdate -expand -group {i_fft[0]} -radix hexadecimal {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/i_fft/in_r}
add wave -noupdate -expand -group {i_fft[0]} -radix hexadecimal {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/i_fft/in_i}
add wave -noupdate -expand -group {i_fft[0]} -radix hexadecimal {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/i_fft/out_r}
add wave -noupdate -expand -group {i_fft[0]} -radix hexadecimal {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/i_fft/out_i}
add wave -noupdate -expand -group {i_fft[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/i_fft/valid_out}
add wave -noupdate -expand -group {i_fft[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/i_fft/frame_done}
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/NB_CORES
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/sw_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/barrier_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/mutex_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dispatch_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/periph_fifo_event_i
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} -expand /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/acc_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dma_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/timer_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/cluster_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/events_mapped_o
add wave -noupdate -expand -group {CL_EVENT_MAP[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/CL_EVENT_MAP[0]/I}
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/NB_CORES
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/sw_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/barrier_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/mutex_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dispatch_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/periph_fifo_event_i
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} -expand /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/acc_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dma_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/timer_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/cluster_events_i
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/events_mapped_o
add wave -noupdate -expand -group {CL_EVENT_MAP[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/CL_EVENT_MAP[1]/I}
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/NB_CORES
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/sw_events_i
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/barrier_events_i
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/mutex_events_i
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dispatch_events_i
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/periph_fifo_event_i
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/acc_events_i
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dma_events_i
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/timer_events_i
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/cluster_events_i
add wave -noupdate -group {CL_EVENT_MAP[2]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/events_mapped_o
add wave -noupdate -group {CL_EVENT_MAP[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/CL_EVENT_MAP[2]/I}
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/NB_CORES
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/sw_events_i
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/barrier_events_i
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/mutex_events_i
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dispatch_events_i
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/periph_fifo_event_i
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/acc_events_i
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dma_events_i
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/timer_events_i
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/cluster_events_i
add wave -noupdate -group {CL_EVENT_MAP[3]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/events_mapped_o
add wave -noupdate -group {CL_EVENT_MAP[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/CL_EVENT_MAP[3]/I}
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/NB_CORES
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/sw_events_i
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/barrier_events_i
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/mutex_events_i
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dispatch_events_i
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/periph_fifo_event_i
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/acc_events_i
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dma_events_i
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/timer_events_i
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/cluster_events_i
add wave -noupdate -group {CL_EVENT_MAP[4]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/events_mapped_o
add wave -noupdate -group {CL_EVENT_MAP[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/CL_EVENT_MAP[4]/I}
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/NB_CORES
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/sw_events_i
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/barrier_events_i
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/mutex_events_i
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dispatch_events_i
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/periph_fifo_event_i
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/acc_events_i
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dma_events_i
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/timer_events_i
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/cluster_events_i
add wave -noupdate -group {CL_EVENT_MAP[5]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/events_mapped_o
add wave -noupdate -group {CL_EVENT_MAP[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/CL_EVENT_MAP[5]/I}
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/NB_CORES
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/sw_events_i
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/barrier_events_i
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/mutex_events_i
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dispatch_events_i
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/periph_fifo_event_i
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/acc_events_i
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dma_events_i
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/timer_events_i
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/cluster_events_i
add wave -noupdate -group {CL_EVENT_MAP[6]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/events_mapped_o
add wave -noupdate -group {CL_EVENT_MAP[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/CL_EVENT_MAP[6]/I}
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/NB_CORES
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/sw_events_i
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/barrier_events_i
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/mutex_events_i
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dispatch_events_i
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/periph_fifo_event_i
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/acc_events_i
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/dma_events_i
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/timer_events_i
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/cluster_events_i
add wave -noupdate -group {CL_EVENT_MAP[7]} /tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/events_mapped_o
add wave -noupdate -group {CL_EVENT_MAP[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_peripherals_i/event_unit_flex_i/cluster_event_map_i/CL_EVENT_MAP[7]/I}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/clk_i}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/rst_ni}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/test_mode_i}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/clear_i}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/ctrl_streamer_o}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/flags_streamer_i}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/ctrl_engine_o}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/flags_engine_i}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/ctrl_slave_o}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/flags_slave_i}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/reg_file_i}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/streamer_ctrl_cfg}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/cs}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/ns}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/New_Task}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/Start_Execute_Task}
add wave -noupdate -group {i_fsm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/i_fsm/counter_for_check_new_task}
add wave -noupdate -group data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_in/DATA_WIDTH}
add wave -noupdate -group data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_in/STRB_WIDTH}
add wave -noupdate -group data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_in/BYPASS_VCR_ASSERT}
add wave -noupdate -group data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_in/BYPASS_VDR_ASSERT}
add wave -noupdate -group data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_in/clk}
add wave -noupdate -group data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_in/valid}
add wave -noupdate -group data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_in/ready}
add wave -noupdate -group data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_in/data}
add wave -noupdate -group data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_in/strb}
add wave -noupdate -group data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_out/clk}
add wave -noupdate -group data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_out/valid}
add wave -noupdate -group data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_out/ready}
add wave -noupdate -group data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_out/data}
add wave -noupdate -group data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/data_out/strb}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/clk}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/req}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/gnt}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/lrdy}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/add}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/wen}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/data}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/be}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/boffs}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/user}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/r_data}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/r_valid}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/r_opc}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/tcdm/r_user}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/DW}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/AW}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/BW}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/WW}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/OW}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/UW}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/clk}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/req}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/gnt}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/lrdy}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/add}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/wen}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/data}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/be}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/boffs}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/user}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/r_data}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/r_valid}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/r_opc}
add wave -noupdate -expand -group i_source_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/tcdm/r_user}
add wave -noupdate -group i_source_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/stream/DATA_WIDTH}
add wave -noupdate -group i_source_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/stream/STRB_WIDTH}
add wave -noupdate -group i_source_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/stream/BYPASS_VCR_ASSERT}
add wave -noupdate -group i_source_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/stream/BYPASS_VDR_ASSERT}
add wave -noupdate -group i_source_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/stream/clk}
add wave -noupdate -group i_source_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/stream/valid}
add wave -noupdate -group i_source_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/stream/ready}
add wave -noupdate -group i_source_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/stream/data}
add wave -noupdate -group i_source_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_source/stream/strb}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/DW}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/AW}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/BW}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/WW}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/OW}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/UW}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/clk}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/req}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/gnt}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/lrdy}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/add}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/wen}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/data}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/be}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/boffs}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/user}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/r_data}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/r_valid}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/r_opc}
add wave -noupdate -group i_sink_tcdm {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/tcdm/r_user}
add wave -noupdate -group i_sink_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/stream/DATA_WIDTH}
add wave -noupdate -group i_sink_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/stream/STRB_WIDTH}
add wave -noupdate -group i_sink_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/stream/BYPASS_VCR_ASSERT}
add wave -noupdate -group i_sink_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/stream/BYPASS_VDR_ASSERT}
add wave -noupdate -group i_sink_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/stream/clk}
add wave -noupdate -group i_sink_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/stream/valid}
add wave -noupdate -group i_sink_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/stream/ready}
add wave -noupdate -group i_sink_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/stream/data}
add wave -noupdate -group i_sink_stream {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_sink/stream/strb}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/clk_i}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/rst_ni}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/clear_i}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_req}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_gnt}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_lrdy}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_add}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_wen}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_be}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_data}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_boffs}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_user}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_r_data}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_r_valid}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_r_opc}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/in_r_user}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_req}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_gnt}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_lrdy}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_add}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_wen}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_be}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_data}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_boffs}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_user}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_r_data}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_r_valid}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_r_opc}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_r_user}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/rr_counter}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/rr_priority}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/winner_d}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/winner_q}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/out_req_q}
add wave -noupdate -group i_ld_st_mux_static {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/dont_use_fifo_gen/i_ld_st_mux_static/s_rr_counter_reg_en}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/DW}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/AW}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/BW}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/WW}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/OW}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/UW}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/clk}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/req}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/gnt}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/lrdy}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/add}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/wen}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/data}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/be}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/boffs}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/user}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/r_data}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/r_valid}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/r_opc}
add wave -noupdate -group i_tcdm_filter_master {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_master/r_user}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/DW}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/AW}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/BW}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/WW}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/OW}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/UW}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/clk}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/req}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/gnt}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/lrdy}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/add}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/wen}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/data}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/be}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/boffs}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/user}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/r_data}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/r_valid}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/r_opc}
add wave -noupdate -group i_tcdm_filter_slave {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_streamer/i_tcdm_filter/tcdm_slave/r_user}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/clk_i}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/rst_ni}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/test_mode_i}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/clear_o}
add wave -noupdate -group {i_ctrl[0]} -expand {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/evt_o}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/ctrl_streamer_o}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/flags_streamer_i}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/ctrl_engine_o}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/flags_engine_i}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/slave_ctrl}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/slave_flags}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/reg_file.hwpe_params[3]}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/reg_file.hwpe_params[2]}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/reg_file.hwpe_params[1]}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/reg_file.hwpe_params[0]}
add wave -noupdate -group {i_ctrl[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_ctrl/reg_file}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/BW_ALIGNED}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/DATA_WIDTH}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/clk_i}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/rst_ni}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/test_mode_i}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/ctrl_i}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/flags_o}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_data_i}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/sample_data_in}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_data_o}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/sample_data_out}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/in32}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/out32}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/empty_data_in}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/full_data_in}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/pop_data_in}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/empty_data_out}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/full_data_out}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/push_data_out}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/valid_in}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/valid_out}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/valid_in_start}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/valid_in_finish}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/count_to_pop_data_in}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/count_to_disable_valid}
add wave -noupdate -group i_engine {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/count_to_push_data_out}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/clk_i}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/rst_ni}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/flush_i}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/testmode_i}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/full_o}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/empty_o}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/usage_o}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/data_i}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/push_i}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/data_o}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/pop_i}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/gate_clock}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/read_pointer_n}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/read_pointer_q}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/write_pointer_n}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/write_pointer_q}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/status_cnt_n}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/status_cnt_q}
add wave -noupdate -group fifo_pre_data_in {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/mem_n}
add wave -noupdate -group fifo_pre_data_in -expand {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_pre_data_in/mem_q}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/clk_i}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/rst_ni}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/flush_i}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/testmode_i}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/full_o}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/empty_o}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/usage_o}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/data_i}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/push_i}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/data_o}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/pop_i}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/gate_clock}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/read_pointer_n}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/read_pointer_q}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/write_pointer_n}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/write_pointer_q}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/status_cnt_n}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/status_cnt_q}
add wave -noupdate -group fifo_post_data_out -childformat {{{/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/mem_n[1]} -radix binary} {{/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/mem_n[0]} -radix binary}} -expand -subitemconfig {{/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/mem_n[1]} {-height 15 -radix binary} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/mem_n[0]} {-height 15 -radix binary}} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/mem_n}
add wave -noupdate -group fifo_post_data_out {/tb_pulp/i_dut/cluster_domain_i/cluster_i/hwpe_gen/hwpe_subsystem_i/FFT_gen[0]/i_fft/i_engine/fifo_post_data_out/mem_q}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/NumWords}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/DataWidth}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/ByteWidth}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/NumPorts}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/Latency}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/SimInit}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/PrintSimCfg}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/ImplKey}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/AddrWidth}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/BeWidth}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/clk_i}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/rst_ni}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/req_i}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/we_i}
add wave -noupdate -group {l2_ram_i[0]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/addr_i}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/wdata_i}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/be_i}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/rdata_o}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/sram}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/r_addr_q}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/init_val}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/rdata_q}
add wave -noupdate -group {l2_ram_i[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[0]/bank_i/rdata_d}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/NumWords}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/DataWidth}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/ByteWidth}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/NumPorts}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/Latency}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/SimInit}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/PrintSimCfg}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/ImplKey}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/AddrWidth}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/BeWidth}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/clk_i}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/rst_ni}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/req_i}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/we_i}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/addr_i}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/wdata_i}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/be_i}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/rdata_o}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/sram}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/r_addr_q}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/init_val}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/rdata_q}
add wave -noupdate -group {l2_ram_i[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[1]/bank_i/rdata_d}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/NumWords}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/DataWidth}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/ByteWidth}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/NumPorts}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/Latency}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/SimInit}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/PrintSimCfg}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/ImplKey}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/AddrWidth}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/BeWidth}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/clk_i}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/rst_ni}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/req_i}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/we_i}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/addr_i}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/wdata_i}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/be_i}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/rdata_o}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/sram}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/r_addr_q}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/init_val}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/rdata_q}
add wave -noupdate -group {l2_ram_i[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[2]/bank_i/rdata_d}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/NumWords}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/DataWidth}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/ByteWidth}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/NumPorts}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/Latency}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/SimInit}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/PrintSimCfg}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/ImplKey}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/AddrWidth}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/BeWidth}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/clk_i}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/rst_ni}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/req_i}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/we_i}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/addr_i}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/wdata_i}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/be_i}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/rdata_o}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/sram}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/r_addr_q}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/init_val}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/rdata_q}
add wave -noupdate -group {l2_ram_i[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/CUTS[3]/bank_i/rdata_d}
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/NumWords
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/DataWidth
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/ByteWidth
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/NumPorts
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/Latency
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/SimInit
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/PrintSimCfg
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/ImplKey
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/AddrWidth
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/BeWidth
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/clk_i
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/rst_ni
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/req_i
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/we_i
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/addr_i
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/wdata_i
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/be_i
add wave -noupdate -group bank_sram_pri1 -expand /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/rdata_o
add wave -noupdate -group bank_sram_pri1 -expand /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/sram
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/r_addr_q
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/init_val
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/rdata_q
add wave -noupdate -group bank_sram_pri1 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri1_i/rdata_d
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/NumWords
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/DataWidth
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/ByteWidth
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/NumPorts
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/Latency
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/SimInit
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/PrintSimCfg
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/ImplKey
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/AddrWidth
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/BeWidth
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/clk_i
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/rst_ni
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/req_i
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/we_i
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/addr_i
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/wdata_i
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/be_i
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/rdata_o
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/sram
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/r_addr_q
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/init_val
add wave -noupdate -group bank_sram_pri0 -expand /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/rdata_q
add wave -noupdate -group bank_sram_pri0 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/bank_sram_pri0_i/rdata_d
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/NumWords}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/DataWidth}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/ByteWidth}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/NumPorts}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/Latency}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/SimInit}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/PrintSimCfg}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/ImplKey}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/AddrWidth}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/BeWidth}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/clk_i}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/rst_ni}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/req_i}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/we_i}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/addr_i}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/wdata_i}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/be_i}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/rdata_o}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/sram}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/r_addr_q}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/init_val}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/rdata_q}
add wave -noupdate -expand -group {i_bank[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[0]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/NumWords}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/Latency}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/SimInit}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/clk_i}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/req_i}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/we_i}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/addr_i}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/be_i}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/sram}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/init_val}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[1]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[1]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/NumWords}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/Latency}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/SimInit}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/clk_i}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/req_i}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/we_i}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/addr_i}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/be_i}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[2]} -expand {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/sram}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/init_val}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[2]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/NumWords}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/Latency}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/SimInit}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/clk_i}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/req_i}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/we_i}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/addr_i}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/be_i}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/sram}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/init_val}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[3]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[3]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/NumWords}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/Latency}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/SimInit}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/clk_i}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/req_i}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/we_i}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/addr_i}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/be_i}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/sram}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/init_val}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[4]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[4]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/NumWords}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/Latency}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/SimInit}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/clk_i}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/req_i}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/we_i}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/addr_i}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/be_i}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/sram}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/init_val}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[5]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[5]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/NumWords}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/Latency}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/SimInit}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/clk_i}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/req_i}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/we_i}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/addr_i}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/be_i}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/sram}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/init_val}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[6]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[6]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/NumWords}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/Latency}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/SimInit}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/clk_i}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/req_i}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/we_i}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/addr_i}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/be_i}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/sram}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/init_val}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[7]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[7]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/NumWords}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/Latency}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/SimInit}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/clk_i}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/req_i}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/we_i}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/addr_i}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/be_i}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/sram}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/init_val}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[8]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[8]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/NumWords}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/Latency}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/SimInit}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/clk_i}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/req_i}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/we_i}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/addr_i}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/be_i}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/sram}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/init_val}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[9]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[9]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/NumWords}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/Latency}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/SimInit}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/clk_i}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/req_i}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/we_i}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/addr_i}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/be_i}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/sram}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/init_val}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[10]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[10]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/NumWords}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/Latency}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/SimInit}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/clk_i}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/req_i}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/we_i}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/addr_i}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/be_i}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/sram}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/init_val}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[11]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[11]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/NumWords}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/Latency}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/SimInit}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/clk_i}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/req_i}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/we_i}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/addr_i}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/be_i}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/sram}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/init_val}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[12]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[12]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/NumWords}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/Latency}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/SimInit}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/clk_i}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/req_i}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/we_i}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/addr_i}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/be_i}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/sram}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/init_val}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[13]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[13]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/NumWords}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/Latency}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/SimInit}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/clk_i}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/req_i}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/we_i}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/addr_i}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/be_i}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/sram}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/init_val}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[14]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[14]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/NumWords}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/Latency}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/SimInit}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/clk_i}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/req_i}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/we_i}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/addr_i}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/be_i}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/sram}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/init_val}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[15]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[15]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/NumWords}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/Latency}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/SimInit}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/clk_i}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/req_i}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/we_i}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/addr_i}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/be_i}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/sram}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/init_val}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[16]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[16]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/NumWords}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/Latency}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/SimInit}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/clk_i}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/req_i}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/we_i}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/addr_i}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/be_i}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/sram}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/init_val}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[17]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[17]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/NumWords}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/Latency}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/SimInit}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/clk_i}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/req_i}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/we_i}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/addr_i}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/be_i}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/sram}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/init_val}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[18]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[18]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/NumWords}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/Latency}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/SimInit}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/clk_i}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/req_i}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/we_i}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/addr_i}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/be_i}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/sram}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/init_val}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[19]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[19]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/NumWords}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/Latency}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/SimInit}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/clk_i}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/req_i}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/we_i}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/addr_i}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/be_i}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/sram}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/init_val}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[20]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[20]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/NumWords}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/Latency}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/SimInit}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/clk_i}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/req_i}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/we_i}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/addr_i}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/be_i}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/sram}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/init_val}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[21]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[21]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/NumWords}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/Latency}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/SimInit}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/clk_i}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/req_i}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/we_i}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/addr_i}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/be_i}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/sram}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/init_val}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[22]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[22]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/NumWords}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/Latency}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/SimInit}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/clk_i}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/req_i}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/we_i}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/addr_i}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/be_i}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/sram}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/init_val}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[23]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[23]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/NumWords}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/Latency}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/SimInit}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/clk_i}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/req_i}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/we_i}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/addr_i}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/be_i}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/sram}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/init_val}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[24]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[24]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/NumWords}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/Latency}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/SimInit}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/clk_i}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/req_i}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/we_i}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/addr_i}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/be_i}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/sram}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/init_val}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[25]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[25]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/NumWords}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/Latency}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/SimInit}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/clk_i}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/req_i}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/we_i}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/addr_i}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/be_i}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/sram}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/init_val}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[26]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[26]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/NumWords}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/Latency}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/SimInit}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/clk_i}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/req_i}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/we_i}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/addr_i}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/be_i}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/sram}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/init_val}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[27]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[27]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/NumWords}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/Latency}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/SimInit}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/clk_i}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/req_i}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/we_i}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/addr_i}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/be_i}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/sram}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/init_val}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[28]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[28]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/NumWords}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/Latency}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/SimInit}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/clk_i}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/req_i}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/we_i}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/addr_i}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/be_i}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/sram}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/init_val}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[29]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[29]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/NumWords}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/Latency}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/SimInit}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/clk_i}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/req_i}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/we_i}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/addr_i}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/be_i}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/sram}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/init_val}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[30]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[30]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/NumWords}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/Latency}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/SimInit}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/clk_i}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/req_i}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/we_i}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/addr_i}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/be_i}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/sram}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/init_val}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[31]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[31]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/NumWords}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/Latency}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/SimInit}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/clk_i}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/req_i}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/we_i}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/addr_i}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/be_i}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/sram}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/init_val}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[32]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[32]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/NumWords}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/Latency}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/SimInit}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/clk_i}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/req_i}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/we_i}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/addr_i}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/be_i}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/sram}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/init_val}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[33]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[33]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/NumWords}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/Latency}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/SimInit}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/clk_i}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/req_i}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/we_i}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/addr_i}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/be_i}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/sram}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/init_val}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[34]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[34]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/NumWords}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/Latency}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/SimInit}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/clk_i}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/req_i}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/we_i}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/addr_i}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/be_i}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/sram}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/init_val}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[35]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[35]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/NumWords}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/Latency}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/SimInit}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/clk_i}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/req_i}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/we_i}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/addr_i}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/be_i}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/sram}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/init_val}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[36]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[36]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/NumWords}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/Latency}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/SimInit}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/clk_i}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/req_i}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/we_i}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/addr_i}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/be_i}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/sram}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/init_val}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[37]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[37]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/NumWords}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/Latency}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/SimInit}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/clk_i}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/req_i}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/we_i}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/addr_i}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/be_i}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/sram}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/init_val}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[38]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[38]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/NumWords}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/Latency}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/SimInit}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/clk_i}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/req_i}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/we_i}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/addr_i}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/be_i}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/sram}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/init_val}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[39]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[39]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/NumWords}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/Latency}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/SimInit}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/clk_i}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/req_i}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/we_i}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/addr_i}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/be_i}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/sram}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/init_val}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[40]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[40]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/NumWords}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/Latency}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/SimInit}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/clk_i}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/req_i}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/we_i}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/addr_i}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/be_i}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/sram}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/init_val}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[41]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[41]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/NumWords}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/Latency}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/SimInit}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/clk_i}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/req_i}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/we_i}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/addr_i}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/be_i}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/sram}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/init_val}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[42]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[42]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/NumWords}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/Latency}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/SimInit}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/clk_i}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/req_i}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/we_i}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/addr_i}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/be_i}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/sram}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/init_val}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[43]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[43]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/NumWords}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/Latency}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/SimInit}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/clk_i}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/req_i}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/we_i}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/addr_i}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/be_i}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/sram}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/init_val}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[44]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[44]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/NumWords}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/Latency}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/SimInit}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/clk_i}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/req_i}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/we_i}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/addr_i}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/be_i}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/sram}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/init_val}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[45]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[45]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/NumWords}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/Latency}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/SimInit}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/clk_i}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/req_i}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/we_i}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/addr_i}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/be_i}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/sram}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/init_val}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[46]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[46]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/NumWords}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/Latency}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/SimInit}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/clk_i}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/req_i}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/we_i}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/addr_i}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/be_i}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/sram}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/init_val}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[47]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[47]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/NumWords}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/Latency}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/SimInit}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/clk_i}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/req_i}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/we_i}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/addr_i}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/be_i}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/sram}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/init_val}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[48]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[48]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/NumWords}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/Latency}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/SimInit}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/clk_i}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/req_i}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/we_i}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/addr_i}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/be_i}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/sram}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/init_val}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[49]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[49]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/NumWords}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/Latency}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/SimInit}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/clk_i}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/req_i}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/we_i}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/addr_i}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/be_i}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/sram}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/init_val}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[50]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[50]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/NumWords}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/Latency}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/SimInit}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/clk_i}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/req_i}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/we_i}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/addr_i}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/be_i}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/sram}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/init_val}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[51]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[51]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/NumWords}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/Latency}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/SimInit}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/clk_i}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/req_i}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/we_i}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/addr_i}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/be_i}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/sram}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/init_val}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[52]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[52]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/NumWords}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/Latency}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/SimInit}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/clk_i}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/req_i}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/we_i}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/addr_i}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/be_i}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/sram}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/init_val}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[53]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[53]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/NumWords}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/Latency}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/SimInit}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/clk_i}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/req_i}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/we_i}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/addr_i}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/be_i}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/sram}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/init_val}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[54]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[54]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/NumWords}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/Latency}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/SimInit}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/clk_i}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/req_i}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/we_i}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/addr_i}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/be_i}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/sram}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/init_val}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[55]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[55]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/NumWords}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/Latency}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/SimInit}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/clk_i}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/req_i}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/we_i}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/addr_i}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/be_i}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/sram}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/init_val}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[56]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[56]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/NumWords}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/Latency}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/SimInit}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/clk_i}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/req_i}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/we_i}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/addr_i}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/be_i}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/sram}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/init_val}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[57]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[57]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/NumWords}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/Latency}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/SimInit}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/clk_i}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/req_i}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/we_i}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/addr_i}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/be_i}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/sram}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/init_val}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[58]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[58]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/NumWords}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/Latency}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/SimInit}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/clk_i}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/req_i}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/we_i}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/addr_i}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/be_i}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/sram}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/init_val}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[59]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[59]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/NumWords}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/Latency}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/SimInit}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/clk_i}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/req_i}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/we_i}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/addr_i}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/be_i}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/sram}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/init_val}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[60]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[60]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/NumWords}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/Latency}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/SimInit}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/clk_i}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/req_i}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/we_i}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/addr_i}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/be_i}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/sram}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/init_val}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[61]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[61]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/NumWords}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/Latency}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/SimInit}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/clk_i}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/req_i}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/we_i}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/addr_i}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/be_i}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/sram}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/init_val}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[62]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[62]/i_bank/rdata_d}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/NumWords}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/DataWidth}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/ByteWidth}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/NumPorts}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/Latency}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/SimInit}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/PrintSimCfg}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/ImplKey}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/AddrWidth}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/BeWidth}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/clk_i}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/rst_ni}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/req_i}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/we_i}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/addr_i}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/wdata_i}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/be_i}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/rdata_o}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/sram}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/r_addr_q}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/init_val}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/rdata_q}
add wave -noupdate -group {i_bank[63]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/tcdm_banks_i/banks_gen[63]/i_bank/rdata_d}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/AW}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/DW}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/BW}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/IW}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/UW}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/clk}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/req}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/gnt}
add wave -noupdate -group {mem[2]} -expand {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/add}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/wen}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/data}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/be}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/id}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/user}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/r_data}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/r_id}
add wave -noupdate -group {mem[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/mems[2]/r_user}
add wave -noupdate -expand -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/req}
add wave -noupdate -expand -group {l2_interleaved_slave[0]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/add}
add wave -noupdate -expand -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/wen}
add wave -noupdate -expand -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/wdata}
add wave -noupdate -expand -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/be}
add wave -noupdate -expand -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/gnt}
add wave -noupdate -expand -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/r_opc}
add wave -noupdate -expand -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/r_rdata}
add wave -noupdate -expand -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/r_valid}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/AW}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/DW}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/BW}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/IW}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/UW}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/clk}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/req}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/gnt}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/add}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/wen}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/data}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/be}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/id}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/user}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/r_data}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/r_id}
add wave -noupdate -expand -group {hwpe_mem[0][0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_mem[0][0]/r_user}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/AW}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/DW}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/BW}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/IW}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/UW}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/clk}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/req}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/gnt}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/add}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/wen}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/data}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/be}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/id}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/user}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/r_data}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/r_id}
add wave -noupdate -expand -group hwpe_final_vote {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_final_vote[0]/r_user}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/DW}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/AW}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/BW}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/WW}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/OW}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/UW}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/clk}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/req}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/gnt}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/lrdy}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/add}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/wen}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/data}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/be}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/boffs}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/user}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/r_data}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/r_valid}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/r_opc}
add wave -noupdate -expand -group {in[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/in/r_user}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/AW}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/DW}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/BW}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/IW}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/UW}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/clk}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/req}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/gnt}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/add}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/wen}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/data}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/be}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/id}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/user}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/r_data}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/r_id}
add wave -noupdate -group {out[0]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[0]/r_user}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/AW}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/DW}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/BW}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/IW}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/UW}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/clk}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/req}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/gnt}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/add}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/wen}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/data}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/be}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/id}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/user}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/r_data}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/r_id}
add wave -noupdate -group {out[2]} {/tb_pulp/i_dut/cluster_domain_i/cluster_i/cluster_interconnect_wrap_i/hci_gen/i_hci_interconnect/hwpe_interconnect_gen/hwpe_mem_instantation[0]/i_hwpe_interconnect/out[2]/r_user}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {29848226146 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 284
configure wave -valuecolwidth 96
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {687043876 ps} {8436172211 ps}
