if {[file exists work]} {
   file delete -force work 
}
vlib work

#==== compile
vlog -novopt +define+ddr3_ip_inst_NO_DEBUG+ddr3_ip_inst_SIM+SIM+NO_DEBUG \
-y ../../../models/ecp5u +libext+.v \
-y ../../../models/mem +libext+.v \
-y C:/lscc/diamond/3.11_x64/cae_library/simulation/verilog/ecp5u +libext+.v \
-y C:/lscc/diamond/3.11_x64/cae_library/simulation/verilog/pmi +libext+.v \
+incdir+../../../testbench/tests/ecp5u \
+incdir+../../src/params \
+incdir+../../../models/mem \
../../src/params/ddr3_sdram_mem_params_ddr3_ip_inst.v \
../../../../ddr3_ip_inst_beh.v \
../../../models/ecp5u/ddr_clks_src.v \
../../src/rtl/top/ecp5u/ddr3_sdram_mem_top_wrapper_ddr3_ip_inst.v \
../../../testbench/top/ecp5u/odt_watchdog.v \
../../../testbench/top/ecp5u/monitor.v \
../../../testbench/top/ecp5u/test_mem_ctrl.v


#==== run the simulation
vsim -novopt -t 1ps work.test_mem_ctrl -l ddr3_ip_inst_eval.log\

do wave.do
