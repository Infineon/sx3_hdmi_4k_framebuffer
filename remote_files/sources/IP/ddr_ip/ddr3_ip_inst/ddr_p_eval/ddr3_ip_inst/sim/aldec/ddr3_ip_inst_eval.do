cd {G:/cypress_prj/hdmi_Industrial_4k/ddr_ip/ddr3_ip_inst/ddr_p_eval/ddr3_ip_inst/sim/aldec}
workspace create ddr3_space
design create ddr3_design .
design open ddr3_design
cd {G:/cypress_prj/hdmi_Industrial_4k/ddr_ip/ddr3_ip_inst/ddr_p_eval/ddr3_ip_inst/sim/aldec}
waveformmode asdb
vlog -msg 0 +define+ddr3_ip_inst_NO_DEBUG+ddr3_ip_inst_SIM+SIM+NO_DEBUG \
-y ../../../models/ecp5u +libext+.v \
-y ../../../models/mem +libext+.v \
+incdir+../../../testbench/tests/ecp5u \
+incdir+../../src/params \
+incdir+../../../models/mem \
../../src/params/ddr3_sdram_mem_params_ddr3_ip_inst.v \
../../../models/ecp5u/pmi_distributed_dpram.v \
../../../../ddr3_ip_inst_beh.v \
../../../models/ecp5u/ddr_clks_src.v \
../../src/rtl/top/ecp5u/ddr3_sdram_mem_top_wrapper_ddr3_ip_inst.v \
../../../testbench/top/ecp5u/odt_watchdog.v \
../../../testbench/top/ecp5u/monitor.v \
../../../testbench/top/ecp5u/test_mem_ctrl.v


vsim -O5 +access +r -t 1ps -lib ddr3_design -L ovi_ecp5u ddr3_design.test_mem_ctrl 

add wave -noupdate -divider {Global Signals}
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/clk_in
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/rst_n
add wave -noupdate -divider {Memory Interface Signals}
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_reset_n
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_cke
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_clk
wave -virtual "em_ddr_cmd" -expand /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_cs_n /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_ras_n /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_cas_n /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_we_n
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_addr
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_ba
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_data
add wave -noupdate -format Literal /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_dqs
add wave -noupdate -format Literal /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_dm
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_odt
add wave -noupdate -divider {Local Interface Signals}
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/sclk_out
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/init_start
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/init_done
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/wl_err
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/rt_err
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/clocking_good
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/addr
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/cmd
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/cmd_valid
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/cmd_rdy
add wave -noupdate -format Literal /test_mem_ctrl/U1_ddr_sdram_mem_top/cmd_burst_cnt
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/ofly_burst_len
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/datain_rdy
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/write_data
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/data_mask
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/read_data
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/read_data_valid
run -all
