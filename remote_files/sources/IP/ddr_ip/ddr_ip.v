/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module ddr_ip
//
module ddr_ip (cam_in_fifo_Data, cam_in_fifo_Q, cam_in_fifo_RCNT, ddr3_ip_inst_addr, 
            ddr3_ip_inst_cmd, ddr3_ip_inst_cmd_burst_cnt, ddr3_ip_inst_data_mask, 
            ddr3_ip_inst_em_ddr_addr, ddr3_ip_inst_em_ddr_ba, ddr3_ip_inst_em_ddr_cke, 
            ddr3_ip_inst_em_ddr_clk, ddr3_ip_inst_em_ddr_cs_n, ddr3_ip_inst_em_ddr_data, 
            ddr3_ip_inst_em_ddr_dm, ddr3_ip_inst_em_ddr_dqs, ddr3_ip_inst_em_ddr_odt, 
            ddr3_ip_inst_read_data, ddr3_ip_inst_write_data, hdmi_uv_fifo_Data, 
            hdmi_uv_fifo_Q, hdmi_uv_fifo_RCNT, i2s_rx_fifo_Data, i2s_rx_fifo_Q, 
            i2s_rx_fifo_RCNT, i2s_rx_fifo_WCNT, line_uv_bram_Address, 
            line_uv_bram_Data, line_uv_bram_Q, slfifo_fifo_Data, slfifo_fifo_Q, 
            cam_in_fifo_Empty, cam_in_fifo_Full, cam_in_fifo_RPReset, 
            cam_in_fifo_RdClock, cam_in_fifo_RdEn, cam_in_fifo_Reset, 
            cam_in_fifo_WrClock, cam_in_fifo_WrEn, ddr3_ip_inst_clk_in, 
            ddr3_ip_inst_clocking_good, ddr3_ip_inst_cmd_rdy, ddr3_ip_inst_cmd_valid, 
            ddr3_ip_inst_datain_rdy, ddr3_ip_inst_em_ddr_cas_n, ddr3_ip_inst_em_ddr_ras_n, 
            ddr3_ip_inst_em_ddr_reset_n, ddr3_ip_inst_em_ddr_we_n, ddr3_ip_inst_init_done, 
            ddr3_ip_inst_init_start, ddr3_ip_inst_mem_rst_n, ddr3_ip_inst_ofly_burst_len, 
            ddr3_ip_inst_read_data_valid, ddr3_ip_inst_rst_n, ddr3_ip_inst_rt_err, 
            ddr3_ip_inst_sclk_out, ddr3_ip_inst_wl_err, hdmi_uv_fifo_AlmostEmpty, 
            hdmi_uv_fifo_Empty, hdmi_uv_fifo_Full, hdmi_uv_fifo_RPReset, 
            hdmi_uv_fifo_RdClock, hdmi_uv_fifo_RdEn, hdmi_uv_fifo_Reset, 
            hdmi_uv_fifo_WrClock, hdmi_uv_fifo_WrEn, i2s_rx_fifo_AlmostEmpty, 
            i2s_rx_fifo_Empty, i2s_rx_fifo_Full, i2s_rx_fifo_RPReset, 
            i2s_rx_fifo_RdClock, i2s_rx_fifo_RdEn, i2s_rx_fifo_Reset, 
            i2s_rx_fifo_WrClock, i2s_rx_fifo_WrEn, line_uv_bram_Clock, 
            line_uv_bram_ClockEn, line_uv_bram_Reset, line_uv_bram_WE, 
            pll_clk_CLKI, pll_clk_CLKOP, pll_clk_CLKOS, slfifo_fifo_AlmostFull, 
            slfifo_fifo_Empty, slfifo_fifo_Full, slfifo_fifo_RPReset, 
            slfifo_fifo_RdClock, slfifo_fifo_RdEn, slfifo_fifo_Reset, 
            slfifo_fifo_WrClock, slfifo_fifo_WrEn) /* synthesis sbp_module=true */ ;
    input [31:0]cam_in_fifo_Data;
    output [63:0]cam_in_fifo_Q;
    output [10:0]cam_in_fifo_RCNT;
    input [26:0]ddr3_ip_inst_addr;
    input [3:0]ddr3_ip_inst_cmd;
    input [4:0]ddr3_ip_inst_cmd_burst_cnt;
    input [7:0]ddr3_ip_inst_data_mask;
    output [13:0]ddr3_ip_inst_em_ddr_addr;
    output [2:0]ddr3_ip_inst_em_ddr_ba;
    output [0:0]ddr3_ip_inst_em_ddr_cke;
    output [0:0]ddr3_ip_inst_em_ddr_clk;
    output [0:0]ddr3_ip_inst_em_ddr_cs_n;
    inout [15:0]ddr3_ip_inst_em_ddr_data;
    output [1:0]ddr3_ip_inst_em_ddr_dm;
    inout [1:0]ddr3_ip_inst_em_ddr_dqs;
    output [0:0]ddr3_ip_inst_em_ddr_odt;
    output [63:0]ddr3_ip_inst_read_data;
    input [63:0]ddr3_ip_inst_write_data;
    input [15:0]hdmi_uv_fifo_Data;
    output [63:0]hdmi_uv_fifo_Q;
    output [9:0]hdmi_uv_fifo_RCNT;
    input [31:0]i2s_rx_fifo_Data;
    output [31:0]i2s_rx_fifo_Q;
    output [11:0]i2s_rx_fifo_RCNT;
    output [11:0]i2s_rx_fifo_WCNT;
    input [10:0]line_uv_bram_Address;
    input [15:0]line_uv_bram_Data;
    output [15:0]line_uv_bram_Q;
    input [63:0]slfifo_fifo_Data;
    output [31:0]slfifo_fifo_Q;
    output cam_in_fifo_Empty;
    output cam_in_fifo_Full;
    input cam_in_fifo_RPReset;
    input cam_in_fifo_RdClock;
    input cam_in_fifo_RdEn;
    input cam_in_fifo_Reset;
    input cam_in_fifo_WrClock;
    input cam_in_fifo_WrEn;
    input ddr3_ip_inst_clk_in;
    output ddr3_ip_inst_clocking_good;
    output ddr3_ip_inst_cmd_rdy;
    input ddr3_ip_inst_cmd_valid;
    output ddr3_ip_inst_datain_rdy;
    output ddr3_ip_inst_em_ddr_cas_n;
    output ddr3_ip_inst_em_ddr_ras_n;
    output ddr3_ip_inst_em_ddr_reset_n;
    output ddr3_ip_inst_em_ddr_we_n;
    output ddr3_ip_inst_init_done;
    input ddr3_ip_inst_init_start;
    input ddr3_ip_inst_mem_rst_n;
    input ddr3_ip_inst_ofly_burst_len;
    output ddr3_ip_inst_read_data_valid;
    input ddr3_ip_inst_rst_n;
    output ddr3_ip_inst_rt_err;
    output ddr3_ip_inst_sclk_out;
    output ddr3_ip_inst_wl_err;
    output hdmi_uv_fifo_AlmostEmpty;
    output hdmi_uv_fifo_Empty;
    output hdmi_uv_fifo_Full;
    input hdmi_uv_fifo_RPReset;
    input hdmi_uv_fifo_RdClock;
    input hdmi_uv_fifo_RdEn;
    input hdmi_uv_fifo_Reset;
    input hdmi_uv_fifo_WrClock;
    input hdmi_uv_fifo_WrEn;
    output i2s_rx_fifo_AlmostEmpty;
    output i2s_rx_fifo_Empty;
    output i2s_rx_fifo_Full;
    input i2s_rx_fifo_RPReset;
    input i2s_rx_fifo_RdClock;
    input i2s_rx_fifo_RdEn;
    input i2s_rx_fifo_Reset;
    input i2s_rx_fifo_WrClock;
    input i2s_rx_fifo_WrEn;
    input line_uv_bram_Clock;
    input line_uv_bram_ClockEn;
    input line_uv_bram_Reset;
    input line_uv_bram_WE;
    input pll_clk_CLKI;
    output pll_clk_CLKOP;
    output pll_clk_CLKOS;
    output slfifo_fifo_AlmostFull;
    output slfifo_fifo_Empty;
    output slfifo_fifo_Full;
    input slfifo_fifo_RPReset;
    input slfifo_fifo_RdClock;
    input slfifo_fifo_RdEn;
    input slfifo_fifo_Reset;
    input slfifo_fifo_WrClock;
    input slfifo_fifo_WrEn;
    
    
    cam_in_fifo cam_in_fifo_inst (.Data({cam_in_fifo_Data}), .Q({cam_in_fifo_Q}), 
            .RCNT({cam_in_fifo_RCNT}), .Empty(cam_in_fifo_Empty), .Full(cam_in_fifo_Full), 
            .RPReset(cam_in_fifo_RPReset), .RdClock(cam_in_fifo_RdClock), 
            .RdEn(cam_in_fifo_RdEn), .Reset(cam_in_fifo_Reset), .WrClock(cam_in_fifo_WrClock), 
            .WrEn(cam_in_fifo_WrEn));
    ddr3_sdram_mem_top_ddr3_ip_inst ddr3_ip_inst_inst (.addr({ddr3_ip_inst_addr}), 
            .cmd({ddr3_ip_inst_cmd}), .cmd_burst_cnt({ddr3_ip_inst_cmd_burst_cnt}), 
            .data_mask({ddr3_ip_inst_data_mask}), .em_ddr_addr({ddr3_ip_inst_em_ddr_addr}), 
            .em_ddr_ba({ddr3_ip_inst_em_ddr_ba}), .em_ddr_cke({ddr3_ip_inst_em_ddr_cke}), 
            .em_ddr_clk({ddr3_ip_inst_em_ddr_clk}), .em_ddr_cs_n({ddr3_ip_inst_em_ddr_cs_n}), 
            .em_ddr_data({ddr3_ip_inst_em_ddr_data}), .em_ddr_dm({ddr3_ip_inst_em_ddr_dm}), 
            .em_ddr_dqs({ddr3_ip_inst_em_ddr_dqs}), .em_ddr_odt({ddr3_ip_inst_em_ddr_odt}), 
            .read_data({ddr3_ip_inst_read_data}), .write_data({ddr3_ip_inst_write_data}), 
            .clk_in(ddr3_ip_inst_clk_in), .clocking_good(ddr3_ip_inst_clocking_good), 
            .cmd_rdy(ddr3_ip_inst_cmd_rdy), .cmd_valid(ddr3_ip_inst_cmd_valid), 
            .datain_rdy(ddr3_ip_inst_datain_rdy), .em_ddr_cas_n(ddr3_ip_inst_em_ddr_cas_n), 
            .em_ddr_ras_n(ddr3_ip_inst_em_ddr_ras_n), .em_ddr_reset_n(ddr3_ip_inst_em_ddr_reset_n), 
            .em_ddr_we_n(ddr3_ip_inst_em_ddr_we_n), .init_done(ddr3_ip_inst_init_done), 
            .init_start(ddr3_ip_inst_init_start), .mem_rst_n(ddr3_ip_inst_mem_rst_n), 
            .ofly_burst_len(ddr3_ip_inst_ofly_burst_len), .read_data_valid(ddr3_ip_inst_read_data_valid), 
            .rst_n(ddr3_ip_inst_rst_n), .rt_err(ddr3_ip_inst_rt_err), .sclk_out(ddr3_ip_inst_sclk_out), 
            .wl_err(ddr3_ip_inst_wl_err));
    hdmi_uv_fifo hdmi_uv_fifo_inst (.Data({hdmi_uv_fifo_Data}), .Q({hdmi_uv_fifo_Q}), 
            .RCNT({hdmi_uv_fifo_RCNT}), .AlmostEmpty(hdmi_uv_fifo_AlmostEmpty), 
            .Empty(hdmi_uv_fifo_Empty), .Full(hdmi_uv_fifo_Full), .RPReset(hdmi_uv_fifo_RPReset), 
            .RdClock(hdmi_uv_fifo_RdClock), .RdEn(hdmi_uv_fifo_RdEn), .Reset(hdmi_uv_fifo_Reset), 
            .WrClock(hdmi_uv_fifo_WrClock), .WrEn(hdmi_uv_fifo_WrEn));
    i2s_rx_fifo i2s_rx_fifo_inst (.Data({i2s_rx_fifo_Data}), .Q({i2s_rx_fifo_Q}), 
            .RCNT({i2s_rx_fifo_RCNT}), .WCNT({i2s_rx_fifo_WCNT}), .AlmostEmpty(i2s_rx_fifo_AlmostEmpty), 
            .Empty(i2s_rx_fifo_Empty), .Full(i2s_rx_fifo_Full), .RPReset(i2s_rx_fifo_RPReset), 
            .RdClock(i2s_rx_fifo_RdClock), .RdEn(i2s_rx_fifo_RdEn), .Reset(i2s_rx_fifo_Reset), 
            .WrClock(i2s_rx_fifo_WrClock), .WrEn(i2s_rx_fifo_WrEn));
    line_uv_bram line_uv_bram_inst (.Address({line_uv_bram_Address}), .Data({line_uv_bram_Data}), 
            .Q({line_uv_bram_Q}), .Clock(line_uv_bram_Clock), .ClockEn(line_uv_bram_ClockEn), 
            .Reset(line_uv_bram_Reset), .WE(line_uv_bram_WE));
    pll_clk pll_clk_inst (.CLKI(pll_clk_CLKI), .CLKOP(pll_clk_CLKOP), .CLKOS(pll_clk_CLKOS));
    slfifo_fifo slfifo_fifo_inst (.Data({slfifo_fifo_Data}), .Q({slfifo_fifo_Q}), 
            .AlmostFull(slfifo_fifo_AlmostFull), .Empty(slfifo_fifo_Empty), 
            .Full(slfifo_fifo_Full), .RPReset(slfifo_fifo_RPReset), .RdClock(slfifo_fifo_RdClock), 
            .RdEn(slfifo_fifo_RdEn), .Reset(slfifo_fifo_Reset), .WrClock(slfifo_fifo_WrClock), 
            .WrEn(slfifo_fifo_WrEn));
    
endmodule

