//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
//
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
//////////////////////////////////////////////////////////////////////////////////
`define inst1_GEAR_MODE "X2"
`define inst1_ECP3_8_0

`define inst1_sg25E

`ifdef inst1_sg187E
 `define inst1_X_FAC 4
`else
 `define inst1_X_FAC 2
`endif 

`define inst1_DATA_WIDTH 16
`define inst1_DATA_SIZE_16
`define inst1_x8
`define inst1_DQS_WIDTH 2
`define inst1_DQS_WIDTH_2
`define inst1_DMSIZE 2

`define inst1_BRST_CNT_EN
`ifdef inst1_X4_GEAR
`define inst1_DATA_X 8
`define inst1_TIME_X 2
`else
`define inst1_DATA_X 4
`define inst1_TIME_X 1
`endif
`define inst1_DSIZE `inst1_DATA_WIDTH*`inst1_DATA_X
`define inst1_USER_DM `inst1_DSIZE/8
`define inst1_DQSW 8
`define inst1_ROW_WIDTH 14
`define inst1_ROW_WIDTH_GT_13

`define inst1_COL_WIDTH 10
`define inst1_COL_WIDTH_EQ_10

`define inst1_CS_WIDTH 1
`define inst1_CS_WIDTH_1

`ifdef inst1_RDIMM
  `define inst1_TSTAB 11'd1200
  `define inst1_DESEL
  `ifdef inst1_CS_WIDTH_1
    `define inst1_CS_WIDTH_BB 2
  `else
    `define inst1_CS_WIDTH_BB `inst1_CS_WIDTH
  `endif
`else
  `define inst1_CS_WIDTH_BB `inst1_CS_WIDTH
`endif
`define inst1_BANK_WIDTH 3
`define inst1_BSIZE 3
`define inst1_ADDR_WIDTH 27

`define inst1_USER_SLOT_SIZE_1
`define inst1_WL_DQS_WIDTH (`inst1_DQS_WIDTH * `inst1_CS_WIDTH)
`define inst1_CLKO_WIDTH 1
`define inst1_CLKO_WIDTH_1
`define inst1_CKE_WIDTH 1

`define inst1_AR_BURST_EN 3'd0
`define inst1_AR_BURST_8

`define inst1_WrRqDDelay 2'd2
`define inst1_MRS0_INIT 16'b0001010100010000
`define inst1_MRS1_INIT 16'b0000000000000100
`define inst1_MRS2_INIT 16'b0000001000000000
`define inst1_MRS3_INIT 16'b0000000000000000

`define inst1_INIT_WR_LAT 5

`define inst1_TRCD 2'd3
`define inst1_TRRD 2'd2
`define inst1_TRP 2'd3
`define inst1_TWR 2'd3
`define inst1_TRAS 4'd8
`define inst1_TRC 4'd10
`define inst1_TRTP 2'd2
`define inst1_TWTR 2'd2
`define inst1_TCKESR 2'd2
`define inst1_TZQOPER 8'd128
`define inst1_TZQS 6'd32
`define inst1_TMRD 2'd2
`define inst1_TPD 2'd2
`define inst1_TXPDLL 3'd5
`define inst1_TCKE 2'd2
`define inst1_TXPR 5'd24
`define inst1_TMOD 3'd6
`define inst1_TZQINIT 9'd256
`define inst1_TRFC 5'd22
`define inst1_TFAW 4'd8
`define inst1_TREFI 16'd1170
`define inst1_TWLMRD 5'd20
`define inst1_TWLDQSEN 4'd13
`define inst1_TODTH4 2'd2
`define inst1_TODTH8 2'd3
`define inst1_TWLO 2'd3
`define inst1_TRCD_WIDTH 2
`define inst1_TRRD_WIDTH 2
`define inst1_TRP_WIDTH 2
`define inst1_TWR_WIDTH 2
`define inst1_TRAS_WIDTH 4
`define inst1_TRC_WIDTH 4
`define inst1_TRTP_WIDTH 2
`define inst1_TWTR_WIDTH 2
`define inst1_TCKESR_WIDTH 2
`define inst1_TZQOPER_WIDTH 8
`define inst1_TZQS_WIDTH 6
`define inst1_TMRD_WIDTH 2
`define inst1_TPD_WIDTH 2
`define inst1_TXPDLL_WIDTH 3
`define inst1_TXPR_WIDTH 5
`define inst1_TMOD_WIDTH 3
`define inst1_TZQINIT_WIDTH 9
`define inst1_TRFC_WIDTH 5
`define inst1_TFAW_WIDTH 4
`define inst1_TCKE_WIDTH 2
`define inst1_TREFI_WIDTH 16
`define inst1_TWLMRD_WIDTH 5
`define inst1_TWLDQSEN_WIDTH 4
`define inst1_TODTH4_WIDTH 2
`define inst1_TODTH8_WIDTH 2
`define inst1_TWLO_WIDTH 2

`define inst1_AL 0
`define inst1_CL 3
`define inst1_CWL 3
`define inst1_CL_WIDTH 4
`define inst1_RL_WIDTH 4
`define inst1_WL_WIDTH 4
`define inst1_AL_WIDTH 2
`define inst1_CWL_WIDTH 3

`define inst1_NO_WRITE_LEVEL
`define inst1_ENB_MEM_RST
`define inst1_REFCLK_PERIOD_BY2 5000
`define inst1_PLL_FIN "100"
`define inst1_PLL_FOUT "300"
`define inst1_PMI_PLL
 `ifdef inst1_x4
`else
  `ifdef inst1_NO_WRITE_LEVEL
     `define inst1_TRC_DQS0 0
     `define inst1_TRC_DQS1 0
     `define inst1_TRC_DQS2 0
     `define inst1_TRC_DQS3 0
     `define inst1_TRC_DQS4 0
     `define inst1_TRC_DQS5 0
     `define inst1_TRC_DQS6 0
     `define inst1_TRC_DQS7 0
     `define inst1_TRC_DQS8 0
     `define inst1_TRC_DQS9 0
     `define inst1_TRC_DQS10 0
     `define inst1_TRC_DQS11 0
     `define inst1_TRC_DQS12 0
     `define inst1_TRC_DQS13 0
     `define inst1_TRC_DQS14 0
     `define inst1_TRC_DQS15 0
     `define inst1_TRC_DQS16 0
     `define inst1_TRC_DQS17 0
  `else
     `define inst1_TRC_DQS0 100
     `define inst1_TRC_DQS1 100
     `define inst1_TRC_DQS2 100
     `define inst1_TRC_DQS3 100
     `define inst1_TRC_DQS4 100
     `define inst1_TRC_DQS5 100
     `define inst1_TRC_DQS6 100
     `define inst1_TRC_DQS7 100
     `define inst1_TRC_DQS8 100
     `define inst1_TRC_DQS9 100
     `define inst1_TRC_DQS10 100
     `define inst1_TRC_DQS11 100
     `define inst1_TRC_DQS12 100
     `define inst1_TRC_DQS13 100
     `define inst1_TRC_DQS14 100
     `define inst1_TRC_DQS15 100
     `define inst1_TRC_DQS16 100
     `define inst1_TRC_DQS17 100
  `endif
`endif

 `define inst1_PHY_REG
 `define inst1_PHY_REG_P2

`define inst1_WL_RTT_NOM 3'b001
`define inst1_WL_RNK0_RTT_NOM 3'b010
`define inst1_WL_RNK1_RTT_NOM 3'b011
`define inst1_DQS_TRC_DEL 0.2
`define inst1_DQ_TRC_DEL 0.2
`define inst1_DM_TRC_DEL 0.2

`define inst1_WL_DQS_PHASE_DLY 0
`define inst1_WL_DQS_PHASE_DLY_CNT 8'd0
`define inst1_DMY_WIDTH 32
`define inst1_DMY_MSK_WIDTH 4
`define inst1_LATTICE_MAC
`define inst1_WL_VAL "1T"
