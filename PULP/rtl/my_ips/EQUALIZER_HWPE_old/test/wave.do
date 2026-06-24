onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/APB_ADDR_WIDTH
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/ID_WIDTH
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_CORES
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/FIFO_DEPTH
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_CONTEXT
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_FFT
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/BW
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_MASTER_PORT
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/DW
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/BE
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/clk_i
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/rst_ni
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/test_mode_i
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/evt_o
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/busy_o
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_req
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_gnt
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_add
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_wen
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_be
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_wdata
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_r_rdata
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_r_valid
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_req
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_gnt
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_add
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_we
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_be
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_wdata
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_r_rdata
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_r_valid
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/bank_gnt
add wave -noupdate -group i_fc_hwpe /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/bank_r_valid
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/ID
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/BW
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/FIFO_DEPTH
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/N_CONTEXT
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/N_FFT
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/BW_ALIGNED
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/clk_i
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/rst_ni
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/test_mode_i
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/evt_o
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/clear_streamer
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/streamer_ctrl
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/streamer_flags
add wave -noupdate -group i_equalizer_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/engine_ctrl
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/ID_WIDTH
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/clk
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/req
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/gnt
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/add
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/wen
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/be
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/data
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/id
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/r_data
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/r_valid
add wave -noupdate -expand -group periph /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/periph/r_id
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/N_CONTEXT
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/N_IO_REGS
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/N_FFT
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/ID
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/clk_i
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/rst_ni
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/test_mode_i
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/evt_o
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/ctrl_engine_o
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/ctrl_streamer_o
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/flags_streamer_i
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/clear_streamer
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/clear_o
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/slave_ctrl
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/slave_flags
add wave -noupdate -group i_ctrl /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/reg_file
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/N_FFT
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/clk_i
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/rst_ni
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/test_mode_i
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/clear_i
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/flags_streamer_i
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/ctrl_streamer_o
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/clear_streamer
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/ctrl_engine_o
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/ctrl_slave_o
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/reg_file_i
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/flags_slave_i
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/streamer_ctrl_cfg
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/reg_file_o
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/cs
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/ns
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/New_Task
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/Start_Execute_Task
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/counter_for_check_new_task
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/First_Task
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/Finish_Tasks
add wave -noupdate -group i_fsm /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_ctrl/i_fsm/data_out_late
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/N_FFT
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/DELAY
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/clk_i
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/rst_n
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/valid_in
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/valid_out
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/in_r
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/in_i
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/out_r
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/out_i
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/sr_r
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/sr_i
add wave -noupdate -expand -group i_EQUALIZER /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/i_EQUALIZER/valid_sr
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/FALL_THROUGH}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/DATA_WIDTH}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/ADDR_DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/FifoDepth}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/clk_i}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/rst_ni}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/flush_i}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/testmode_i}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/full_o}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/empty_o}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/usage_o}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/data_i}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/push_i}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/data_o}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/pop_i}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/gate_clock}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_n}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_q}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/mem_n}
add wave -noupdate -expand -group {fifo_pre_data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_pre_data_in/mem_q}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/FALL_THROUGH}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/DATA_WIDTH}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/ADDR_DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/FifoDepth}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/clk_i}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/rst_ni}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/flush_i}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/testmode_i}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/full_o}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/empty_o}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/usage_o}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/data_i}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/push_i}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/data_o}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/pop_i}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/gate_clock}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_n}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_q}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/mem_n}
add wave -noupdate -expand -group {fifo_pre_data_in[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[1]/i_equlizer_fifo/fifo_pre_data_in/mem_q}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/FALL_THROUGH}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/DATA_WIDTH}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/ADDR_DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/FifoDepth}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/clk_i}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/rst_ni}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/flush_i}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/testmode_i}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/full_o}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/empty_o}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/usage_o}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/data_i}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/push_i}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/data_o}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/pop_i}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/gate_clock}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_n}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_q}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/mem_n}
add wave -noupdate -expand -group {fifo_pre_data_in[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[2]/i_equlizer_fifo/fifo_pre_data_in/mem_q}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/FALL_THROUGH}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/DATA_WIDTH}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/ADDR_DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/FifoDepth}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/clk_i}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/rst_ni}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/flush_i}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/testmode_i}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/full_o}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/empty_o}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/usage_o}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/data_i}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/push_i}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/data_o}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/pop_i}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/gate_clock}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_n}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_q}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/mem_n}
add wave -noupdate -expand -group {fifo_pre_data_in[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[3]/i_equlizer_fifo/fifo_pre_data_in/mem_q}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/FALL_THROUGH}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/DATA_WIDTH}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/ADDR_DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/FifoDepth}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/clk_i}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/rst_ni}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/flush_i}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/testmode_i}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/full_o}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/empty_o}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/usage_o}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/data_i}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/push_i}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/data_o}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/pop_i}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/gate_clock}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_n}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_q}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/mem_n}
add wave -noupdate -expand -group {fifo_pre_data_in[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[4]/i_equlizer_fifo/fifo_pre_data_in/mem_q}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/FALL_THROUGH}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/DATA_WIDTH}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/ADDR_DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/FifoDepth}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/clk_i}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/rst_ni}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/flush_i}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/testmode_i}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/full_o}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/empty_o}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/usage_o}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/data_i}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/push_i}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/data_o}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/pop_i}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/gate_clock}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_n}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_q}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/mem_n}
add wave -noupdate -expand -group {fifo_pre_data_in[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[5]/i_equlizer_fifo/fifo_pre_data_in/mem_q}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/FALL_THROUGH}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/DATA_WIDTH}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/ADDR_DEPTH}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/FifoDepth}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/clk_i}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/rst_ni}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/flush_i}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/testmode_i}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/full_o}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/empty_o}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/usage_o}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/data_i}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/push_i}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/data_o}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/pop_i}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/gate_clock}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_n}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_q}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_n}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_q}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/mem_n}
add wave -noupdate -expand -group {fifo_pre_data_in[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[6]/i_equlizer_fifo/fifo_pre_data_in/mem_q}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/FALL_THROUGH}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/DATA_WIDTH}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/DEPTH}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/ADDR_DEPTH}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/FifoDepth}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/clk_i}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/rst_ni}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/flush_i}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/testmode_i}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/full_o}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/empty_o}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/usage_o}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/data_i}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/push_i}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/data_o}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/pop_i}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/gate_clock}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_n}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/read_pointer_q}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_n}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/write_pointer_q}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_n}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/status_cnt_q}
add wave -noupdate -expand -group {fifo_post_data_in[7]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/mem_n}
add wave -noupdate -expand -group {fifo_post_data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_pre_data_in/mem_q}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/FALL_THROUGH}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/DATA_WIDTH}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/DEPTH}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/ADDR_DEPTH}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/FifoDepth}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/clk_i}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/rst_ni}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/flush_i}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/testmode_i}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/full_o}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/empty_o}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/usage_o}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/data_i}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/push_i}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/data_o}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/pop_i}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/gate_clock}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/read_pointer_n}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/read_pointer_q}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/write_pointer_n}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/write_pointer_q}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/status_cnt_n}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/status_cnt_q}
add wave -noupdate -group {fifo_post_data_out[0]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/mem_n}
add wave -noupdate -group {fifo_post_data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[0]/i_equlizer_fifo/fifo_post_data_out/mem_q}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/FALL_THROUGH}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/DATA_WIDTH}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/DEPTH}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/ADDR_DEPTH}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/FifoDepth}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/clk_i}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/rst_ni}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/flush_i}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/testmode_i}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/full_o}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/empty_o}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/usage_o}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/data_i}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/push_i}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/data_o}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/pop_i}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/gate_clock}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/read_pointer_n}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/read_pointer_q}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/write_pointer_n}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/write_pointer_q}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/status_cnt_n}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/status_cnt_q}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/mem_n}
add wave -noupdate -group {fifo_post_data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/i_engine/genblk2[7]/i_equlizer_fifo/fifo_post_data_out/mem_q}
add wave -noupdate -group {data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[0]/DATA_WIDTH}
add wave -noupdate -group {data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[0]/STRB_WIDTH}
add wave -noupdate -group {data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[0]/BYPASS_VCR_ASSERT}
add wave -noupdate -group {data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[0]/BYPASS_VDR_ASSERT}
add wave -noupdate -group {data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[0]/clk}
add wave -noupdate -group {data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[0]/valid}
add wave -noupdate -group {data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[0]/ready}
add wave -noupdate -group {data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[0]/data}
add wave -noupdate -group {data_in[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[0]/strb}
add wave -noupdate -group {data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[7]/DATA_WIDTH}
add wave -noupdate -group {data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[7]/STRB_WIDTH}
add wave -noupdate -group {data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[7]/BYPASS_VCR_ASSERT}
add wave -noupdate -group {data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[7]/BYPASS_VDR_ASSERT}
add wave -noupdate -group {data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[7]/clk}
add wave -noupdate -group {data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[7]/valid}
add wave -noupdate -group {data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[7]/ready}
add wave -noupdate -group {data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[7]/data}
add wave -noupdate -group {data_in[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_in[7]/strb}
add wave -noupdate -group {data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[0]/DATA_WIDTH}
add wave -noupdate -group {data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[0]/STRB_WIDTH}
add wave -noupdate -group {data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[0]/BYPASS_VCR_ASSERT}
add wave -noupdate -group {data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[0]/BYPASS_VDR_ASSERT}
add wave -noupdate -group {data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[0]/clk}
add wave -noupdate -group {data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[0]/valid}
add wave -noupdate -group {data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[0]/ready}
add wave -noupdate -group {data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[0]/data}
add wave -noupdate -group {data_out[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[0]/strb}
add wave -noupdate -group {data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[7]/DATA_WIDTH}
add wave -noupdate -group {data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[7]/STRB_WIDTH}
add wave -noupdate -group {data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[7]/BYPASS_VCR_ASSERT}
add wave -noupdate -group {data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[7]/BYPASS_VDR_ASSERT}
add wave -noupdate -group {data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[7]/clk}
add wave -noupdate -group {data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[7]/valid}
add wave -noupdate -group {data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[7]/ready}
add wave -noupdate -group {data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[7]/data}
add wave -noupdate -group {data_out[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/i_equalizer_top/data_out[7]/strb}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/DW}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/AW}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/BW}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/WW}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/OW}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/UW}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/clk}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/req}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/gnt}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/lrdy}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/add}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/wen}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/data}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/be}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/boffs}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/user}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/r_data}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/r_valid}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/r_opc}
add wave -noupdate -expand -group {tcdm[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[0]/r_user}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/DW}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/AW}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/BW}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/WW}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/OW}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/UW}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/clk}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/req}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/gnt}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/lrdy}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/add}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/wen}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/data}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/be}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/boffs}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/user}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/r_data}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/r_valid}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/r_opc}
add wave -noupdate -group {tcdm[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/i_equalizer_top_wrap/tcdm[7]/r_user}
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
add wave -noupdate -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/req}
add wave -noupdate -group {l2_interleaved_slave[0]} -expand {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/add}
add wave -noupdate -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/wen}
add wave -noupdate -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/wdata}
add wave -noupdate -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/be}
add wave -noupdate -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/gnt}
add wave -noupdate -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/r_opc}
add wave -noupdate -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/r_rdata}
add wave -noupdate -group {l2_interleaved_slave[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_interleaved_slaves[0]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[0]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[0]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[0]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[0]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[0]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[0]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[0]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[0]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[0]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[1]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[1]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[1]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[1]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[1]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[1]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[1]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[1]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[1]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[2]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[2]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[2]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[2]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[2]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[2]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[2]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[2]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[2]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[2]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[3]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[3]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[3]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[3]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[3]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[3]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[3]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[3]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[3]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[3]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[4]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[4]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[4]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[4]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[4]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[4]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[4]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[4]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[4]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[4]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[5]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[5]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[5]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[5]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[5]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[5]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[5]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[5]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[5]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[5]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[6]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[6]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[6]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[6]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[6]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[6]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[6]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[6]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[6]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[6]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[7]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[7]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[7]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[7]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[7]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[7]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[7]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[7]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[7]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[7]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[8]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[8]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[8]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[8]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[8]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[8]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[8]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[8]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[8]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[8]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[8]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[8]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[8]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[8]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[8]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[8]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[8]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[8]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[9]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[9]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[9]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[9]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[9]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[9]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[9]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[9]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[9]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[9]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[9]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[9]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[9]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[9]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[9]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[9]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[9]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[9]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[10]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[10]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[10]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[10]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[10]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[10]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[10]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[10]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[10]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[10]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[10]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[10]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[10]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[10]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[10]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[10]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[10]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[10]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[11]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[11]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[11]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[11]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[11]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[11]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[11]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[11]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[11]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[11]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[11]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[11]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[11]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[11]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[11]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[11]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[11]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[11]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[12]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[12]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[12]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[12]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[12]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[12]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[12]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[12]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[12]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[12]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[12]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[12]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[12]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[12]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[12]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[12]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[12]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[12]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[13]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[13]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[13]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[13]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[13]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[13]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[13]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[13]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[13]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[13]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[13]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[13]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[13]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[13]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[13]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[13]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[13]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[13]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[14]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[14]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[14]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[14]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[14]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[14]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[14]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[14]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[14]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[14]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[14]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[14]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[14]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[14]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[14]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[14]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[14]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[14]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[15]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[15]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[15]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[15]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[15]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[15]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[15]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[15]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[15]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[15]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[15]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[15]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[15]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[15]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[15]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[15]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[15]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[15]/r_valid}
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/APB_ADDR_WIDTH
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/ID_WIDTH
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_CORES
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/FIFO_DEPTH
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_CONTEXT
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_MASTER_PORT
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_FFT
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/BW
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/DW
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/BE
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/clk_i
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/rst_ni
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/test_mode_i
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/evt_o
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/busy_o
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_req
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_gnt
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_add
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_wen
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_be
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_wdata
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_r_rdata
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_r_valid
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_req
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_gnt
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_add
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_we
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_be
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_wdata
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_r_rdata
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_r_valid
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/bank_gnt
add wave -noupdate -group {hwacc_binding[0]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/bank_r_valid
add wave -noupdate -group {hwacc_binding[0]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_binding[0]/i}
add wave -noupdate -expand -group {hwacc_xbar_master[16]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[16]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[16]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[16]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[16]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[16]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[16]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[16]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[16]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[16]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[16]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[16]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[16]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[16]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[16]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[16]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[16]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[16]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[17]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[17]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[17]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[17]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[17]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[17]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[17]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[17]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[17]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[17]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[17]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[17]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[17]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[17]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[17]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[17]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[17]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[17]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[18]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[18]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[18]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[18]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[18]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[18]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[18]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[18]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[18]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[18]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[18]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[18]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[18]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[18]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[18]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[18]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[18]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[18]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[19]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[19]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[19]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[19]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[19]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[19]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[19]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[19]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[19]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[19]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[19]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[19]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[19]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[19]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[19]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[19]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[19]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[19]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[20]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[20]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[20]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[20]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[20]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[20]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[20]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[20]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[20]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[20]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[20]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[20]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[20]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[20]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[20]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[20]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[20]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[20]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[21]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[21]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[21]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[21]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[21]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[21]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[21]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[21]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[21]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[21]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[21]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[21]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[21]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[21]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[21]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[21]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[21]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[21]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[22]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[22]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[22]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[22]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[22]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[22]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[22]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[22]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[22]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[22]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[22]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[22]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[22]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[22]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[22]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[22]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[22]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[22]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[23]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[23]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[23]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[23]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[23]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[23]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[23]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[23]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[23]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[23]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[23]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[23]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[23]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[23]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[23]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[23]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[23]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[23]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[24]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[24]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[24]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[24]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[24]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[24]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[24]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[24]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[24]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[24]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[24]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[24]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[24]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[24]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[24]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[24]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[24]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[24]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[25]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[25]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[25]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[25]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[25]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[25]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[25]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[25]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[25]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[25]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[25]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[25]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[25]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[25]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[25]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[25]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[25]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[25]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[26]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[26]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[26]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[26]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[26]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[26]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[26]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[26]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[26]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[26]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[26]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[26]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[26]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[26]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[26]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[26]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[26]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[26]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[27]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[27]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[27]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[27]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[27]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[27]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[27]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[27]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[27]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[27]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[27]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[27]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[27]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[27]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[27]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[27]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[27]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[27]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[28]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[28]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[28]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[28]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[28]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[28]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[28]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[28]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[28]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[28]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[28]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[28]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[28]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[28]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[28]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[28]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[28]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[28]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[29]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[29]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[29]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[29]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[29]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[29]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[29]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[29]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[29]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[29]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[29]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[29]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[29]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[29]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[29]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[29]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[29]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[29]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[30]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[30]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[30]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[30]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[30]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[30]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[30]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[30]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[30]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[30]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[30]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[30]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[30]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[30]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[30]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[30]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[30]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[30]/r_valid}
add wave -noupdate -expand -group {hwacc_xbar_master[31]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[31]/req}
add wave -noupdate -expand -group {hwacc_xbar_master[31]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[31]/add}
add wave -noupdate -expand -group {hwacc_xbar_master[31]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[31]/wen}
add wave -noupdate -expand -group {hwacc_xbar_master[31]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[31]/wdata}
add wave -noupdate -expand -group {hwacc_xbar_master[31]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[31]/be}
add wave -noupdate -expand -group {hwacc_xbar_master[31]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[31]/gnt}
add wave -noupdate -expand -group {hwacc_xbar_master[31]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[31]/r_opc}
add wave -noupdate -expand -group {hwacc_xbar_master[31]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[31]/r_rdata}
add wave -noupdate -expand -group {hwacc_xbar_master[31]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_xbar_master[31]/r_valid}
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/APB_ADDR_WIDTH
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/ID_WIDTH
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_CORES
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/FIFO_DEPTH
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_CONTEXT
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_MASTER_PORT
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/N_FFT
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/BW
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/DW
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/BE
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/clk_i
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/rst_ni
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/test_mode_i
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/evt_o
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/busy_o
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_req
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_gnt
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_add
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_wen
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_be
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_wdata
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_r_rdata
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/tcdm_r_valid
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_req
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_gnt
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_add
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_we
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_be
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_wdata
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_r_rdata
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/periph_r_valid
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/bank_gnt
add wave -noupdate -group {hwacc_binding[1]} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/bank_r_valid
add wave -noupdate -group {hwacc_binding[1]} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/fc_subsystem_i/fc_hwpe_gen/i_fc_hwpe/hwacc_binding[1]/i}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11810561126 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 284
configure wave -valuecolwidth 219
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
WaveRestoreZoom {11808893174 ps} {11809064181 ps}
