//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
// 
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		HDMI RX 
// Module Name:		hdmi_rx_top
// Target Devices:	LFE5U-45F-8BG381I
// Tool Versions:	
// Description: The hdmi_rx_top module is the overall top module of this design. It integrates all the sub-modules.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 100 ps
`include "ddr3_test_params.v"

module hdmi_rx_top 
(
    clk_in,
	reset_i,	// Active High reset
	
    // FX3 GPIF Interface
	fx3_pclk_o,			// pixel data clock output
    fx3_pd_o, 			// pixel data output
    fx3_slcs_ctl0_o,	// chip select
    fx3_slwr_ctl1_o, // Slave write
    fx3_sloe_ctl2_o, 		// Reset pin, active low
    fx3_flaga_ctl4_i,	// Water mark - partial empty flag
    fx3_flagb_ctl5_i,	// DMA ready - empty flag
    fx3_pktend_ctl7_o, // Packet End
    fx3_sladdr1_ctl11_o,		// Socket Addr A1
    fx3_sladdr0_ctl12_o,		// Socket Addr A0
	fx3_slrd_ctl3_o, 		// Slave read
	
	// FX3 I2C Interface
    fx3_i2c_scl_io,
    fx3_i2c_sda_io,
  
    // DDR3 RAM interface
    em_ddr_data,
    em_ddr_dqs,
    em_ddr_dm,
    em_ddr_clk,
    em_ddr_cke,
    em_ddr_cs_n,
    em_ddr_odt,
    em_ddr_reset_n,
    em_ddr_ras_n,
    em_ddr_cas_n,
    em_ddr_we_n,
    em_ddr_ba,
    em_ddr_addr,
	
	//	HDMI rx input
	hdmi_clk_i,	// Source sync clock
	hdmi_y_i,
	hdmi_cbcr_i,
	hdmi_vsync_i,
	hdmi_de_i,

	i2s_d0_i,
	i2s_sclk_i,
	i2s_ws_i
	
    )/* synthesis syn_dspstyle=LOGIC */ /* synthesis syn_useioff = 0 */;

// ==============================================================================
// Define all inputs / outputs
// ==============================================================================

input				clk_in;
input				reset_i;	// Active High reset

// FX3 GPIF Interface
output	wire		fx3_pclk_o;			// Pixel data clock output
output	wire [31:0]	fx3_pd_o; 			// Pixel data output
output	wire		fx3_slcs_ctl0_o;	// CHIP SELECT
output	wire		fx3_slwr_ctl1_o; // SLAVE WRITE
output	wire		fx3_sloe_ctl2_o; 		// Reset pin, active low
input	wire		fx3_flaga_ctl4_i;	// WATER MARK
input	wire		fx3_flagb_ctl5_i;	//DMA READY
output	wire		fx3_pktend_ctl7_o;	//PACKET END
output	wire		fx3_sladdr1_ctl11_o;		//A1
output	wire		fx3_sladdr0_ctl12_o;		//A0
output	wire		fx3_slrd_ctl3_o;			// Slave read

// FX3 I2C Interface
inout	wire		fx3_i2c_scl_io;
inout	wire		fx3_i2c_sda_io;

// DDR3 RAM interface
inout  [`inst1_DATA_WIDTH-1:0]		em_ddr_data;
inout  [`inst1_DATA_WIDTH / 8-1:0]	em_ddr_dqs;
output [`inst1_DATA_WIDTH/8-1:0]	em_ddr_dm;
output [`inst1_CS_WIDTH-1:0]		em_ddr_clk;
output [`inst1_CS_WIDTH-1:0]		em_ddr_cke;
output								em_ddr_ras_n;
output								em_ddr_cas_n;
output								em_ddr_we_n;
output  [`inst1_CS_WIDTH-1:0]		em_ddr_cs_n;
output  [`inst1_CS_WIDTH -1 :0]		em_ddr_odt;
output  [`inst1_ROW_WIDTH-1:0]		em_ddr_addr;
output  [`inst1_BANK_WIDTH-1:0]		em_ddr_ba;
output								em_ddr_reset_n;


//	HDMI rx input
input			hdmi_clk_i;
input	[7:0]	hdmi_y_i;
input	[7:0]	hdmi_cbcr_i;
input			hdmi_vsync_i;
//input			hdmi_hsync_i;
input			hdmi_de_i;

input		i2s_d0_i;
input		i2s_sclk_i;
input		i2s_ws_i;


//	Wires and register declarations
wire	hdmi_clk_o;
wire	pll_clk1;
wire	pll_clk2;
wire	sclk /* synthesis syn_keep=1 */;    

reg		rst_n_150M, rff1_150M;
reg		rst_n_pll_clk1, rff1_pll_clk1;
reg		rst_n_pll_clk2, rff1_pll_clk2;
reg		rst_n_hdmi, rff1_hdmi;
reg		rst_hdmi, rff1_p_hdmi;

wire [31:0] hdmi_din_ddr;

assign fx3_sloe_ctl2_o =1'b1;
assign fx3_slrd_ctl3_o= 1'b1;

wire	hdmi_clk_o_w;
reg [19:0] reset_ddr_cnt='d0;
reg reset_ddr_n='d0;
wire OSC;

defparam I1.DIV = 128;
OSCG I1 (.OSC(OSC));


always @(posedge OSC, posedge reset_i)
	if(reset_i) begin
		reset_ddr_n <= 'd0;
		reset_ddr_cnt <= 'd0;
	end
	else if(reset_ddr_cnt>'d1000000) begin
		reset_ddr_n <= 'd1;
		reset_ddr_cnt <= reset_ddr_cnt;
	end else begin
		reset_ddr_cnt <= reset_ddr_cnt + 'd1;
		reset_ddr_n <= 'd0;
	end

//	HDMI_IN module -
//		Receives the DDR HDMI video input from the HDMI rx IC
hdmi_in
hdmi_in_mod
(
	.ddr_in_datain({hdmi_cbcr_i,hdmi_y_i}),	// HDMI DDR video input lines
	.ddr_in_q(hdmi_din_ddr),	// SDR output
	.ddr_in_clkin(hdmi_clk_i),	// HDMI source clock
	.ddr_in_reset(1'd0),			// active high reset
	.ddr_in_sclk(hdmi_clk_o)
	);
	
//	Reset bridge of reset_i in hdmi_clk_o domain Active HIGH
always @(posedge hdmi_clk_o, posedge reset_i)
begin
  if (reset_i) begin
    rst_hdmi <= 'd1;
    rff1_p_hdmi <= 'd1;
  end
  else begin
    rff1_p_hdmi <= 'd0;
    rst_hdmi <= rff1_p_hdmi;
  end
end

//	Reset bridge of reset_i in hdmi_clk domain Active LOW
always @(posedge hdmi_clk_o, posedge reset_i)
begin
  if (reset_i) begin
    rff1_hdmi <= 'd0;
    rst_n_hdmi <= 'd0;
  end
  else begin
    rff1_hdmi <= 'd1;
    rst_n_hdmi <= rff1_hdmi;
  end
end

//	Reset bridge of reset_i in pll_clk1 domain Active LOW
always @(posedge pll_clk1, posedge reset_i)
begin
  if (reset_i) begin
    rff1_pll_clk1 <= 'd0;
    rst_n_pll_clk1 <= 'd0;
  end
  else begin
    rff1_pll_clk1 <= 'd1;
    rst_n_pll_clk1 <= rff1_pll_clk1;
  end
end

//	Reset bridge of reset_i in pll_clk2 domain Active LOW
always @(posedge pll_clk2, posedge reset_i)
begin
  if (reset_i) begin
    rff1_pll_clk2 <= 'd0;
    rst_n_pll_clk2 <= 'd0;
  end
  else begin
    rff1_pll_clk2 <= 'd1;
    rst_n_pll_clk2 <= rff1_pll_clk2;
  end
end

//	Reset bridge of reset_i in sclk domain Active LOW
always @(posedge sclk, posedge reset_i)
begin
  if (reset_i) begin
    rff1_150M <= 'd0;
    rst_n_150M <= 'd0;
  end
  else begin
    rff1_150M <= 'd1;
    rst_n_150M <= rff1_150M;
  end
end

wire	[`inst1_CS_WIDTH-1:0]   em_ddr_clk;
wire    [`inst1_CS_WIDTH-1:0]   em_ddr_cke;
wire							init_start;
wire                            mem_rst_n;
wire    [6:0]                   oled;
wire                            err_notify;
wire    [3:0]                   cmd;
wire    [`inst1_ADDR_WIDTH-1:0] addr;
wire                            cmd_valid;
wire    [4:0]                   cmd_burst_cnt;
wire    [`inst1_DSIZE-1:0]      write_data;
wire    [`inst1_USER_DM-1:0]    data_mask;
wire                            cmd_rdy;
wire                            init_done;
wire                            datain_rdy;
reg		[`inst1_DSIZE-1:0]      read_data_rr/* synthesis syn_keep=1 */;
reg		[`inst1_DSIZE-1:0]      read_data_r/* synthesis syn_keep=1 */;
wire    [`inst1_DSIZE-1:0]      read_data;
wire                            read_data_valid;


reg								read_data_valid_rr;
reg								read_data_valid_r;
wire							err_det;
wire    [14:0]                  seg;
reg     [25:0]                  hb_cnt;
reg                             init_done_det;
reg                             cmd_rdy_det;
reg                             datain_rdy_det;
reg                             rd_dat_val_det;
reg     [25:0]                  read_num, write_num;
reg     [22:0]                  data_1_cnt;
reg     [22:0]                  data_0_cnt;


wire	stream_en ;
wire	stream_en_w /* synthesis syn_keep=1 */;
wire	aud_pktend_o;
reg [11:0]	video_columns /* synthesis syn_keep=1 */;
reg [11:0]	blanking_columns /* synthesis syn_keep=1 */;
reg [11:0]	video_lines /* synthesis syn_keep=1 */;
reg [11:0]	blanking_lines /* synthesis syn_keep=1 */;
reg [7:0]	video_line_buffers /* synthesis syn_keep=1 */;
wire [31:0]	ir1_dq;
wire	ir1_fv;
wire	interleaved_en_o;
wire	hdmi_vsync_sclk;
wire	ddr_rd_hold;
wire	uvc_header_en;
wire	ddr_fr_buf_sw;
wire	fx3_clock_out;
reg 	ddr_fr_buf_sw_pll_sclk1/* synthesis syn_keep=1 */;
reg 	ddr_fr_buf_sw_pll_sclk2/* synthesis syn_keep=1 */;
wire 	rd_idx_change_en;
wire 	vsync_fal_clk2;
wire 	vsync_ris_clk2;
reg 	vsync_clk2_r1/* synthesis syn_keep=1 */;
reg 	vsync_clk2_r2/* synthesis syn_keep=1 */;
reg 	vsync_clk2_r3;
reg 	vsync_clk2_r4;
wire	i2s_fifo_rd_en;
wire	video_en_o;
wire	aud_en_o;
wire [31:0] i2s_fifo_data_o;
reg		read_hold_sclk1/* synthesis syn_keep=1 */;
reg		read_hold_sclk2/* synthesis syn_keep=1 */;

wire	slfifo_st_vidrst_o;
reg		slfifo_st_vidrst_sclk1/* synthesis syn_keep=1 */;
reg		slfifo_st_vidrst_sclk2/* synthesis syn_keep=1 */;
wire	slfifo_st_audrst_o;
wire	hdmi_hsync;
wire	hdmi_vsync;
wire [15:0]	slfifo_uvc_buf_size;
reg		hdmi_vsync_r1/* synthesis syn_keep=1 */;
reg 	hdmi_vsync_r2/* synthesis syn_keep=1 */;
reg 	hdmi_de_r1/* synthesis syn_keep=1 */;
reg 	hdmi_de_r2/* synthesis syn_keep=1 */;
wire	hdmi_de_fal;
wire	hdmi_vsync_fal;
wire	hdmi_vsync_ris;
reg interleaved_en_sclk1/* synthesis syn_keep=1 */;
reg interleaved_en_sclk2/* synthesis syn_keep=1 */;
wire [15:0] img_wt_clk2;
wire [31:0] i2s_fifo_data_pre;
wire [15:0] img_ht_clk2;
reg	[7:0]	hdmi_y_r='d0;
reg	[7:0]	hdmi_cbcr_r='d0;
reg		hdmi_de_r/* synthesis syn_keep=1 */;
reg		hdmi_de_rr/* synthesis syn_keep=1 */;
wire 	i2s_fifo_empty_o;
reg [7:0] rst_cnt='d0;

wire [31:0] y_data;
wire [15:0] uv_data;
wire y_data_vld;
wire uv_data_vld;
wire cam_app_en;
wire aud_app_en;
reg cam_app_en_sclk1/* synthesis syn_keep=1 */;
reg cam_app_en_sclk2/* synthesis syn_keep=1 */;
reg [31:0] img_size_r;
wire [31:0] img_size;
wire [33:0] img_size_3;
reg [15:0] img_ht_hdmi_cdc1/* synthesis syn_keep=1 */;
reg [15:0] img_ht_hdmi_cdc2/* synthesis syn_keep=1 */;
reg [15:0] img_ht_hdmi;
reg [15:0] img_ht_sclk_cdc1/* synthesis syn_keep=1 */;
reg [15:0] img_ht_sclk_cdc2/* synthesis syn_keep=1 */;
reg [15:0] img_wt_hdmi_cdc1/* synthesis syn_keep=1 */;
reg [15:0] img_wt_hdmi_cdc2/* synthesis syn_keep=1 */;
reg [15:0] img_wt_hdmi;
reg [15:0] img_wt_sclk_cdc1/* synthesis syn_keep=1 */;
reg [15:0] img_wt_sclk_cdc2/* synthesis syn_keep=1 */;

wire [15:0]	i2s_wr_fifo_cnt;
reg		vsync_r1='d0;
reg		vsync_r2='d0;
reg		vsync_r3='d0;
reg		vsync_r4='d0;
wire	vsync_ris;
reg		yuv_420_en_r='d0;
wire	yuv_420_en;
wire	yuv_420_en_sclk;
reg		yuv_420_en_sclk_r1/* synthesis syn_keep=1 */;
reg		yuv_420_en_sclk_r2/* synthesis syn_keep=1 */;
wire	yuv_420_en_hdmi;
reg		yuv_420_en_hdmi_r1/* synthesis syn_keep=1 */;
reg		yuv_420_en_hdmi_r2/* synthesis syn_keep=1 */;
wire	wr_addr_state_2_clk2/* synthesis syn_keep=1 */;
wire	rd_addr_state_1_clk2/* synthesis syn_keep=1 */;

wire tp_vsync/* synthesis syn_keep=1 */;
wire tp_hsync/* synthesis syn_keep=1 */;
wire [31:0]tp_data/* synthesis syn_keep=1 */;

//	Clock generation PLL
pll_clk 
u_pll_clk
(
	.CLKI(sclk),
	.CLKOP(pll_clk1),
	.CLKOS(pll_clk2)
	);

// CDC between pll_clk2 and hdmi_clk_o, sclk 
always @(posedge hdmi_clk_o) begin
	img_ht_hdmi_cdc1 <= img_ht_clk2;
	img_ht_hdmi_cdc2 <= img_ht_hdmi_cdc1;
	img_wt_hdmi_cdc1 <= img_wt_clk2;
	img_wt_hdmi_cdc2 <= img_wt_hdmi_cdc1;
	if(hdmi_vsync_ris) begin
		img_ht_hdmi <= img_ht_hdmi_cdc2;
		img_wt_hdmi <= img_wt_hdmi_cdc2;
	end
end

always @(posedge sclk) begin
	cam_app_en_sclk1 <= cam_app_en;
	cam_app_en_sclk2 <= cam_app_en_sclk1;
	img_ht_sclk_cdc1 <= img_ht_clk2;
	img_ht_sclk_cdc2 <= img_ht_sclk_cdc1;
	img_wt_sclk_cdc1 <= img_wt_clk2;
	img_wt_sclk_cdc2 <= img_wt_sclk_cdc1;
	interleaved_en_sclk1 <= interleaved_en_o;
	interleaved_en_sclk2 <= interleaved_en_sclk1;
	slfifo_st_vidrst_sclk1 <= slfifo_st_vidrst_o;
	slfifo_st_vidrst_sclk2 <= slfifo_st_vidrst_sclk1;
end

assign img_size_3 = {img_size[31:0],1'b0} + img_size[31:0]; 
always@(posedge pll_clk2) begin
	img_size_r <= yuv_420_en ? img_size_3[33:2] : img_size;
end

always @(posedge hdmi_clk_o) begin
	hdmi_vsync_r1 <= hdmi_vsync;
	hdmi_vsync_r2 <= hdmi_vsync_r1;
	hdmi_de_r1 <= hdmi_de_i;
	hdmi_de_r2 <= hdmi_de_r1;
end
assign	hdmi_de_fal = (!hdmi_de_r1) & (hdmi_de_r2);
assign	hdmi_vsync_fal = (!hdmi_vsync_r1) & (hdmi_vsync_r2);
assign	hdmi_vsync_ris = (hdmi_vsync_r1) & (!hdmi_vsync_r2);

always @(posedge hdmi_clk_o) begin
	hdmi_de_r <= hdmi_de_i;
	hdmi_de_rr <= hdmi_de_r;
end
assign hdmi_hsync = stream_en_w & hdmi_de_rr;
assign hdmi_vsync = !hdmi_vsync_i;

reg [22:0] hdmi_dcnt='d0;
always @(posedge hdmi_clk_o, negedge rst_n_hdmi) begin
	if(!rst_n_hdmi)
		hdmi_dcnt <= 'd0;
	else if(hdmi_vsync_ris)
		hdmi_dcnt <= 'd0;
	else if(hdmi_hsync)
		hdmi_dcnt <= hdmi_dcnt + 'd1;
end

// Clock Buffer for FX3 master clock to GPIF interface output
   OB i_OB_FX_CLOCK ( .I( fx3_clock_out ), .O( fx3_pclk_o ) );
	//ODDRX1F ODDRX1F_pclk ( .D0(1'b1), .D1(1'b0), .SCLK(pll_clk2), .RST(1'b0), .Q(fx3_pclk_o) );

//=============================================================================
// User Refresh assertion when EXT_AUTO_REF is defined
//=============================================================================
`ifdef EXT_AUTO_REF
 reg        req_pending;
 reg        ext_auto_ref;
 wire       ext_auto_ref_ack;
 
 always@(posedge sclk or negedge rst_n_150M) begin
    if (rst_n_150M == 1'b0) begin
        ext_auto_ref    <= 1'b0;
        req_pending     <= 1'b0;
    end
    else begin
        if (hb_cnt[12] && !req_pending) begin
            ext_auto_ref    <= 1'b1;
            req_pending     <= 1'b1;
        end
        else if (ext_auto_ref_ack)
            ext_auto_ref    <= 1'b0;
        
        if (!hb_cnt[12])
            req_pending     <= 1'b0;
    end
 end
`endif

always @(posedge pll_clk2)
	if(!(rst_cnt[7]))
		rst_cnt <= rst_cnt + 'd1;
always @(posedge pll_clk2) begin
	vsync_r1 <= hdmi_vsync;
	vsync_r2 <= vsync_r1;
	vsync_r3 <= vsync_r2;
	vsync_r4 <= vsync_r3;
end
assign vsync_ris = vsync_r4 & (!vsync_r3);

always @(posedge pll_clk2) begin
	if(vsync_ris_clk2)
		yuv_420_en_r <= yuv_420_en;
end
always @(posedge sclk) begin
	yuv_420_en_sclk_r1 <= yuv_420_en_r;
	yuv_420_en_sclk_r2 <= yuv_420_en_sclk_r1;
end
always @(posedge hdmi_clk_o) begin
	yuv_420_en_hdmi_r1 <= yuv_420_en_r;
	yuv_420_en_hdmi_r2 <= yuv_420_en_hdmi_r1;
end
always @(posedge sclk) begin
	ddr_fr_buf_sw_pll_sclk1 <= ddr_fr_buf_sw;
	ddr_fr_buf_sw_pll_sclk2 <= ddr_fr_buf_sw_pll_sclk1;
end

assign	yuv_420_en_hdmi = yuv_420_en_hdmi_r2;

assign yuv_420_en_sclk = yuv_420_en_sclk_r2;

always @(posedge pll_clk2) begin
	vsync_clk2_r1 <= hdmi_vsync;
	vsync_clk2_r2 <= vsync_clk2_r1;
	vsync_clk2_r3 <= vsync_clk2_r2;
	vsync_clk2_r4 <= vsync_clk2_r3;
end
assign vsync_fal_clk2 = (!vsync_clk2_r3) & vsync_clk2_r4;
assign vsync_ris_clk2 = (vsync_clk2_r3) & (!vsync_clk2_r4);

always @(posedge sclk)begin
	read_data_r <= read_data;
	read_data_rr <= read_data_r;
	read_data_valid_r <= read_data_valid;
	read_data_valid_rr <= read_data_valid_r;
end

//	y_uv_splitter module -
//		It separates the Y, UV data from the overall video data
y_uv_splitter
yuv_splitter
(
	.clk(hdmi_clk_o),
	.rst(rst_hdmi),		//	Active High reset
	.data_y_in({hdmi_din_ddr[23:16],hdmi_din_ddr[7:0]}),	//	Input data in format [Y2,Y1]
	.data_cbcr_in({hdmi_din_ddr[31:24],hdmi_din_ddr[15:8]}),	//	Input data in format [V,U]
	.data_vld_i(hdmi_hsync),	//	Data valid signal
	.frame_start_i(hdmi_vsync_ris),	// frame start indicator flag
	.frame_end_i(hdmi_vsync_fal),	// frame end indicator flag
	.line_cnt_i(img_ht_hdmi),	//	Number of lines in a frame
	.pix_cnt_i(img_wt_hdmi),	//	Number of pixels in a line
	.y_dout_o(y_data),		// Output Y data
	.y_vld_o(y_data_vld),	// Corresponding output Y valid
	.uv_dout_o(uv_data),	// Output UV data
	.uv_vld_o(uv_data_vld)	// Corresponding output UV valid
);

//	I2S receiver module - 
//		Deserializes the I2S data received. Maintains 2 buffers to store the audio data alternatively.
i2s_rx_mod
i2s_rx_mod
(
	.clk_i(pll_clk2),
	.rstn_i(aud_app_en/*rst_n_pll_clk2*/), // Active LOW Reset

	// interface inputs
	.sd_i(i2s_d0_i),	// I2S input data line
	.sck_i(i2s_sclk_i), // I2S input clock line
	.lrclk_i(i2s_ws_i),	// I2S input Word Select

	// Control signals
	.vsync_fal_i(vsync_fal_clk2),
	.vsync_ris_i(vsync_ris_clk2),
	.i2s_fifo_rd_en_i(i2s_fifo_rd_en),
	.i2s_fifo_data_o(i2s_fifo_data_o),
	.i2s_fifo_data_pre(i2s_fifo_data_pre),
	.i2s_fifo_empty_o(i2s_fifo_empty_o),
	.i2s_fifo_almostempty_o(i2s_fifo_almostempty_o),
	.aud_pktend_i(aud_pktend_o),	//	Indicates audio data's packetend in GPIF interface
	.wr_fifo_cnt_o(i2s_wr_fifo_cnt)
	);
	
always @(posedge sclk) begin
	read_hold_sclk1 <= ddr_rd_hold;
	read_hold_sclk2 <= read_hold_sclk1;
end

// ==============================================================================
// DDR frame buffer instantiation
// ==============================================================================
reg [31:0] dup_wr_data_r='d0;
reg [31:0] ddr_wr_data_r='d0;
reg ddr_wr_data_vld_r='d0;
always @(posedge hdmi_clk_o) begin
	if(hdmi_vsync_ris)
		dup_wr_data_r <= 'd0;
	else if(ddr_wr_data_vld_r)
		dup_wr_data_r <= dup_wr_data_r + 'd1;
	ddr_wr_data_r <= yuv_420_en_hdmi ? y_data : {hdmi_din_ddr[23:16],hdmi_din_ddr[31:24],hdmi_din_ddr[7:0],hdmi_din_ddr[15:8]};
	ddr_wr_data_vld_r <= yuv_420_en_hdmi ? y_data_vld : hdmi_hsync;
end

//	Frame Buffer Handler Module -
//		Controls the Frame write and read in the DDR. Controls the yuv422-yuv420 conversion. Controls the Interlaced to progressive conversion.
frame_buf_handler frame_buffer_handler (
	//------- inputs ----------------
    .sclk(sclk),
    .reset_n(rst_n_150M),
    .reset_n_hdmi(rst_n_hdmi),
    .reset_ddr_n(reset_ddr_n),
    .init_done(init_done),
    .cmd_rdy(cmd_rdy),
    .datain_rdy(datain_rdy),
    .read_data(read_data_rr),	// Data read from the RAM
    .read_data_valid(read_data_valid_rr),	// Data read valid from the RAM
    .ddr_rd_hold(read_hold_sclk2),	// Flag to hold the read
    .ddr_fr_buf_sw(ddr_fr_buf_sw_pll_sclk2), 
    .vsync_sclk(hdmi_vsync_sclk),
    .vsync_hdmi(hdmi_vsync),
    .hsync_i(ddr_wr_data_vld_r),
    .vid_data_i(ddr_wr_data_r),
    .hdmi_clk_i(hdmi_clk_o),
	.y_data_i(y_data),
	.y_vld_i(y_data_vld),
	.uv_data_i(uv_data),
	.uv_vld_i(uv_data_vld),
	.yuv_420_en_hdmi(yuv_420_en_hdmi),
	.yuv_420_en_sclk(yuv_420_en_sclk),
	.img_size(img_size),
	.img_ht_sclk(img_ht_sclk_cdc2),
	.img_wt_sclk(img_wt_sclk_cdc2),
	.interleaved_en(interleaved_en_sclk2),
	.slfifo_st_vidrst(slfifo_st_vidrst_sclk2),
	.cam_app_en(cam_app_en_sclk2),
	//------- outputs ----------------
	.cmd                    (cmd),	// Command to the DDR controller
    .cmd_valid              (cmd_valid),	// Command valid
    .addr                   (addr),	// Address to write or read
    .cmd_burst_cnt          (cmd_burst_cnt),	// Command burst count
    .write_data             (write_data),	// Data to write in the RAM
    .init_start             (init_start),
    .mem_rst_n              (mem_rst_n),
    .data_mask              (data_mask),
    .otf_bl_sel             (ofly_burst_len),
    .stream_en_o                (stream_en)
    );

Signal_CrossDomain i_stream_en_pll_clk1_sync(
     .clkA(sclk) 
    ,.SignalIn_clkA(stream_en)
    ,.clkB(hdmi_clk_o)
    ,.SignalOut_clkB(stream_en_w)
   );
Signal_CrossDomain i_ir1_fv_sclk_sync(
     .clkA(hdmi_clk_o) 
    ,.SignalIn_clkA(hdmi_vsync)
    ,.clkB(sclk)
    ,.SignalOut_clkB(hdmi_vsync_sclk)
   );

// ==============================================================================
// DDR3 IP core instantiation
// ==============================================================================   
ddr_ip u_ddr3_sdram_mem_top (
    .ddr3_ip_inst_clk_in                 (clk_in), 
    .ddr3_ip_inst_rst_n                  (reset_ddr_n),
    .ddr3_ip_inst_mem_rst_n              (mem_rst_n),
    .ddr3_ip_inst_cmd                    (cmd), 
    .ddr3_ip_inst_addr                   (addr), 
    .ddr3_ip_inst_cmd_valid              (cmd_valid),
    .ddr3_ip_inst_ofly_burst_len         (ofly_burst_len),
    .ddr3_ip_inst_cmd_burst_cnt          (cmd_burst_cnt), 
    .ddr3_ip_inst_init_start             (init_start), 
    .ddr3_ip_inst_write_data             (write_data), 
    .ddr3_ip_inst_data_mask              (data_mask), 
    .ddr3_ip_inst_cmd_rdy                (cmd_rdy), 
    .ddr3_ip_inst_init_done              (init_done), 
    .ddr3_ip_inst_datain_rdy             (datain_rdy),
    .ddr3_ip_inst_wl_err                 (wl_err),
    .ddr3_ip_inst_clocking_good          (clocking_good),
  `ifdef EXT_AUTO_REF
    .ext_auto_ref           (ext_auto_ref),
    .ext_auto_ref_ack       (ext_auto_ref_ack),
  `endif 
    .ddr3_ip_inst_read_data              (read_data), 
    .ddr3_ip_inst_read_data_valid        (read_data_valid),
    .ddr3_ip_inst_em_ddr_data            (em_ddr_data), 
    .ddr3_ip_inst_em_ddr_dqs             (em_ddr_dqs), 
    .ddr3_ip_inst_em_ddr_clk             (em_ddr_clk), 
    .ddr3_ip_inst_em_ddr_reset_n         (em_ddr_reset_n),
    .ddr3_ip_inst_em_ddr_cke             (em_ddr_cke), 
    .ddr3_ip_inst_em_ddr_ras_n           (em_ddr_ras_n), 
    .ddr3_ip_inst_em_ddr_cas_n           (em_ddr_cas_n), 
    .ddr3_ip_inst_em_ddr_we_n            (em_ddr_we_n), 
    .ddr3_ip_inst_em_ddr_cs_n            (em_ddr_cs_n),
    .ddr3_ip_inst_em_ddr_odt             (em_ddr_odt),
    .ddr3_ip_inst_em_ddr_dm              (em_ddr_dm), 
    .ddr3_ip_inst_em_ddr_ba              (em_ddr_ba), 
    .ddr3_ip_inst_em_ddr_addr            (em_ddr_addr),
    .ddr3_ip_inst_sclk_out               (sclk)
);

assign speed  =  read_num[22];

gpif_interface_mod
#(
	.FX3_BITS(`DATA_WIDTH_OUT)
	)
	GPIF_interface
    (
		.reset_n_i(rst_n_pll_clk2) //	Input Reset Active Low
	  , .fx3_interface_clock_i(pll_clk2) // FX3 interface clock
      , .read_data(read_data_rr)
	  , .read_data_valid(read_data_valid_rr)
	  , .sclk(sclk)
	  , .ddr_rd_hold(ddr_rd_hold)
	  , .ddr_fr_buf_sw(ddr_fr_buf_sw)
	  
	  //	FX3 interface
	  , .fx3_pclk_o(fx3_clock_out) // GPIF Clock out signal
	  , .fx3_dq_o(fx3_pd_o[31:0] ) // GPIF data
	  , .fx3_chip_select_o(fx3_slcs_ctl0_o) // CHIP SELECT
	  , .fx3_slave_write_enable_o( fx3_slwr_ctl1_o) // SLAVE WRITE
	  , .fx3_reset_i(!reset_i) // Reset pin, active low
	  , .fx3_water_mark_i(fx3_flaga_ctl4_i) // Watermark
	  , .fx3_dma_ready_i(fx3_flagb_ctl5_i) // DMA ready
	  , .fx3_packed_end_o(fx3_pktend_ctl7_o) // Packet end 
	  , .fx3_address1_o(fx3_sladdr1_ctl11_o) // Socket Addr 1
	  , .fx3_address0_o(fx3_sladdr0_ctl12_o) // Socket Addr 0
	  
	  , .i2s_fifo_almostempty_i(i2s_fifo_almostempty_o)
	  , .i2s_fifo_empty_i(i2s_fifo_empty_o)
	  , .i2s_rd_en_o(i2s_fifo_rd_en)
	  , .i2s_fifo_data_i(i2s_fifo_data_o)
	  , .i2s_fifo_data_pre(i2s_fifo_data_pre)
	  , .video_en_o(video_en_o)
	  , .aud_en_o(aud_en_o)
	  , .aud_pktend_o(aud_pktend_o)
	  , .slfifo_st_vidrst_o(slfifo_st_vidrst_o)
	  , .slfifo_st_audrst_o(slfifo_st_audrst_o)
	  , .cam_app_en(cam_app_en)
	  , .aud_app_en(aud_app_en)
	  , .img_size(img_size_r)
	  , .uvc_header_en(uvc_header_en)
	  , .slfifo_uvc_buf_size(slfifo_uvc_buf_size)
	  , .i2s_wr_fifo_cnt_i(i2s_wr_fifo_cnt)
	  );
	  
//	I2C Slave module
i2c_slave
fx3_i2c_slave_if
(
	//	Interface Inouts
	.sl_sda_io(fx3_i2c_sda_io)	// I2C SDA input
	, .sl_scl_io(fx3_i2c_scl_io)// I2C SCL input
	
	//	Global Inputs
	, .reset_n_i(rst_n_pll_clk2)
	//, .reset_n_i(rst_cnt[7])
	, .clock_i(pll_clk2)
	
	//	Control Signals
	, .aud_en_o(aud_en_o)	//	Audio enable
	, .video_en_o(video_en_o)//	Video enable
	, .slfifo_st_vidrst_o(slfifo_st_vidrst_o) // video channel reset
	, .slfifo_st_audrst_o(slfifo_st_audrst_o) // audio channel reset
	, .yuv_420_en(yuv_420_en)	// YUV_420 Conversion enable
	, .img_wt_o(img_wt_clk2)	// Number of pixels in a line
	, .img_ht_o(img_ht_clk2)	// Number of lines ina  frame
	, .img_size_o(img_size)		// Number of pixels in a frame
	, .interleaved_en_o(interleaved_en_o) // Interlaced Conversion enable
	, .cam_app_en_o(cam_app_en)	// Video Streaming Applicaton enable
	, .aud_app_en_o(aud_app_en)	// Audio Applicaton enable
	, .uvc_header_en_o(uvc_header_en)	// UVC header padding Enable flag
	, .slfifo_uvc_buf_size_o(slfifo_uvc_buf_size) // Number of byte in a buffer in FX3
);

endmodule
