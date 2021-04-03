
`ifdef ddr3_ip_inst_DELAY_0  // values 0,1,2,10,50
   `define ddr3_ip_inst_DELAY 0
`else
   `ifdef ddr3_ip_inst_DELAY_2
      `define ddr3_ip_inst_DELAY 2
   `else
      `ifdef ddr3_ip_inst_DELAY_10
         `define ddr3_ip_inst_DELAY 10
      `else
         `ifdef ddr3_ip_inst_DELAY_50
            `define ddr3_ip_inst_DELAY 50
         `else
            `define ddr3_ip_inst_DELAY 1
         `endif
      `endif
   `endif
`endif

`ifdef ddr3_ip_inst_FLY_BY_DEL_2000
  `define ddr3_ip_inst_FULL_FLY_BY_DEL 2000
`elseif FLY_BY_DEL_1500
  `define ddr3_ip_inst_FULL_FLY_BY_DEL 1500
`else
`define ddr3_ip_inst_FULL_FLY_BY_DEL 1000
`endif

`ifdef ddr3_ip_inst_RDIMM
  `ifdef ddr3_ip_inst_NO_WRITE_LEVEL
     `define ddr3_ip_inst_FBY_TRC_DQS8 0 
     `define ddr3_ip_inst_FBY_TRC_DQS3 0
     `define ddr3_ip_inst_FBY_TRC_DQS2 0
     `define ddr3_ip_inst_FBY_TRC_DQS1 0
     `define ddr3_ip_inst_FBY_TRC_DQS0 0

     `define ddr3_ip_inst_FBY_TRC_DQS4 0
     `define ddr3_ip_inst_FBY_TRC_DQS5 0
     `define ddr3_ip_inst_FBY_TRC_DQS6 0
     `define ddr3_ip_inst_FBY_TRC_DQS7 0

     `define ddr3_ip_inst_FBY_TRC_DQS17 0 
     `define ddr3_ip_inst_FBY_TRC_DQS12 0 
     `define ddr3_ip_inst_FBY_TRC_DQS11 0 
     `define ddr3_ip_inst_FBY_TRC_DQS10 0 
     `define ddr3_ip_inst_FBY_TRC_DQS9 0 

     `define ddr3_ip_inst_FBY_TRC_DQS13 0 
     `define ddr3_ip_inst_FBY_TRC_DQS14 0 
     `define ddr3_ip_inst_FBY_TRC_DQS15 0 
     `define ddr3_ip_inst_FBY_TRC_DQS16 0 

  `else

     `ifdef ddr3_ip_inst_x4

       `define ddr3_ip_inst_FBY_TRC_DQS0 520 
       `define ddr3_ip_inst_FBY_TRC_DQS1 400 
       `define ddr3_ip_inst_FBY_TRC_DQS2 270 
       `define ddr3_ip_inst_FBY_TRC_DQS3 200 

       `define ddr3_ip_inst_FBY_TRC_DQS4 200 
       `define ddr3_ip_inst_FBY_TRC_DQS5 270 
       `define ddr3_ip_inst_FBY_TRC_DQS6 400 
       `define ddr3_ip_inst_FBY_TRC_DQS7 520 

       `define ddr3_ip_inst_FBY_TRC_DQS8 520 
       `define ddr3_ip_inst_FBY_TRC_DQS9 400 
       `define ddr3_ip_inst_FBY_TRC_DQS10 270 
       `define ddr3_ip_inst_FBY_TRC_DQS11 200 

       `define ddr3_ip_inst_FBY_TRC_DQS12 200 
       `define ddr3_ip_inst_FBY_TRC_DQS13 270 
       `define ddr3_ip_inst_FBY_TRC_DQS14 400 
       `define ddr3_ip_inst_FBY_TRC_DQS15 520 
       `define ddr3_ip_inst_FBY_TRC_DQS16 520 
       `define ddr3_ip_inst_FBY_TRC_DQS17 520 

     `else
       `define ddr3_ip_inst_FBY_TRC_DQS0 520 
       `define ddr3_ip_inst_FBY_TRC_DQS1 400 
       `define ddr3_ip_inst_FBY_TRC_DQS2 270 
       `define ddr3_ip_inst_FBY_TRC_DQS3 200 

       `define ddr3_ip_inst_FBY_TRC_DQS4 200 
       `define ddr3_ip_inst_FBY_TRC_DQS5 270 
       `define ddr3_ip_inst_FBY_TRC_DQS6 400 
       `define ddr3_ip_inst_FBY_TRC_DQS7 520 
       `define ddr3_ip_inst_FBY_TRC_DQS8 520 
     `endif

  `endif

`else // UDIMM

// x4
`define ddr3_ip_inst_FBY_TRC_DQS9 0
`define ddr3_ip_inst_FBY_TRC_DQS10 0
`define ddr3_ip_inst_FBY_TRC_DQS11 0
`define ddr3_ip_inst_FBY_TRC_DQS12 0
`define ddr3_ip_inst_FBY_TRC_DQS13 0
`define ddr3_ip_inst_FBY_TRC_DQS14 0
`define ddr3_ip_inst_FBY_TRC_DQS15 0
`define ddr3_ip_inst_FBY_TRC_DQS16 0
`define ddr3_ip_inst_FBY_TRC_DQS17 0 

  `ifdef ddr3_ip_inst_NO_WRITE_LEVEL
     `define ddr3_ip_inst_FBY_TRC_DQS0 0
     `define ddr3_ip_inst_FBY_TRC_DQS1 0
     `define ddr3_ip_inst_FBY_TRC_DQS2 0
     `define ddr3_ip_inst_FBY_TRC_DQS3 0
     `define ddr3_ip_inst_FBY_TRC_DQS4 0
     `define ddr3_ip_inst_FBY_TRC_DQS5 0
     `define ddr3_ip_inst_FBY_TRC_DQS6 0
     `define ddr3_ip_inst_FBY_TRC_DQS7 0
     `define ddr3_ip_inst_FBY_TRC_DQS8 0 
  `else
      `ifdef ddr3_ip_inst_FBY_TRC_DQS_50
         `define ddr3_ip_inst_FBY_TRC_DQS0 65
         `define ddr3_ip_inst_FBY_TRC_DQS1 65
         `define ddr3_ip_inst_FBY_TRC_DQS2 65 
         `define ddr3_ip_inst_FBY_TRC_DQS3 65
         `define ddr3_ip_inst_FBY_TRC_DQS4 65 
         `define ddr3_ip_inst_FBY_TRC_DQS5 65
         `define ddr3_ip_inst_FBY_TRC_DQS6 65
         `define ddr3_ip_inst_FBY_TRC_DQS7 65
         `define ddr3_ip_inst_FBY_TRC_DQS8 65
     `else
         `define ddr3_ip_inst_FBY_TRC_DQS0 (`ddr3_ip_inst_FULL_FLY_BY_DEL * 0.461)   //TL1 
         `define ddr3_ip_inst_FBY_TRC_DQS1 (`ddr3_ip_inst_FULL_FLY_BY_DEL * 0.077)   //TL2 
         `define ddr3_ip_inst_FBY_TRC_DQS2 (`ddr3_ip_inst_FULL_FLY_BY_DEL * 0.077)   //TL3 
         `define ddr3_ip_inst_FBY_TRC_DQS3 (`ddr3_ip_inst_FULL_FLY_BY_DEL * 0.077)   //TL4 
         `define ddr3_ip_inst_FBY_TRC_DQS4 (`ddr3_ip_inst_FULL_FLY_BY_DEL * 0.077)   //TL5 
         `define ddr3_ip_inst_FBY_TRC_DQS5 (`ddr3_ip_inst_FULL_FLY_BY_DEL * 0.077)   //TL6 
         `define ddr3_ip_inst_FBY_TRC_DQS6 (`ddr3_ip_inst_FULL_FLY_BY_DEL * 0.077)   //TL7 
         `define ddr3_ip_inst_FBY_TRC_DQS7 (`ddr3_ip_inst_FULL_FLY_BY_DEL * 0.077)   //TL8 
         `define ddr3_ip_inst_FBY_TRC_DQS8 (`ddr3_ip_inst_FULL_FLY_BY_DEL * 0.077)   //TL9 
     `endif
  `endif //NO_WRITE_LEVEL
`endif // UDIMM

`define ddr3_ip_inst_RD_Tstaoff 2200
`define ddr3_ip_inst_RD_tPDM 650
