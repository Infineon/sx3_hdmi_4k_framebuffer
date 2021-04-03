//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
// 
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		HDMI RX 
// Module Name:		frame_buf_handler
// Target Devices:	LFE5U-45F-8BG381I
// Tool Versions:	
// Description: The Frame Buffer handler module will generate the write and read commands to store frames and read frame data from the RAM respectively. It also converts the Interlaced image data to Progressive by reading the same line twice during the read opearion when the Interlaced to progressive conversion is enabled.
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

module frame_buf_handler 
(
	//------- inputs ----------------
    input 					sclk,
    input 					reset_n,
    input 					reset_n_hdmi,
    input 					reset_ddr_n,
    input 					init_done,
    input 					cmd_rdy,
    input 					datain_rdy,
    input [`inst1_DSIZE-1:0]read_data,
    input 					read_data_valid,
    input 					ddr_rd_hold,
    input 					ddr_fr_buf_sw,
	input 					vsync_sclk,
	input 					vsync_hdmi,
	input 					hsync_i,
	input [31:0]			vid_data_i,
	input 					hdmi_clk_i,
	input [31:0]			y_data_i,
	input 					y_vld_i,
	input [15:0]			uv_data_i,
	input 					uv_vld_i,
	input 					yuv_420_en_hdmi,
	input 					yuv_420_en_sclk,
	input [31:0]			img_size,
	input [15:0]			img_ht_sclk,
	input [15:0]			img_wt_sclk,
	input					interleaved_en,
	input					slfifo_st_vidrst,
	input					cam_app_en,
	//------- outputs ----------------
	output 						stream_en_o,
    output reg [3:0]			cmd,
    output reg 					cmd_valid,
    output reg [`inst1_ADDR_WIDTH-1:0]addr,
    output reg [4:0]			cmd_burst_cnt,
    output [`inst1_DSIZE-1:0]	write_data,
    output reg 					init_start,
    output reg 					mem_rst_n='d0,
    output [`inst1_DSIZE / 8-1:0]data_mask,
    output reg 					otf_bl_sel
    );

reg [19:0]	wr_cnt_y='d0;
reg [26:0]	wr_cnt='d0;
reg [26:0]	rd_cnt='d0;
reg 		uv_ddr_wr_f='d0;
wire [63:0]	cam_dout;
wire 		cam_empty;
wire 		cam_full;
wire 		cam_WrEn;
wire [31:0]	cam_WrData;
wire [10:0]	cam_rcnt;
wire 		cam_rd_en;
wire [1:0]	mr0_bl;           
reg [15:0]	init_cnt;
reg			init_srvcd;
reg         rst_srvcd;
reg         init_start_hit;
reg         init_start_hit_1;
reg         stream_en_r;
reg 		Reset_fifo;
reg 		RPReset;
reg [3:0]	cmdgen;
reg [`inst1_ADDR_WIDTH-1:0]   addr_rd_r /* synthesis syn_multstyle="logic" */;
reg [`inst1_ADDR_WIDTH-1:0]   addr_rd /* synthesis syn_multstyle="logic" */;
reg [`inst1_ADDR_WIDTH-1:0]   addr_wr_r /* synthesis syn_multstyle="logic" */;
reg [`inst1_ADDR_WIDTH-1:0]   addr_wr /* synthesis syn_multstyle="logic" */;
reg [`inst1_ADDR_WIDTH-1:0]   addr_wr_uv /* synthesis syn_multstyle="logic" */;
reg [8:0]   addr_interval /* synthesis syn_multstyle="logic" */;
reg [8:0]   addr_interval_r /* synthesis syn_multstyle="logic" */;
reg [1:0]   Bl_Mode /* synthesis syn_useioff = 0 */;
reg 		CmdBurst_En /* synthesis syn_useioff = 0 */;
reg         clr_cmd_cnt;
wire [4:0]  SnglCmdCnt;
wire [4:0]  CmdBrstCnt;
reg [4:0]   sngl_cmd_cnt;
wire [`inst1_ADDR_WIDTH-1:0]   curr_addr_wr;
wire [`inst1_ADDR_WIDTH-1:0]   curr_addr_rd;
wire        cmd_gone;
reg 		fv_r/* synthesis syn_keep=1 */;
reg 		fv_rr/* synthesis syn_keep=1 */;
wire 		fv_rise;
reg 		fv_rise_sclk;
wire 		fv_fall;
reg 		fv_fall_r;
reg [31:0]	fv_hdmi_r;
reg 		fv_fall_sclk;
reg 		frame_wr_completed;
reg 		frame_rd_completed;
reg			ddr_rd_enable;
reg 		wr_frame_buf;
reg 		rd_frame_buf;
reg 		ddr_rd_valid;
reg 		grab_frame;
reg [1:0]	wr_addr_st;
reg [1:0]	rd_addr_st;
reg 		yuv_420_en_sclk_r='d0;
wire [8:0]	uv_fifo_rcnt;
wire [15:0] uv_fifo_wrdata;
wire [63:0] uv_fifo_dout;
wire 		uv_fifo_empty;
wire 		uv_fifo_almostempty;
wire 		uv_fifo_full;
wire 		uv_fifo_wren;
wire 		uv_fifo_rd_en;
reg [31:0]	img_size_sclk_r1/* synthesis syn_keep=1 */;
reg [31:0]	img_size_sclk_r2/* synthesis syn_keep=1 */;
reg [31:0]	img_size_sclk='d0;
wire    [15:0]              mr0_init        =   { `inst1_MRS0_INIT };
wire    [15:0]              mr1_init        =   { `inst1_MRS1_INIT };
wire    [15:0]              mr2_init        =   { `inst1_MRS2_INIT };
wire    [15:0]              mr3_init        =   { `inst1_MRS3_INIT };
wire    [15:0]              mr0_data        =   {mr0_init[15:9],1'b0,mr0_init[7:2],mr0_bl}; // User BL setting & disable DLL reset
wire    [15:0]              mr1_data        =   mr1_init;
wire    [15:0]              mr2_data        =   mr2_init;
wire    [15:0]              mr3_data        =   mr3_init;
parameter [`inst1_ADDR_WIDTH-1:0]frame_buf_st_addr1 = 27'h1000000;
parameter [`inst1_ADDR_WIDTH-1:0]frame_buf_st_addr_uv1 = 27'h1900000;
parameter [`inst1_ADDR_WIDTH-1:0]frame_buf_st_addr2 = 27'h2000000;
parameter [`inst1_ADDR_WIDTH-1:0]frame_buf_st_addr_uv2 = 27'h2900000;
parameter [31:0]	fv_end_data = 32'hFF00FF00;
parameter [1:0]		Bl_Mode_p = 3;	//  Bl_Mode[1]: 1 = Fixed, 0 = OTP
								//  Bl_Mode[0]: 1 = BL8,   0 = BC4
								//  [11]:   BL8 Fixed
								//  [10]:   BC4 Fixed
								//  [01]:   OTP BL8
								//  [00]:   OTP BC4
assign  CmdBurst_En_p   = 0;
assign  mr0_bl      = (Bl_Mode_p == 2'b11)  ?   2'b00   :   // BL8 Fixed
				  (Bl_Mode_p == 2'b10)  ?   2'b10   :   // BC4 Fixed
											2'b01   ;   // OTP BL8/BC4

// write & read address state defines
`define		FRAME_ST_WR	0
`define		ST_ADDR_WR	1
`define		FRAME_END_DT	2
`define		GRAB_FRAME_DT	0
`define		GRAB_FRAME_END	1
`define		NEXT_FRAME_ST	2

// state assignments & defines
`define     IDLE_ST         0
`define     FRAME_ST        1
`define     CONF_MR0        2
`define     CONF_MR1        3
`define     CONF_MR2        4
`define     CONF_MR3        5
`define     WRITE_CMD       6
`define     READ_CMD        7
`define     WAIT_ST         8

wire		magic_byte_en;
wire		data_wr_done;
wire 		fv_rise_long;
reg 		datain_rdy_r1/* synthesis syn_keep=1 */;
reg 		datain_rdy_r2/* synthesis syn_keep=1 */;
wire 		ddr_wr_data_idx;
reg [7:0]	wr_c_r='d0;
reg [7:0]	rd_c_r='d0;
wire 		rd_ris;
wire 		wr_ris;
reg [7:0]	uv_data_r='d0;
reg 		uv_vld_r='d0;
reg [31:0]	fv_sclk_r='d0;
reg [15:0]	wr_frm_cnt_r='d0;
reg [15:0]	rd_frm_cnt_r='d0;

reg 		int_line_read='d0;
reg [12:0]	interleaved_addr='d0;
localparam INTERLEAVE_WT='d1904;
reg [15:0]	img_wt_addr_int='d0;
reg [15:0]	img_wt_addr_int2='d0;
reg [15:0]	rd_next_st_cnt='d0;

//	Generate posedge and negedge of the frame_wr_completed and frame_rd_completed
always @(posedge sclk) begin
	wr_c_r <= {wr_c_r[6:0],frame_wr_completed};
	rd_c_r <= {rd_c_r[6:0],frame_rd_completed};
end
assign wr_ris = frame_wr_completed;
//assign wr_ris = wr_c_r[0] & (!wr_c_r[3]);
assign rd_ris = rd_c_r[0] & (!rd_c_r[3]);

always @(posedge sclk) begin
	img_size_sclk_r1 <= img_size;
	img_size_sclk_r2 <= img_size_sclk_r1;
end

// Init_start generation
// - wait for +200us for memory reset requirement
always@(posedge sclk or negedge reset_ddr_n) begin
    if (reset_ddr_n == 1'b0) begin
        init_cnt        <=  16'h0;
        init_srvcd      <=  1'b0;
        init_start_hit  <=  1'b0;
        rst_srvcd       <=  1'b0;
        init_start_hit_1    <=  1'b0;
    end
    else begin
        init_cnt    <=  init_cnt + 1;
        if (init_cnt[7] == 1'b1) begin                      // takes the first hit
            rst_srvcd   <=  1'b1;
            if (!rst_srvcd)
                init_start_hit  <=  1'b1;
            else
                init_start_hit  <=  1'b0;
        end

        if (init_cnt[15] && init_cnt[13] && rst_srvcd == 1'b1)  begin
                                                            // takes the second hit after 200 us
            init_srvcd  <=  1'b1;
            if (!init_srvcd)
                init_start_hit_1    <=  1'b1;
            else
                init_start_hit_1    <=  1'b0;
        end
    end
end
	reg     [`inst1_ADDR_WIDTH-1:0]   addr_wr_uv_r /* synthesis syn_multstyle="logic" */;

always @ (posedge sclk)
	addr_wr_uv_r <= addr_wr_uv;

always @(posedge sclk or negedge reset_ddr_n) begin
    if (reset_ddr_n == 1'b0) begin
        init_start      <=  1'b0;
        mem_rst_n   <=  1'b0;
        stream_en_r   <=  1'b0;
        RPReset   <=  1'b1;
        Reset_fifo   <=  1'b1;
    end
    else begin
		RPReset   <=  wr_ris;
		Reset_fifo   <=  wr_ris;
        if (init_done) begin
            init_start      <=  1'b0;
            stream_en_r      <=  1'b1;
			//RPReset   <=  'd0;
        end
		else if (init_start_hit) begin
            mem_rst_n   <=  1'b0;
        end
        else if (init_start_hit_1) begin
            mem_rst_n   <=  1'b1;
            init_start      <=  1'b1;
        end
    end
end
assign stream_en_o = stream_en_r;

//	Cam_in FIFO -
//		Used as a buffer for video data before the RAm write.
//		Performs the Clock doamin crossing from the HDMI clock to DDR clock(sclk).
//		Stores the video data if yuv422-420 conversion is disabled. Stores Y data when yuv422-420 conversion is enabled.
cam_in_fifo 
cam_fifo_inst
(
	.Data(cam_WrData), 
	.Q(cam_dout), 
	.RCNT(cam_rcnt), 
	.Empty(cam_empty), 
	.Full(cam_full), 
	.RPReset(RPReset), 
	.RdClock(sclk), 
	.RdEn(cam_rd_en), 
	.Reset(Reset_fifo), 
	.WrClock(hdmi_clk_i), 
	.WrEn(cam_WrEn)
);

assign cam_WrData = (!hsync_i)? fv_end_data[31:0] : vid_data_i;
assign cam_WrEn = hsync_i || ((!yuv_420_en_hdmi)&magic_byte_en);
assign cam_rd_en = datain_rdy & (!ddr_wr_data_idx);

//	hdmi_uv FIFO -
//		Performs the Clock doamin crossing from the HDMI clock to DDR clock(sclk).
//		Stores UV data when yuv422-420 conversion is enabled.
hdmi_uv_fifo
hdmi_uv_fifo_mod
(
	.Data(uv_fifo_wrdata), 
	.Q(uv_fifo_dout), 
	.RCNT(uv_fifo_rcnt), 
	.Empty(uv_fifo_empty), 
	.AlmostEmpty(uv_fifo_almostempty), 
	.Full(uv_fifo_full), 
	.RPReset(RPReset), 
	.RdClock(sclk), 
	.RdEn(uv_fifo_rd_en), 
	.Reset(Reset_fifo), 
	.WrClock(hdmi_clk_i), 
	.WrEn(uv_fifo_wren)
);
assign uv_fifo_wrdata = vsync_hdmi ? uv_data_i : fv_end_data[15:0];
assign uv_fifo_wren = (uv_vld_i || magic_byte_en) & yuv_420_en_hdmi;
assign uv_fifo_rd_en = ddr_wr_data_idx & datain_rdy;
assign write_data = ddr_wr_data_idx ? uv_fifo_dout : cam_dout;

// frame vaild rise and fall edge detecttion
always@(posedge hdmi_clk_i or negedge reset_n_hdmi)begin
	if(!reset_n_hdmi)begin
		fv_hdmi_r <= 32'd0;
	end
	else begin
		fv_hdmi_r <= {fv_hdmi_r[30:0],vsync_hdmi};
	end
end
assign magic_byte_en = (!fv_hdmi_r[0]) & (fv_hdmi_r[11]);
assign fv_rise_long = (fv_hdmi_r[0]) & (!fv_hdmi_r[15]);

always@(posedge sclk or negedge reset_n)begin
	if(!reset_n)begin
		fv_r <= 1'd0;
		fv_rr <= 1'd0;
		fv_sclk_r <= 'd0;
	end
	else begin
		fv_sclk_r <= {fv_sclk_r[30:0],vsync_sclk};
		fv_r <= vsync_sclk;
		fv_rr <= fv_r;
	end
end
assign fv_rise = (fv_r) & (!fv_rr);
assign fv_fall = (!fv_r) & (fv_rr);

//	Latch image_size at each frame start
always @(posedge sclk) begin
	if(fv_rise)
		img_size_sclk <= {1'b0,img_size_sclk_r2[31:1]};
end

assign  cmd_gone    =   cmd_rdy && cmd_valid;

assign  wr_done =   (cmdgen == `WRITE_CMD) && cmd_gone;
assign  rd_done =   (cmdgen == `READ_CMD)  && cmd_gone;

//	Address interval
always @(posedge sclk or negedge reset_n) begin
    if (reset_n == 1'b0) begin
		addr_interval   <=  0 ;
	end
	else begin
		if (Bl_Mode[0]) begin
            if (CmdBrstCnt == 5'b00000)
                addr_interval   <=  256 ;
            else
                addr_interval   <=  CmdBrstCnt * 8 ;
        end
        else begin
            if (CmdBrstCnt == 5'b00000)
                addr_interval   <=  128 ;
            else
                addr_interval   <=  CmdBrstCnt * 4 ;
        end
	end
end

//	RAM Read Enable generation
always @(posedge sclk or negedge reset_n) begin
	if(!reset_n) begin
		ddr_rd_enable <= 'd0;
	end
	else if(ddr_rd_valid) begin
		if((rd_frame_buf==wr_frame_buf))
			ddr_rd_enable <= (addr_rd < addr_wr - (addr_interval * 3))&&(addr_wr > (addr_interval * 3));
		else
			ddr_rd_enable <= 'd1;
	end
	else
		ddr_rd_enable <= 'd0;
end
reg wr_init_r='d0;
//	Write address generator
always @(posedge sclk or negedge reset_n) begin
    if (reset_n == 1'b0) begin   
        addr_wr         <=  {`inst1_ADDR_WIDTH{1'b0}};
        addr_wr_uv		<=  {`inst1_ADDR_WIDTH{1'b0}};
        wr_frame_buf    <=  0 ;
        grab_frame      <=  0 ;
		wr_addr_st		<=  `FRAME_ST_WR;
		wr_frm_cnt_r	<= 0;
		wr_init_r		<= 0;
    end
	else begin 
		case(wr_addr_st)
			`FRAME_ST_WR : begin
				if(fv_rise)
					wr_addr_st		<=  `ST_ADDR_WR;
				else
					wr_addr_st		<=  `FRAME_ST_WR;
			end
			`ST_ADDR_WR : begin
				wr_init_r <= 'd1;
				if(ddr_rd_valid)
					if(rd_frame_buf)begin
						addr_wr			<= frame_buf_st_addr1;
						addr_wr_uv		<= frame_buf_st_addr1 + img_size_sclk;
						wr_frame_buf    <=  0 ;
					end
					else begin
						wr_frame_buf    <=  1 ;
						addr_wr			<= frame_buf_st_addr2;
						addr_wr_uv		<= frame_buf_st_addr2 + img_size_sclk;
					end
				else 		
					if(wr_frame_buf||(!wr_init_r))begin
						addr_wr			<= frame_buf_st_addr1;
						addr_wr_uv		<= frame_buf_st_addr1 + img_size_sclk;
						wr_frame_buf    <=  0 ;
					end
					else begin
						wr_frame_buf    <=  1 ;
						addr_wr			<= frame_buf_st_addr2;
						addr_wr_uv		<= frame_buf_st_addr2 + img_size_sclk;
					end
				grab_frame      <=  1 ;
				wr_addr_st		<=  `FRAME_END_DT;
				wr_frm_cnt_r <= wr_frm_cnt_r + 'd1;
			end
			`FRAME_END_DT : begin
				if(frame_wr_completed)begin
					addr_wr <= 27'h7000000;
					addr_wr_uv <= 27'h7000000;
					wr_addr_st		<=  `FRAME_ST_WR;
				end
				if (wr_done) begin
					if(uv_ddr_wr_f)
						addr_wr_uv	<=  addr_wr_uv + addr_interval;     
					else
						addr_wr		<=  addr_wr + addr_interval;     
					wr_addr_st		<=  `FRAME_END_DT;
				end
			end
		endcase
	end
end

always @(posedge sclk) begin
	img_wt_addr_int <= ('d1912);
	img_wt_addr_int2 <= ('d1912);
end
reg interleaved_addr_f_r='d0;
always@ (posedge sclk)
	interleaved_addr_f_r <= (interleaved_addr==INTERLEAVE_WT);
//	Read address generator
always @(posedge sclk or negedge reset_n) begin
    if (reset_n == 1'b0) begin
		addr_rd         <=  {`inst1_ADDR_WIDTH{1'b0}};
		rd_frame_buf    <=  0 ;
		ddr_rd_valid    <=  0 ;
		rd_frm_cnt_r    <=  0 ;
		interleaved_addr <=  0 ;
		int_line_read <=  0 ;
		rd_addr_st		<=	`GRAB_FRAME_DT ;
	end
	else if(slfifo_st_vidrst||(!cam_app_en))begin 
		rd_addr_st		<=	`GRAB_FRAME_DT ;
		ddr_rd_valid <= 0;
	end
	else begin 
		case(rd_addr_st)
			`GRAB_FRAME_DT : begin
				if(grab_frame & (rd_frm_cnt_r!=wr_frm_cnt_r))begin
					rd_frm_cnt_r <= wr_frm_cnt_r;
					if(wr_frame_buf)begin
						addr_rd			<= frame_buf_st_addr2;
						rd_frame_buf    <=  1 ;
					end
					else begin
						addr_rd			<= frame_buf_st_addr1;
						rd_frame_buf    <=  0 ;
					end
					ddr_rd_valid    <=  1 ;
					rd_addr_st		<=  `GRAB_FRAME_END;
				end
				else
					rd_addr_st		<=  `GRAB_FRAME_DT;
				interleaved_addr <= 'd0;
				int_line_read <= 'd0;
			end
			`GRAB_FRAME_END : begin
				if(frame_rd_completed)begin
					rd_addr_st		<=  `NEXT_FRAME_ST;
					ddr_rd_valid <= 0;
				end
				if (rd_done) begin
					if(interleaved_en) begin
						if(interleaved_addr_f_r) begin
						//if(interleaved_addr==INTERLEAVE_WT) begin
							interleaved_addr <= 'd0;
							if(!int_line_read)
								addr_rd <= addr_rd - INTERLEAVE_WT;
							else
								addr_rd <= addr_rd + addr_interval;
							int_line_read <= !int_line_read;
						end
						else begin
							interleaved_addr     <=  interleaved_addr + addr_interval;
							addr_rd     <=  addr_rd + addr_interval;
						end
					end
					else
						addr_rd     <=  addr_rd + addr_interval;
					rd_addr_st		<=  `GRAB_FRAME_END;
				end	
			end
			`NEXT_FRAME_ST : begin
				if(!ddr_fr_buf_sw)
					rd_addr_st		<=  `GRAB_FRAME_DT;
				else
					rd_addr_st		<=  `NEXT_FRAME_ST;
			end
		endcase
	end
end

always@(posedge  sclk)
	if(rd_addr_st==`NEXT_FRAME_ST)
		rd_next_st_cnt <= rd_next_st_cnt + 'd1;
	else
		rd_next_st_cnt <= 'd0;

always@(posedge sclk)begin
	addr_wr_r <= addr_wr;
	addr_rd_r <= addr_rd;
	addr_interval_r <= addr_interval;
	frame_wr_completed	<= yuv_420_en_sclk ? ((!(vsync_sclk||fv_sclk_r[30]))&&(uv_fifo_empty)) : ((!(vsync_sclk||fv_sclk_r[30]))&&(cam_empty));
	frame_rd_completed	<= ((read_data == {fv_end_data,fv_end_data})&&(read_data_valid));
end
assign  curr_addr_wr    =   uv_ddr_wr_f ? addr_wr_uv : addr_wr;
assign  curr_addr_rd    =   addr_rd;


always @(posedge sclk) begin
	datain_rdy_r1 <= datain_rdy;
	datain_rdy_r2 <= datain_rdy_r1;
end

assign data_wr_done = (!datain_rdy_r1) & (datain_rdy_r2);

//	Regulates the Y and UV data write in RAM corresponding to the command
dram_dp cmd_fifo
(
	.clk_i(sclk),
	.rstn_i(reset_n),
	.wr_data_i(uv_ddr_wr_f),
	.data_o(ddr_wr_data_idx),
	.wr_en(wr_done),
	.rd_inc(data_wr_done)
);

//	DDR RAM Command generator
always @(posedge sclk or negedge reset_n) begin
    if (reset_n == 1'b0) begin
        cmdgen          <=  `IDLE_ST;
        cmd             <=  4'h0;
        cmd_burst_cnt   <=  5'h0;
        cmd_valid       <=  1'b0;
        addr            <=  {`inst1_ADDR_WIDTH{1'b0}};
        otf_bl_sel      <=  1'b0;   
        Bl_Mode         <= 2'b00;
        CmdBurst_En     <=  1'b0;
        clr_cmd_cnt     <=  1'b0;
        uv_ddr_wr_f		<=  1'b0;
    end
    else begin

        case (cmdgen)

        `IDLE_ST : begin
            if (init_done) begin
                cmdgen      <=  `FRAME_ST;
            end
            else begin
                cmdgen      <=  `IDLE_ST;
            end
        end       
		
		`FRAME_ST : begin
			if(!cam_empty)
				cmdgen      <=  `CONF_MR0;
			else
				cmdgen      <=  `FRAME_ST;
		end
		
        `CONF_MR0 : begin
            cmd         <=  4'h6;       // Load Mode Register
            cmd_valid   <=  1'b1;
            addr        <=  {{`inst1_ADDR_WIDTH-18{1'b0}},2'b00,mr0_data};
            if (cmd_gone) begin
                cmdgen      <=  `CONF_MR1;
                cmd_valid   <=  1'b0;
            end
            else
                cmdgen      <=  `CONF_MR0;
        end

        `CONF_MR1 : begin
            cmd_valid   <=  1'b1;
            addr        <=  {{`inst1_ADDR_WIDTH-18{1'b0}},2'b01,mr1_data};
            if (cmd_gone) begin
                cmdgen      <=  `CONF_MR2;
            #1  cmd_valid   <=  1'b0;
            end
            else
                cmdgen      <=  `CONF_MR1;
        end

        `CONF_MR2 : begin
            cmd_valid   <=  1'b1;
            addr        <=  {{`inst1_ADDR_WIDTH-18{1'b0}},2'b10,mr2_data};
            if (cmd_gone) begin
                cmdgen      <=  `CONF_MR3;
                cmd_valid   <=  1'b0;
            end
            else
                cmdgen      <=  `CONF_MR2;
        end

        `CONF_MR3 : begin
            cmd_valid   <=  1'b1;
            addr        <=  {{`inst1_ADDR_WIDTH-18{1'b0}},2'b11,mr3_data};
            if (cmd_gone) begin
                cmd_valid   <=  1'b0;
                cmdgen      <=  `WAIT_ST;
                Bl_Mode     <=  Bl_Mode_p;              // Sample BL_Mode[0] for OTF
                CmdBurst_En <=  CmdBurst_En_p;
            end
            else
                cmdgen      <=  `CONF_MR3;
        end

        `WRITE_CMD : begin
            cmd         <=  4'h2;                       // Switch to write
            addr        <=  curr_addr_wr;
            cmd_burst_cnt <= CmdBrstCnt;
            otf_bl_sel  <=  Bl_Mode[0];                 // Set OTF burst lengh
            cmd_valid   <=  1'b1;
            clr_cmd_cnt <=  1'b0;
            if (cmd_gone) begin
                if (sngl_cmd_cnt == SnglCmdCnt) begin
                    clr_cmd_cnt <= 1'b1;
                    cmdgen      <=  `WAIT_ST;
                end
                else
                    cmdgen      <=  `WRITE_CMD;                             
                cmd_valid   <=  1'b0;
            end
            else
                cmdgen      <=  `WRITE_CMD;
        end

    
        `READ_CMD : begin                   
            cmd         <=  4'h1;
            addr        <=  curr_addr_rd;
            cmd_burst_cnt <= CmdBrstCnt;
            cmd_valid   <=  1'b1;
            clr_cmd_cnt <=  1'b0;
                if (cmd_gone) begin
					if (sngl_cmd_cnt == SnglCmdCnt) begin
                        clr_cmd_cnt <= 1'b1;
                        Bl_Mode[0]  <=  Bl_Mode_p[0];
                        CmdBurst_En <=  CmdBurst_En_p;
                        cmdgen      <=  `WAIT_ST;
                    end
                    else
                        cmdgen      <=  `READ_CMD;
                    cmd_valid   <=  1'b0;
                end
                else
                    cmdgen      <=  `READ_CMD;
        end
		`WAIT_ST : begin
			if((cam_rcnt > (CmdBrstCnt * 16))||((!(vsync_sclk||fv_sclk_r[30]))&&(!cam_empty))) begin
				uv_ddr_wr_f <= 'd0;;
				cmdgen      <=  `WRITE_CMD;
			end
			else if(((!uv_fifo_almostempty)||((!(vsync_sclk||fv_sclk_r[30]))&(!uv_fifo_empty)))&yuv_420_en_sclk) begin
				uv_ddr_wr_f <= 'd1;
				cmdgen      <=  `WRITE_CMD;
			end
			else if((ddr_rd_enable)&&(!ddr_rd_hold)) begin
				uv_ddr_wr_f <= 'd0;;
				cmdgen      <=  `READ_CMD;
			end
			else begin
				uv_ddr_wr_f <= 'd0;;
				cmdgen      <=  `WAIT_ST;
			end
		end

        endcase
    end
end

always @(posedge sclk or negedge reset_n) begin
    if (reset_n == 1'b0) begin
        sngl_cmd_cnt        <=  5'h0;
    end
    else begin
        if (clr_cmd_cnt)
            sngl_cmd_cnt    <=  5'h0;
        else
            if ((cmdgen == `READ_CMD || cmdgen == `WRITE_CMD) && cmd_gone)
                sngl_cmd_cnt        <=  sngl_cmd_cnt + 1;
    end
end

assign  data_mask   =   0;

assign  CmdBrstCnt  =   `UsrCmdBrstCnt; 

assign  SnglCmdCnt  =   `UsrCmdBrstCnt-1;
	
endmodule
