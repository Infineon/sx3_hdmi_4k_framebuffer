`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
//
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
// 
// Design Name:		HDMI RX
// Module Name:		y_uv_splitter
// Target Devices:	LFE5U-45F-8BG381I
// Tool versions:	
// Description: This module converts the YUV422 image data into YUV420 by merging the UV data for two lines into a single line. It also splits the data into Y and UV respectively before writing in the DDR3 RAM.
//
// Dependencies: 
//
// Revision: 
// Revision 0.00 - 
//
//////////////////////////////////////////////////////////////////////////////////

module y_uv_splitter
(
	input			clk,
	input			rst,		//	Active High reset
	input [15:0]	data_y_in,	//	Input data in format [Y2,Y1]
	input [15:0]	data_cbcr_in,	//	Input data in format [V,U]
	input			data_vld_i,
	input			frame_start_i,
	input			frame_end_i,
	input [11:0]	line_cnt_i,
	input [11:0]	pix_cnt_i,
	output [31:0]	y_dout_o,
	output			y_vld_o,
	output [15:0]	uv_dout_o,
	output			u_vld_o,	
	output			v_vld_o,
	output			uv_vld_o
);

reg	vld_frame='d0;		// Indiacates frame is valid
reg	[15:0]	y_out_r='d0;
reg	[15:0]	uv_out_r='d0;
reg			y_vld_r='d0;
reg			y_vld_r1='d0;
reg			y_vld_r2='d0;
reg			uv_vld_r='d0;
reg			v_vld_r='d0;
wire [8:0]	u_out;
wire [8:0]	v_out;
reg  [11:0] uv_wr_addr='d0;
reg  [11:0] line_cnt_r='d0;
reg  [11:0] pix_cnt_r='d0;

wire [15:0]	uv_rdout;
wire [10:0]	pix_cnt_w;

reg [15:0]	y_dout_r='d0;
reg 		y_dout_vld_r='d0;
reg 		y_dout_f='d0;

always @(posedge clk)begin
	if(frame_start_i)
		y_dout_f <= 'd0;
	else if(y_vld_r)
		y_dout_f <= !y_dout_f;
	y_vld_r1 <= y_vld_r;
	y_vld_r2 <= y_vld_r1;
end

// BRAM Instance to store 1 line
line_uv_bram uv_bram_inst
(
	.Address(pix_cnt_r),
	.Data(data_cbcr_in),
	.Q(uv_rdout),
	.Clock(clk),
	.ClockEn('d1),
	.Reset('d0),
	.WE((!line_cnt_r[0])&&data_vld_i)
	);

assign pix_cnt_w = pix_cnt_i[11:1];
always@(posedge clk, posedge rst) begin
	if(rst) begin
		vld_frame <= 'd0;
	end
	else begin
		if(frame_start_i)
			vld_frame <= 'd1;
		else if(frame_end_i)
			vld_frame <= 'd0;
	end
end

always @(posedge clk) begin
	if(!vld_frame) begin
		line_cnt_r <= 'd0;
		pix_cnt_r <= 'd0;
	end
	else begin
		if(data_vld_i) begin
			if(pix_cnt_r==(pix_cnt_w-'d1)) begin
				pix_cnt_r <= 'd0;
				line_cnt_r <= line_cnt_r + 'd1;
			end
			else begin
				pix_cnt_r <= pix_cnt_r + 'd1;
			end
		end
	end
end

always @(posedge clk) begin
	y_out_r <= data_y_in;
	uv_out_r <= data_cbcr_in;
end

always@(posedge clk, posedge rst) begin
	if(rst) begin
		y_vld_r <= 'd0;
		uv_vld_r <= 'd0;
	end
	else if(frame_start_i)begin
		y_vld_r <= 'd0;
		uv_vld_r <= 'd0;
	end
	else begin
		if(data_vld_i)
			y_vld_r <= !y_vld_r;
		uv_vld_r <= line_cnt_r[0] & data_vld_i;
	end
end

assign	u_out = uv_out_r[7:0] + uv_rdout[7:0];
assign	v_out = uv_out_r[15:8] + uv_rdout[15:8];
assign	uv_dout_o = {v_out[8:1],u_out[8:1]};
assign	y_dout_o = {data_y_in,y_out_r};
assign	y_vld_o = y_vld_r;
assign	u_vld_o = uv_vld_r & (pix_cnt_r[0]);
assign	v_vld_o = uv_vld_r & (!pix_cnt_r[0]);
assign	uv_vld_o = uv_vld_r;

endmodule
