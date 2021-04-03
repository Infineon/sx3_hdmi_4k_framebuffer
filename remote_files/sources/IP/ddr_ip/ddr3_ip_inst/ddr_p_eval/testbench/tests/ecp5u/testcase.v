// =============================================================================
//                           COPYRIGHT NOTICE
// Copyright 2008 (c) Lattice Semiconductor Corporation
// ALL RIGHTS RESERVED
// This confidential and proprietary software may be used only as authorised by
// a licensing agreement from Lattice Semiconductor Corporation.
// The entire notice above must be reproduced on all authorized copies and
// copies may only be made to the extent permitted by a licensing agreement from
// Lattice Semiconductor Corporation.
//
// Lattice Semiconductor Corporation        TEL : 1-800-Lattice (USA and Canada)
// 5555 NE Moore Court                            408-826-6000 (other locations)
// Hillsboro, OR 97124                     web  : http://www.latticesemi.com/
// U.S.A                                   email: techsupport@latticesemi.com
// =============================================================================/
//                         FILE DETAILS
// Project          : DDR3 SDRAM Controller
// File             : ddr_test_01.v
// Title            : Data Mask Test Case
// Dependencies     : 
// Description      : This is the GOLDEN Test. It issues basic commands like 
//                    Power down Self Ref, Load MR, INIT, WR and RD.                    
// =============================================================================

// load_mr       (cmd_valid_lat, bl, bt, cl, wr)
// write         (cmd_valid_lat, burst_count, row_addr, bank_addr, col_addr, bl_mem, ofly_burst_len)
// read          (cmd_valid_lat, burst_count, row_addr, bank_addr, col_addr, bl_mem, ofly_burst_len)

initial begin
    reset;
    #(20*c);
// initial the memory, the default burst length is 4
    init;
    #(`ddr3_ip_inst_DELAY*c);

// power down
    pdown        (0);
    #(`ddr3_ip_inst_DELAY*c);
    pdown_ext    (0);
    #(`ddr3_ip_inst_DELAY*c);


    write       (0, 8, 0, 5, 0, 0);
    read        (0, 8, 0, 5, 0, 0);
    #(20*c);

    write       (0, 1, 0, 4, 0, 0);
    write       (0, 1, 0, 4, 1, 0);
    write       (0, 1, 0, 4, 2, 0);
    write       (0, 1, 0, 4, 3, 0);
    write       (0, 1, 0, 4, 4, 0);
    write       (0, 1, 0, 4, 5, 0);
    write       (0, 1, 0, 4, 6, 0);
    write       (0, 1, 0, 4, 7, 0);
    write       (0, 1, 0, 4, 8, 0);


//  burst chop 4 operation
    #(250*c);
    write       (0, 1, 0, 0, 0, 0);
    #(`ddr3_ip_inst_DELAY*c);

// burst count 1
    write       (0, 1, 3, 2, 8, 0);
    write       (0, 1, 4, 2, 0, 0);
    write       (0, 1, 5, 2, 0, 0);
    write       (0, 1, 6, 2, 0, 0);
    #(`ddr3_ip_inst_DELAY*c);
    read        (0, 1, 3, 2, 8, 0);
    #(`ddr3_ip_inst_DELAY*c);
    write       (0, 1, 3, 2, 0, 0);
    #(`ddr3_ip_inst_DELAY*c);
// burst count N
    write       (0, 15, 1, 0, 0, 0);
    #(`ddr3_ip_inst_DELAY*c);
    write       (0, 8, 2, 2, 8, 0);
    #(`ddr3_ip_inst_DELAY*c);
    read        (0, 12, 1, 0, 0, 0);
    #(`ddr3_ip_inst_DELAY*c);
    read        (0, 8, 2, 2, 8, 0);
    #(`ddr3_ip_inst_DELAY*c);


   // To check BC4 single cmd stream (1 eclk gap case)
    write       (0, 1, 0, 7, 0, 0);
    write       (0, 1, 0, 7, 1, 0);
    write       (0, 1, 0, 7, 2, 0);
    write       (0, 1, 0, 7, 3, 0);
    write       (0, 1, 0, 7, 4, 0);
    write       (0, 1, 0, 7, 5, 0);
    write       (0, 1, 0, 7, 6, 0);
    write       (0, 1, 0, 7, 7, 0);
    write       (0, 1, 0, 7, 8, 0);
    read        (0, 1, 0, 7, 0, 0);
    read        (0, 1, 0, 7, 1, 0);
    read        (0, 1, 0, 7, 2, 0);
    read        (0, 1, 0, 7, 3, 0);
    read        (0, 1, 0, 7, 4, 0);
    read        (0, 1, 0, 7, 5, 0);
    read        (0, 1, 0, 7, 6, 0);
    read        (0, 1, 0, 7, 7, 0);
    read        (0, 1, 0, 7, 8, 0);


// change burst length to 8
  load_mr0     (0, 8, 0, 6, 6);
  //load_mr0     (0, 8, 0, 6, `TWR*`X_FAC);
    #(`ddr3_ip_inst_DELAY*c);

// burst count 1
    write       (0, 1, 3, 0, 0, 0);
    #(`ddr3_ip_inst_DELAY*c);
    read        (0, 1, 3, 0, 0, 0);
   #(`ddr3_ip_inst_DELAY*c);
    write       (0, 2, 3, 0, 0, 0);
   #(`ddr3_ip_inst_DELAY*c); 
    read        (0, 2, 3, 0, 0, 0);
    #(`ddr3_ip_inst_DELAY*c);
    writea      (0, 1, 3, 2, 12, 0);
    #(`ddr3_ip_inst_DELAY*c);
    read        (0, 1, 3, 2, 12, 0);
    #(`ddr3_ip_inst_DELAY*c);
////// burst count N
    write       (0, 31, 15, 0, 0, 0);
    #(`ddr3_ip_inst_DELAY*c);
    write       (0, 3, 2, 0, 8, 0);
    #(`ddr3_ip_inst_DELAY*c);
    read        (0, 31, 15, 0, 0, 0);
    #(`ddr3_ip_inst_DELAY*c);
    read        (0, 3, 2, 0, 8, 0);
   #(`ddr3_ip_inst_DELAY*c);
   #(500*c);

   // To check BL8 single cmd stream (1 eclk gap case)
    write       (0, 1, 0, 6, 0, 0); 
    write       (0, 1, 0, 6, 1, 0); 
    write       (0, 1, 0, 6, 2, 0); 

    write       (0, 1, 0, 6, 3, 0);
    write       (0, 1, 0, 6, 4, 0);
    write       (0, 1, 0, 6, 5, 0);
    write       (0, 1, 0, 6, 6, 0);
    write       (0, 1, 0, 6, 7, 0);
    write       (0, 1, 0, 6, 8, 0);

    read        (0, 1, 0, 6, 0, 0); 
    read        (0, 1, 0, 6, 1, 0); 
    read        (0, 1, 0, 6, 2, 0); 

    read        (0, 1, 0, 6, 3, 0);
    read        (0, 1, 0, 6, 4, 0);
    read        (0, 1, 0, 6, 5, 0);
    read        (0, 1, 0, 6, 6, 0);
    read        (0, 1, 0, 6, 7, 0);
    read        (0, 1, 0, 6, 8, 0);



   // power down
    pdown        (0);
    #(`ddr3_ip_inst_DELAY*c);
    pdown_ext    (0);
    #(`ddr3_ip_inst_DELAY*c);

       // load_mr0      (cmd_valid_lat, bl, bt, cl, wr)
   load_mr0      (0, 8, 0, `ddr3_ip_inst_CL*2, `ddr3_ip_inst_TWR*2);
   //load_mr0      (0, 8, 0, `CL*2, `TWR*`X_FAC);
    #(`ddr3_ip_inst_DELAY*c);


    write (0, 1, 0, 1, 0, 0);
    read  (0, 1, 0, 1, 0, 0);
    read  (0, 1, 0, 1, 0, 0);
    read  (0, 1, 0, 1, 0, 0);

// To check tWTR compliance. Effective if CMD_VALID_TYPE1 is defined.
  load_mr0     (0, 0, 0, 6, 6);
  //load_mr0     (0, 0, 0, 6, `TWR*`X_FAC);
    write       (0, 1, 0, 4, 0, 1);
    write       (0, 1, 0, 4, 1, 1);
    write       (0, 1, 0, 4, 2, 1);
    read        (0, 1, 0, 4, 1, 1);
    read        (0, 1, 0, 4, 0, 1);


    #(500*c);
    endoftest = 1;
    #c;
    endoftest = 0;

$stop;

end
