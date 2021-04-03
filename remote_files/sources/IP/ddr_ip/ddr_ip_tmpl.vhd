--VHDL instantiation template

component ddr_ip is
    port (cam_in_fifo_Data: in std_logic_vector(31 downto 0);
        cam_in_fifo_Q: out std_logic_vector(63 downto 0);
        cam_in_fifo_RCNT: out std_logic_vector(10 downto 0);
        ddr3_ip_inst_addr: in std_logic_vector(26 downto 0);
        ddr3_ip_inst_cmd: in std_logic_vector(3 downto 0);
        ddr3_ip_inst_cmd_burst_cnt: in std_logic_vector(4 downto 0);
        ddr3_ip_inst_data_mask: in std_logic_vector(7 downto 0);
        ddr3_ip_inst_em_ddr_addr: out std_logic_vector(13 downto 0);
        ddr3_ip_inst_em_ddr_ba: out std_logic_vector(2 downto 0);
        ddr3_ip_inst_em_ddr_cke: out std_logic_vector(0 downto 0);
        ddr3_ip_inst_em_ddr_clk: out std_logic_vector(0 downto 0);
        ddr3_ip_inst_em_ddr_cs_n: out std_logic_vector(0 downto 0);
        ddr3_ip_inst_em_ddr_data: inout std_logic_vector(15 downto 0);
        ddr3_ip_inst_em_ddr_dm: out std_logic_vector(1 downto 0);
        ddr3_ip_inst_em_ddr_dqs: inout std_logic_vector(1 downto 0);
        ddr3_ip_inst_em_ddr_odt: out std_logic_vector(0 downto 0);
        ddr3_ip_inst_read_data: out std_logic_vector(63 downto 0);
        ddr3_ip_inst_write_data: in std_logic_vector(63 downto 0);
        hdmi_uv_fifo_Data: in std_logic_vector(15 downto 0);
        hdmi_uv_fifo_Q: out std_logic_vector(63 downto 0);
        hdmi_uv_fifo_RCNT: out std_logic_vector(9 downto 0);
        i2s_rx_fifo_Data: in std_logic_vector(31 downto 0);
        i2s_rx_fifo_Q: out std_logic_vector(31 downto 0);
        i2s_rx_fifo_RCNT: out std_logic_vector(11 downto 0);
        i2s_rx_fifo_WCNT: out std_logic_vector(11 downto 0);
        line_uv_bram_Address: in std_logic_vector(10 downto 0);
        line_uv_bram_Data: in std_logic_vector(15 downto 0);
        line_uv_bram_Q: out std_logic_vector(15 downto 0);
        slfifo_fifo_Data: in std_logic_vector(63 downto 0);
        slfifo_fifo_Q: out std_logic_vector(31 downto 0);
        cam_in_fifo_Empty: out std_logic;
        cam_in_fifo_Full: out std_logic;
        cam_in_fifo_RPReset: in std_logic;
        cam_in_fifo_RdClock: in std_logic;
        cam_in_fifo_RdEn: in std_logic;
        cam_in_fifo_Reset: in std_logic;
        cam_in_fifo_WrClock: in std_logic;
        cam_in_fifo_WrEn: in std_logic;
        ddr3_ip_inst_clk_in: in std_logic;
        ddr3_ip_inst_clocking_good: out std_logic;
        ddr3_ip_inst_cmd_rdy: out std_logic;
        ddr3_ip_inst_cmd_valid: in std_logic;
        ddr3_ip_inst_datain_rdy: out std_logic;
        ddr3_ip_inst_em_ddr_cas_n: out std_logic;
        ddr3_ip_inst_em_ddr_ras_n: out std_logic;
        ddr3_ip_inst_em_ddr_reset_n: out std_logic;
        ddr3_ip_inst_em_ddr_we_n: out std_logic;
        ddr3_ip_inst_init_done: out std_logic;
        ddr3_ip_inst_init_start: in std_logic;
        ddr3_ip_inst_mem_rst_n: in std_logic;
        ddr3_ip_inst_ofly_burst_len: in std_logic;
        ddr3_ip_inst_read_data_valid: out std_logic;
        ddr3_ip_inst_rst_n: in std_logic;
        ddr3_ip_inst_rt_err: out std_logic;
        ddr3_ip_inst_sclk_out: out std_logic;
        ddr3_ip_inst_wl_err: out std_logic;
        hdmi_uv_fifo_AlmostEmpty: out std_logic;
        hdmi_uv_fifo_Empty: out std_logic;
        hdmi_uv_fifo_Full: out std_logic;
        hdmi_uv_fifo_RPReset: in std_logic;
        hdmi_uv_fifo_RdClock: in std_logic;
        hdmi_uv_fifo_RdEn: in std_logic;
        hdmi_uv_fifo_Reset: in std_logic;
        hdmi_uv_fifo_WrClock: in std_logic;
        hdmi_uv_fifo_WrEn: in std_logic;
        i2s_rx_fifo_AlmostEmpty: out std_logic;
        i2s_rx_fifo_Empty: out std_logic;
        i2s_rx_fifo_Full: out std_logic;
        i2s_rx_fifo_RPReset: in std_logic;
        i2s_rx_fifo_RdClock: in std_logic;
        i2s_rx_fifo_RdEn: in std_logic;
        i2s_rx_fifo_Reset: in std_logic;
        i2s_rx_fifo_WrClock: in std_logic;
        i2s_rx_fifo_WrEn: in std_logic;
        line_uv_bram_Clock: in std_logic;
        line_uv_bram_ClockEn: in std_logic;
        line_uv_bram_Reset: in std_logic;
        line_uv_bram_WE: in std_logic;
        pll_clk_CLKI: in std_logic;
        pll_clk_CLKOP: out std_logic;
        pll_clk_CLKOS: out std_logic;
        slfifo_fifo_AlmostFull: out std_logic;
        slfifo_fifo_Empty: out std_logic;
        slfifo_fifo_Full: out std_logic;
        slfifo_fifo_RPReset: in std_logic;
        slfifo_fifo_RdClock: in std_logic;
        slfifo_fifo_RdEn: in std_logic;
        slfifo_fifo_Reset: in std_logic;
        slfifo_fifo_WrClock: in std_logic;
        slfifo_fifo_WrEn: in std_logic
    );
    
end component ddr_ip; -- sbp_module=true 
_inst: ddr_ip port map (slfifo_fifo_Data => __,slfifo_fifo_Q => __,slfifo_fifo_AlmostFull => __,
            slfifo_fifo_Empty => __,slfifo_fifo_Full => __,slfifo_fifo_RPReset => __,
            slfifo_fifo_RdClock => __,slfifo_fifo_RdEn => __,slfifo_fifo_Reset => __,
            slfifo_fifo_WrClock => __,slfifo_fifo_WrEn => __,i2s_rx_fifo_Data => __,
            i2s_rx_fifo_Q => __,i2s_rx_fifo_RCNT => __,i2s_rx_fifo_WCNT => __,
            i2s_rx_fifo_AlmostEmpty => __,i2s_rx_fifo_Empty => __,i2s_rx_fifo_Full => __,
            i2s_rx_fifo_RPReset => __,i2s_rx_fifo_RdClock => __,i2s_rx_fifo_RdEn => __,
            i2s_rx_fifo_Reset => __,i2s_rx_fifo_WrClock => __,i2s_rx_fifo_WrEn => __,
            ddr3_ip_inst_addr => __,ddr3_ip_inst_cmd => __,ddr3_ip_inst_cmd_burst_cnt => __,
            ddr3_ip_inst_data_mask => __,ddr3_ip_inst_em_ddr_addr => __,ddr3_ip_inst_em_ddr_ba => __,
            ddr3_ip_inst_em_ddr_cke => __,ddr3_ip_inst_em_ddr_clk => __,ddr3_ip_inst_em_ddr_cs_n => __,
            ddr3_ip_inst_em_ddr_data => __,ddr3_ip_inst_em_ddr_dm => __,ddr3_ip_inst_em_ddr_dqs => __,
            ddr3_ip_inst_em_ddr_odt => __,ddr3_ip_inst_read_data => __,ddr3_ip_inst_write_data => __,
            ddr3_ip_inst_clk_in => __,ddr3_ip_inst_clocking_good => __,ddr3_ip_inst_cmd_rdy => __,
            ddr3_ip_inst_cmd_valid => __,ddr3_ip_inst_datain_rdy => __,ddr3_ip_inst_em_ddr_cas_n => __,
            ddr3_ip_inst_em_ddr_ras_n => __,ddr3_ip_inst_em_ddr_reset_n => __,
            ddr3_ip_inst_em_ddr_we_n => __,ddr3_ip_inst_init_done => __,ddr3_ip_inst_init_start => __,
            ddr3_ip_inst_mem_rst_n => __,ddr3_ip_inst_ofly_burst_len => __,
            ddr3_ip_inst_read_data_valid => __,ddr3_ip_inst_rst_n => __,ddr3_ip_inst_rt_err => __,
            ddr3_ip_inst_sclk_out => __,ddr3_ip_inst_wl_err => __,hdmi_uv_fifo_Data => __,
            hdmi_uv_fifo_Q => __,hdmi_uv_fifo_RCNT => __,hdmi_uv_fifo_AlmostEmpty => __,
            hdmi_uv_fifo_Empty => __,hdmi_uv_fifo_Full => __,hdmi_uv_fifo_RPReset => __,
            hdmi_uv_fifo_RdClock => __,hdmi_uv_fifo_RdEn => __,hdmi_uv_fifo_Reset => __,
            hdmi_uv_fifo_WrClock => __,hdmi_uv_fifo_WrEn => __,cam_in_fifo_Data => __,
            cam_in_fifo_Q => __,cam_in_fifo_RCNT => __,cam_in_fifo_Empty => __,
            cam_in_fifo_Full => __,cam_in_fifo_RPReset => __,cam_in_fifo_RdClock => __,
            cam_in_fifo_RdEn => __,cam_in_fifo_Reset => __,cam_in_fifo_WrClock => __,
            cam_in_fifo_WrEn => __,line_uv_bram_Address => __,line_uv_bram_Data => __,
            line_uv_bram_Q => __,line_uv_bram_Clock => __,line_uv_bram_ClockEn => __,
            line_uv_bram_Reset => __,line_uv_bram_WE => __,pll_clk_CLKI => __,
            pll_clk_CLKOP => __,pll_clk_CLKOS => __);
