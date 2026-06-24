PULP_APP = test_FFT
PULP_APP_SRCS += test_FFT.c functions_FFT.c
PULP_CFLAGS += -O3 -g -I.


include $(RULES_DIR)/pmsis_rules.mk

gui:
	cd BUILD/PULP/GCC_RISCV && export VSIM_RUNNER_FLAGS='+ENTRY_POINT=0x1c008080 -permit_unmatched_virtual_intf -gBAUDRATE=115200 -gLOAD_L2=JTAG' && vsim -64 -do 'source tcl_files/run.tcl'


full:
	$(MAKE) clean
	$(MAKE) all platform=rtl
	$(MAKE) run platform=rtl
