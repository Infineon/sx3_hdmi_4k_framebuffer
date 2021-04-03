view wave
onerror {resume}
quietly virtual signal -install /test_mem_ctrl/U1_ddr_sdram_mem_top { (context /test_mem_ctrl/U1_ddr_sdram_mem_top )&{em_ddr_cs_n , em_ddr_ras_n , em_ddr_cas_n , em_ddr_we_n }} em_ddr_cmd
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Global Signals}
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/rst_n
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/clk_in
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/sclk
add wave -noupdate -divider {Memory Interface Signals}
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_reset_n
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_cke
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_clk
add wave -noupdate -format Literal -radix hexadecimal -expand /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_cmd
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_addr
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_ba
add wave -noupdate -format Literal -radix hexadecimal /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_data
add wave -noupdate -format Literal /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_dqs
add wave -noupdate -format Literal /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_dm
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/em_ddr_odt
add wave -noupdate -divider {Local Interface Signals}
add wave -noupdate -format Logic /test_mem_ctrl/U1_ddr_sdram_mem_top/mem_rst_n
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
TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 189
configure wave -valuecolwidth 159
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

run -all
