//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
// 
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		HDMI RX 
// Module Name:		dram_dp
// Target Devices:	LFE5U-45F-8BG381I
// Tool Versions:
// Tool versions:  
// Description: This module acts as a simple Dual port DRAM with a single BIT width and 8 BIT depth.
//  
// Dependencies: 
//
// Revision: 
// Revision 0.01 - Initial Design
//////////////////////////////////////////////////////////////////////////////////

module dram_dp
(
	input		clk_i,
	input		rstn_i,
	input		wr_data_i,
	output		data_o,
	input		wr_en,
	input		rd_inc
);

reg	[7:0] reg_arr='d0;
reg	[2:0] rd_addr='d0;
reg	[2:0] wr_addr='d0;
reg data_r='d0;
always @(posedge clk_i) begin
	if(!rstn_i) begin
		rd_addr	<= 'd0;
		wr_addr	<= 'd0;
		reg_arr <= 'd0;
	end
	else begin
		if(rd_inc)
			rd_addr <= rd_addr + 'd1;
		if(wr_en) begin
			reg_arr[wr_addr] <= wr_data_i;
			wr_addr <= wr_addr + 'd1;
		end
	end
	data_r <= reg_arr[rd_addr];
end

assign	data_o = data_r;
//assign	data_o = reg_arr[rd_addr];

endmodule