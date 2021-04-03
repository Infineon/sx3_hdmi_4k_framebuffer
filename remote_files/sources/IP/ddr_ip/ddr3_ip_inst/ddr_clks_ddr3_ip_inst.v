// =============================================================================
//                           COPYRIGHT NOTICE
// Copyright 2013 (c) Lattice Semiconductor Corporation
// ALL RIGHTS RESERVED
// This confidential and proprietary software may be used only as authorised by
// a licensing agreement from Lattice Semiconductor Corporation.
// The entire notice above must be reproduced on all authorized copies and
// copies may only be made to the extent permitted by a licensing agreement from
// Lattice Semiconductor Corporation.
//
// Lattice Semiconductor Corporation       TEL  : 1-800-Lattice (USA and Canada)
// 5555 NE Moore Court                            408-826-6000 (other locations)
// Hillsboro, OR 97124                     web  : http://www.latticesemi.com/
// U.S.A                                   email: techsupport@latticesemi.com
// =============================================================================/
//                         FILE DETAILS
// Project          : LPDDR3 PHY
// File             : ddr_clks.v
// Title            : 
// Dependencies     : 
// Description      : Top level of clock synchronization module for LPDDR3
// =============================================================================
//                        REVISION HISTORY
// Version          : 1.0
// Author           : 
// Mod. Date        : Sep 2013
// Changes Made     : Initial Creation
//
// =============================================================================

`timescale 1ns/1ps
`include "ddr3_sdram_mem_params_ddr3_ip_inst.v"

module ddr_clks_ddr3_ip_inst(
   rst_n,
   clk_in,
   eclk,
   sclk,
   dll_update,
   update_done,
   dqsbuf_pause,
   ddr_rst,
   ddrdel,
   dcntl,
 `ifdef ddr3_ip_inst_DDR_BRIDGED
   ddrdel_br,
   dcntl_br,
 `endif
 `ifdef ddr3_ip_inst_DUAL_CORE
   dll_update_br,
   update_done_br,
   dqsbuf_pause_br,
 `endif
   clocking_good);

input                        rst_n; 
input                        clk_in;   
input                        dll_update;
output                       eclk; 
output                       sclk;    
output                       clocking_good;
output                       dqsbuf_pause;
output                       ddr_rst;
output                       update_done;
output                       ddrdel;
output [7:0]                 dcntl;      
`ifdef ddr3_ip_inst_DDR_BRIDGED
 output                      ddrdel_br;
 output [7:0]                dcntl_br;
`endif
`ifdef ddr3_ip_inst_DUAL_CORE
 input                       dll_update_br;
 output                      update_done_br;
 output                      dqsbuf_pause_br;
`endif
wire                         dqsbuf_pause;
wire                         freeze;
wire                         uddcntln_sync;
wire                         uddcntln_dll;
wire                         dll_rst;
wire                         ddr_rst;
wire                         ready;
wire                         eclk; 
reg                          clocking_good; 
wire                         eclk_sync_net; 
wire                         pll_lock; 
wire                         dll_lock; 
wire                         sclk;
wire                         ddrdll_lock; 
wire                         ddrdel;
wire [7:0]                   dcntl; 
wire                         clkos     /* synthesis syn_keep = 1 */;
wire                         stop      /* synthesis syn_keep = 1 */; 
wire                         clk_in_c  /* synthesis syn_keep = 1 */; 
wire                         mem_sync_pause;
wire                         update_done;      
wire                         dll_pause;
wire                         uddcntln;
`ifdef ddr3_ip_inst_DDR_BRIDGED
 wire                        ddrdel_br;
 wire [7:0]                  dcntl_br; 
 wire                        dll_lock_br;
 wire                        ecsout;
`endif
`ifdef ddr3_ip_inst_DUAL_CORE
 wire                        update_done_br;
 wire                        dll_pause_br;
 wire                        uddcntln_br;
 wire                        uddcntln_br_dll;
 wire                        dqsbuf_pause_br;
`endif

IB U1_IB_CLKIN (.I(clk_in), .O(clk_in_c))  /* synthesis IO_TYPE = LVDS */;

// ====================================================================
//  Clock component instantiations
// ====================================================================
`ifdef ddr3_ip_inst_PMI_PLL
pmi_pll_fp      #(.pmi_freq_clki(`ddr3_ip_inst_PLL_FIN),
                  .pmi_freq_clkfb(`ddr3_ip_inst_PLL_FOUT),
                  .pmi_freq_clkop(`ddr3_ip_inst_PLL_FOUT),
                  .pmi_freq_clkos(`ddr3_ip_inst_PLL_FIN),
                  .pmi_freq_clkok(),
                  .pmi_family("ECP5U"),
                  .pmi_phase_adj("0"),
                  .pmi_duty_cycle("50"),
                  .pmi_clkfb_source("CLKOP"),
                  .pmi_fdel("OFF"),
                  .pmi_fdel_val(0),
                  .module_type("pmi_pll_fp")) pmi_pll
(
    .CLKI    (clk_in_c),
    .CLKFB   (clkop),
    .RESET   (reset),
    .CLKOP   (clkop),
    .CLKOS   (clkos),
    .CLKOK   (clkok),
    .CLKOK2  (),
    .LOCK    (pll_lock)
    );
`else
ddr_pll_ddr3_ip_inst U1_pll (.CLKI(clk_in_c), .RST(reset), .CLKOP(clkop), .CLKOS(clkos), .LOCK(pll_lock));
`endif

ECLKSYNCB U1_ECLKSYNCB (
  `ifdef ddr3_ip_inst_DDR_BRIDGED
   .ECLKI    (ecsout),
  `else
   .ECLKI    (clkop),
  `endif
   .STOP     (stop),
   .ECLKO    (eclk_sync_net)
   );

defparam U1_DDRDLLA.FORCE_MAX_DELAY = "NO" ;
DDRDLLA U1_DDRDLLA (.CLK(eclk), .RST(dll_rst), .UDDCNTLN(uddcntln_dll), .FREEZE(freeze),
                   .DDRDEL(ddrdel), .LOCK(dll_lock),
                   .DCNTL7(dcntl[7]), .DCNTL6(dcntl[6]), .DCNTL5(dcntl[5]), .DCNTL4(dcntl[4]),
                   .DCNTL3(dcntl[3]), .DCNTL2(dcntl[2]), .DCNTL1(dcntl[1]), .DCNTL0(dcntl[0]));


`ifdef ddr3_ip_inst_DDR_BRIDGED
 ECLKBRIDGECS U1_ECLKBRIDGECS (.CLK0(clkop), .CLK1(1'b0), .SEL(1'b0), .ECSOUT(ecsout));
 
 defparam U2_DDRDLLA.FORCE_MAX_DELAY = "NO" ;
 `ifdef ddr3_ip_inst_DUAL_CORE
  DDRDLLA U2_DDRDLLA (.CLK(eclk), .RST(dll_rst), .UDDCNTLN(uddcntln_br_dll), .FREEZE(freeze),
 `else
  DDRDLLA U2_DDRDLLA (.CLK(eclk), .RST(dll_rst), .UDDCNTLN(uddcntln_dll), .FREEZE(freeze),
 `endif
                    .DDRDEL(ddrdel_br), .LOCK(dll_lock_br),
                    .DCNTL7(dcntl_br[7]), .DCNTL6(dcntl_br[6]), .DCNTL5(dcntl_br[5]), .DCNTL4(dcntl_br[4]),
                    .DCNTL3(dcntl_br[3]), .DCNTL2(dcntl_br[2]), .DCNTL1(dcntl_br[1]), .DCNTL0(dcntl_br[0]));
 
 assign ddrdll_lock = dll_lock && dll_lock_br;
`else
 assign ddrdll_lock = dll_lock;
`endif


CLKDIVF #(.DIV("2.0")) U1_CLKDIVF (.CLKI(eclk_sync_net), .RST(ddr_rst), .ALIGNWD(1'b0), .CDIVX(sclk_net));

assign eclk = eclk_sync_net;
assign sclk = sclk_net;
assign uddcntln_dll = uddcntln_sync && uddcntln;
assign reset = ~rst_n;
assign dqsbuf_pause = mem_sync_pause || dll_pause;  // pause DQSBUF during reset synchronization and DLL update

`ifdef ddr3_ip_inst_DUAL_CORE
 assign uddcntln_br_dll = uddcntln_sync && uddcntln_br;
 assign dqsbuf_pause_br = mem_sync_pause || dll_pause_br;  // pause DQSBUF during reset synchronization and DLL update
`endif

always @(negedge rst_n or posedge sclk) begin
   if (!rst_n) begin 
      clocking_good   <= 1'b0;
   end
   else begin
      clocking_good   <= ddrdll_lock & pll_lock & ready;
   end
end

// ====================================================================
//  Reset synchronization
// ====================================================================
mem_sync_ddr3_ip_inst U1_mem_sync (
  //inputs
  .start_clk      (clkos),
  .rst            (reset),
  .dll_lock       (ddrdll_lock),
  .pll_lock       (pll_lock),
  .update         (1'b0),            // use the DDRDLL update control to minimize throughput impact
  //outputs
  .pause          (mem_sync_pause),  // pause all DQSBUF during reset synchronization
  .stop           (stop),   
  .freeze         (freeze),
  .uddcntln       (uddcntln_sync),
  .dll_rst        (dll_rst),
  .ddr_rst        (ddr_rst),         // reset all DDR components during reset synchronization
  .ready          (ready)
);

ddrdll_upd_ddr3_ip_inst U1_dll_upd (
  //inputs
  .sclk           (sclk),
  .rst_n          (rst_n),
  .dll_update     (dll_update),
  .clocking_good  (clocking_good),
  //outputs
  .dll_pause      (dll_pause),
  .uddcntln       (uddcntln),
  .update_done    (update_done)
);

`ifdef ddr3_ip_inst_DUAL_CORE
 ddrdll_upd_ddr3_ip_inst U2_dll_upd (
   //inputs
   .sclk           (sclk),
   .rst_n          (rst_n),
   .dll_update     (dll_update_br),
   .clocking_good  (clocking_good),
   //outputs
   .dll_pause      (dll_pause_br),
   .uddcntln       (uddcntln_br),
   .update_done    (update_done_br)
 );
`endif

endmodule 


module ddrdll_upd_ddr3_ip_inst (
   sclk,
   rst_n,
   dll_update,   
   clocking_good,
   dll_pause,
   uddcntln,
   update_done
);

input                        sclk; 
input                        rst_n;   
input                        dll_update;
input                        clocking_good; 
output                       dll_pause;    
output                       uddcntln;
output                       update_done;

reg                          dll_pause;    
reg                          uddcntln;
reg                          update_done;
reg  [2:0]                   ns_dll_sm;
reg  [1:0]                   cnt_4t;
   
// ====================================================================
//  DDRDLL update control
// ====================================================================
`define ddr3_ip_inst_DLL_IDLE 3'h0
`define ddr3_ip_inst_PRE_NOP 3'h1
`define ddr3_ip_inst_ST_PAUSE 3'h2
`define ddr3_ip_inst_UDDCNTLN 3'h3
`define ddr3_ip_inst_END_PAUSE 3'h4
`define ddr3_ip_inst_POST_NOP 3'h5
`define ddr3_ip_inst_UPD_DONE 3'h6
`define ddr3_ip_inst_WAIT_NEXT 3'h7

always @(posedge sclk or negedge rst_n) begin
   if (!rst_n) begin 
      ns_dll_sm    <= `ddr3_ip_inst_DLL_IDLE;
      dll_pause    <= 1'b0;
      cnt_4t       <= 2'b0;
      uddcntln     <= 1'b1;
      update_done  <= 1'b0;
   end
   else begin
      case (ns_dll_sm)
       `ddr3_ip_inst_DLL_IDLE   : begin   //3'h0
                     update_done <= 1'b0;
                     if(dll_update && clocking_good) begin
                         ns_dll_sm  <= `ddr3_ip_inst_PRE_NOP;
                     end
                     else begin
                        ns_dll_sm  <= `ddr3_ip_inst_DLL_IDLE;
                     end
                     end

       `ddr3_ip_inst_PRE_NOP    : begin   //3'h1, wait time for switching to DLL update mode
       	              cnt_4t <= cnt_4t + 1;
                      if(cnt_4t == 0) begin
                         ns_dll_sm  <= `ddr3_ip_inst_ST_PAUSE;
                         cnt_4t     <= 3'b0;
                      end
                      else begin
                         ns_dll_sm  <= `ddr3_ip_inst_PRE_NOP;
                      end
                     end

       `ddr3_ip_inst_ST_PAUSE    : begin  //3'h2
       	              dll_pause <= 1'b1;
       	              cnt_4t <= cnt_4t + 1;
                      if(cnt_4t == 2) begin
                         ns_dll_sm  <= `ddr3_ip_inst_UDDCNTLN;
                         cnt_4t     <= 3'b0;      
                      end
                      else begin
                         ns_dll_sm  <= `ddr3_ip_inst_ST_PAUSE;
                      end
                      end

       `ddr3_ip_inst_UDDCNTLN    : begin  //3'h3
       	              uddcntln <= 1'b0;
       	              cnt_4t <= cnt_4t + 1;
                      if(cnt_4t == 1) begin
                         ns_dll_sm  <= `ddr3_ip_inst_END_PAUSE;
                         cnt_4t     <= 3'b0;      
                      end
                      else begin
                         ns_dll_sm  <= `ddr3_ip_inst_UDDCNTLN;
                      end
                      end

       `ddr3_ip_inst_END_PAUSE   : begin  //3'h4
       	              uddcntln <= 1'b1;
       	              cnt_4t <= cnt_4t + 1;
                      if(cnt_4t == 1) begin
                         ns_dll_sm  <= `ddr3_ip_inst_POST_NOP;
                         cnt_4t     <= 3'b0;      
                      end
                      else begin
                         ns_dll_sm  <= `ddr3_ip_inst_END_PAUSE;
                      end
                      end

       `ddr3_ip_inst_POST_NOP    : begin  //3'h5 - guardband state to extend NOP
                      dll_pause  <= 1'b0;
       	              cnt_4t <= cnt_4t + 1;
                      if(cnt_4t == 2) begin
                         ns_dll_sm  <= `ddr3_ip_inst_UPD_DONE;
                         cnt_4t     <= 3'b0;      
                      end
                      end

       `ddr3_ip_inst_UPD_DONE    : begin //3'h6 - update_done assertion
                      update_done <= 1'b1;      
                      ns_dll_sm  <= `ddr3_ip_inst_WAIT_NEXT;
                      end

       `ddr3_ip_inst_WAIT_NEXT   : begin  //3'h7 - guardband state to allow a subsequenct pause request after_ddr3_ip_inst 8T(4 sclks) 
                      update_done <= 1'b0;      
                      dll_pause  <= 1'b0;
       	              cnt_4t <= cnt_4t + 1;
                      if(cnt_4t == 3) begin
                         ns_dll_sm  <= `ddr3_ip_inst_DLL_IDLE;
                         cnt_4t     <= 3'b0;
                      end
                      else begin
                         ns_dll_sm  <= `ddr3_ip_inst_WAIT_NEXT;
                      end
                      end
      endcase
   end
end
endmodule
/* Verilog netlist generated by SCUBA Diamond_3.1_Production (93) */
/* Module Version: 5.5 */
/* C:\lscc_64\diamond\3.1_x64\ispfpga\bin\nt64\scuba.exe -w -n ddr_pll -lang verilog -synth synplify -bus_exp 7 -bb -arch sa5p00m -type pll -fin 100.00 -fclkop 400 -fclkop_tol 0.0 -fclkos 100.00 -fclkos_tol 0.0 -phases 0 -phase_cntl STATIC -rst -lock -fb_mode 1 -fdc C:/KHL/IP/LPDDR23/LPDDR3/LINUX_SYNC/lpddr3_sdram_phy_ecp4um/technology/param_gen/pllgen/ddr_pll/ddr_pll.fdc  */
/* Wed Feb 26 11:11:21 2014 */


`timescale 1 ns / 1 ps
module ddr_pll_ddr3_ip_inst (CLKI, RST, CLKOP, CLKOS, LOCK)/* synthesis syn_noprune=1 *//* synthesis NGD_DRC_MASK=1 */;// exemplar attribute ddr_pll dont_touch true 
    input wire CLKI;
    input wire RST;
    output wire CLKOP;
    output wire CLKOS;
    output wire LOCK;

    wire REFCLK;
    wire CLKOS_t;
    wire CLKOP_t;
    wire CLKFB_t;
    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam PLLInst_0.PLLRST_ENA = "ENABLED" ;
    defparam PLLInst_0.INTFB_WAKE = "DISABLED" ;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED" ;
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED" ;
    defparam PLLInst_0.CLKOS3_FPHASE = 0 ;
    defparam PLLInst_0.CLKOS3_CPHASE = 0 ;
    defparam PLLInst_0.CLKOS2_FPHASE = 0 ;
    defparam PLLInst_0.CLKOS2_CPHASE = 0 ;
    defparam PLLInst_0.CLKOS_FPHASE = 0 ;
    defparam PLLInst_0.CLKOS_CPHASE = 7 ;
    defparam PLLInst_0.CLKOP_FPHASE = 0 ;
    defparam PLLInst_0.CLKOP_CPHASE = 1 ;
    defparam PLLInst_0.PLL_LOCK_MODE = 0 ;
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0 ;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING" ;
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0 ;
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING" ;
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD" ;
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED" ;
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC" ;
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED" ;
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB" ;
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED" ;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA" ;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED" ;
    defparam PLLInst_0.CLKOS3_DIV = 1 ;
    defparam PLLInst_0.CLKOS2_DIV = 1 ;
    defparam PLLInst_0.CLKOS_DIV = 8 ;
    defparam PLLInst_0.CLKOP_DIV = 2 ;
    defparam PLLInst_0.CLKFB_DIV = 4 ;
    defparam PLLInst_0.CLKI_DIV = 1 ;
    defparam PLLInst_0.FEEDBK_PATH = "INT_OP" ;
    EHXPLLL PLLInst_0 (.CLKI(CLKI), .CLKFB(CLKFB_t), .PHASESEL1(scuba_vlo), 
        .PHASESEL0(scuba_vlo), .PHASEDIR(scuba_vlo), .PHASESTEP(scuba_vlo), 
        .PHASELOADREG(scuba_vlo), .STDBY(scuba_vlo), .PLLWAKESYNC(scuba_vlo), 
        .RST(RST), .ENCLKOP(scuba_vlo), .ENCLKOS(scuba_vlo), .ENCLKOS2(scuba_vlo), 
        .ENCLKOS3(scuba_vlo), .CLKOP(CLKOP_t), .CLKOS(CLKOS_t), .CLKOS2(), 
        .CLKOS3(), .LOCK(LOCK), .INTLOCK(), .REFCLK(REFCLK), .CLKINTFB(CLKFB_t))
             /* synthesis FREQUENCY_PIN_CLKOS="100.000000" */
             /* synthesis FREQUENCY_PIN_CLKOP="400.000000" */
             /* synthesis FREQUENCY_PIN_CLKI="100.000000" */
             /* synthesis ICP_CURRENT="12" */
             /* synthesis LPF_RESISTOR="72" */;

    assign CLKOS = CLKOS_t;
    assign CLKOP = CLKOP_t;


    // exemplar begin
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOS 100.000000
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOP 400.000000
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKI 100.000000
    // exemplar attribute PLLInst_0 ICP_CURRENT 12
    // exemplar attribute PLLInst_0 LPF_RESISTOR 72
    // exemplar end

endmodule
// ============================================================================
//                           COPYRIGHT NOTICE
// Copyright 2013 Lattice Semiconductor Corporation
// ALL RIGHTS RESERVED
// This confidential and proprietary software may be used only as authorized by
// a licensing agreement from Lattice Semiconductor Corporation.
// The entire notice above must be reproduced on all authorized copies and
// copies may only be made to the extent permitted by a licensing agreement 
// from Lattice Semiconductor Corporation.
//
// Lattice Semiconductor Corporation      TEL  : 1-800-Lattice (USA and Canada)
// 5555 NE Moore Court                           408-826-6000 (other locations)
// Hillsboro, OR 97124                    web  : http://www.latticesemi.com/
// U.S.A                                  email: techsupport@latticesemi.com
// =============================================================================
// Module     : mem_sync.v
// Description: 
//   - Performs start up sync needed to avoid issues on DDR memory bus
//   - Performs code update in operation without interrupting interface operation
// =============================================================================
`timescale 1ns/1ps
`define ddr3_ip_inst_CNT_WIDTH 2

module mem_sync_ddr3_ip_inst (
  //inputs
  start_clk,
  rst,
  dll_lock,
  pll_lock,
  update,
  //outputs
  pause,
  stop,
  freeze,
  uddcntln,
  dll_rst,
  ddr_rst,
  ready
);

// -------------------------------------------------   
//  PORT DECLARATION
// -------------------------------------------------
input       start_clk;  // oscillator clk or other constant running low speed 
                        // clk. Note that this clk should not be coming from 
                        // clk sources that this module will stop or reset 
                        // (e.g. ECLKSYNC, CLKDIV, etc.)
input       rst;        // Active high reset signal
input       dll_lock;   // Lock signal from DDRDLL
input       pll_lock;   // Lock signal from PLL
input       update;     // Signal to trigger code update

output wire pause;      // Pause signal for DQSBUF
output wire stop;       // Stop signal for ECLKSYNC
output wire freeze;     // Freeze signal for DDRDLL
output wire uddcntln;   // Update code signal for DDRDLL
output reg  dll_rst;    // Reset signal for DDRDLL
output wire ddr_rst;    // Reset signal for CLKDIV and DDR components
output wire ready;      // Ready signal to indicate sync done

// -------------------------------------------------   
//  SIGNAL DECLARATION
// ------------------------------------------------- 
reg [`ddr3_ip_inst_CNT_WIDTH:0] count;       // Counter for both 4T and 8T delay cycles
reg [5:0]          cs_memsync /*synthesis syn_preserve = 1*/ ;
                                // FSM Current state
reg [5:0]          ns_memsync;  // FSM Next state
reg [1:0]          flag;        // Signal to determine next FSM state
reg [1:0]          flag_d;      // Registered flag_d signal
reg                lock_d1;     // Sync register for pll_lock & dll_lock input
reg                lock_d2;     // Sync register for pll_lock & dll_lock input
reg                ddr_rst_d1;  // DDR reset when rst input is detected
                   
wire               counter_4t;  // Signal for counter to count up to 4T only
wire               ddr_rst_d;   // DDR reset output of FSM

// -------------------------------------------------   
//  PARAMETERS
// ------------------------------------------------- 
// FSM States
// Each bit is equivalent to an fsm output in the following order
//     FORMAT:       freeze stop ddr_rst pause uddcntln ready
localparam INIT            = 6'b000010;
localparam FREEZE          = 6'b100010;
localparam STOP            = 6'b110010;
localparam DDR             = 6'b111010;
localparam PAUSE           = 6'b000110;
localparam UDDCNTLN        = 6'b000100;
localparam READY           = 6'b000011;
localparam UPDATE_PAUSE    = 6'b000111;
localparam UPDATE_UDDCNTLN = 6'b000101;

// Maximum Count
localparam COUNT_8T        = 7; // 8T timing
localparam COUNT_4T        = 3; // 4T timing
localparam COUNT_LOCK      = 5; // 8T timing for synchronized lock

// -------------------------------------------------   
//  CONTINUOUS ASSIGNMENTS
// ------------------------------------------------- 
assign ready     = cs_memsync[0];
assign uddcntln  = cs_memsync[1];
assign pause     = cs_memsync[2];
assign ddr_rst_d = cs_memsync[3];
assign stop      = cs_memsync[4];
assign freeze    = cs_memsync[5];
assign ddr_rst   = ddr_rst_d || ddr_rst_d1;

// Assert counter_4t to count only up to CNT_4T parameter
assign counter_4t = cs_memsync[5] || cs_memsync[2];

// -------------------------------------------------   
//  SYNCHRONIZER FOR DLL_LOCK
// ------------------------------------------------- 
always @ (posedge start_clk or posedge rst) begin
  if (rst) begin
    lock_d1 <= 1'b0;
    lock_d2 <= 1'b0;
  end
  else begin
    lock_d1 <= dll_lock & pll_lock;
    lock_d2 <= lock_d1;
  end
end

// -------------------------------------------------   
//  CURRENT STATE & OUTPUT REGISTERS
// -------------------------------------------------    
always @ (posedge start_clk or posedge rst) begin	
  if (rst) begin
    cs_memsync <= INIT; 
    dll_rst    <= 1'b1;
    ddr_rst_d1 <= 1'b1;
    flag       <= 1'b0;
  end
  else begin
    cs_memsync <= ns_memsync;
    dll_rst    <= 1'b0;
    ddr_rst_d1 <= 1'b0;
    flag       <= flag_d;
  end
end

// -------------------------------------------------     
//  RESET SEQUENCE ONE-HOT FSM
// -------------------------------------------------   
always @ (*) begin

  case(cs_memsync) 		/* synthesis full_case parallel_case */

    // INITIAL STATE
    INIT: begin     
      // Wait for DDRDLL lock
      if (lock_d2 && (flag==0) && (count == COUNT_LOCK)) begin
          ns_memsync = FREEZE;
          flag_d     = flag;
      end
      else if ( (flag!=0 ) && (count==COUNT_8T) ) begin
        if (flag[1]) begin
          ns_memsync = READY;
          flag_d     = flag;
          end
        else if (flag[0]) begin
          ns_memsync = PAUSE;
          flag_d     = 2'd0;          
        end
      end
      else begin
        ns_memsync = cs_memsync;
        flag_d     = flag;
      end
    end

    // ASSERT FREEZE STATE
    FREEZE: begin    
      if (count == COUNT_4T) begin
        if (flag[0]) begin
          ns_memsync = INIT;
          flag_d     = flag;
          end
        else begin
          ns_memsync = STOP;
          flag_d     = flag;
          end
      end
      else begin
        ns_memsync = cs_memsync;
        flag_d     = flag;
      end      
    end

    // ASSERT STOP STATE
    STOP: begin
      if (count == COUNT_4T) begin
        if (flag[0]) begin
          ns_memsync = FREEZE;
          flag_d     = flag;
        end
        else begin
          ns_memsync = DDR;
          flag_d     = flag;
        end
      end
      else begin
        ns_memsync = cs_memsync;
        flag_d     = flag;
      end 
    end

    // ASSERT DDR_RST STATE
    DDR: begin
      flag_d = 2'd1;
      if (count == COUNT_4T) begin
        ns_memsync = STOP;
      end
      else begin
        ns_memsync = cs_memsync;
      end 
    end

    // ASSERT PAUSE STATE
    PAUSE: begin
      if (count == COUNT_4T) begin
        if (flag[0]) begin
          ns_memsync = INIT;
          flag_d     = 2'd2;
        end
        else begin
          ns_memsync = UDDCNTLN;
          flag_d     = flag;
        end
      end
      else begin
        ns_memsync = cs_memsync;
        flag_d     = flag;
      end 
    end

    // ASSERT UDDCNTLN STATE
    UDDCNTLN: begin
      flag_d = 2'd1;
      if (count == COUNT_4T) begin
        ns_memsync = PAUSE;
      end
      else begin
        ns_memsync = cs_memsync;
      end 
    end
    
    // ASSERT READY STATE
    READY: begin
      flag_d = 2'd0;
      // Check if DDRDLL is still locked
      if (!lock_d2) begin
        ns_memsync = INIT;
      end
      // Check if there is an update request
      else if (update) begin
        ns_memsync = UPDATE_PAUSE;
      end
      else begin
        ns_memsync = cs_memsync;
      end
    end
    
    // ASSERT PAUSE STATE during code update
    UPDATE_PAUSE: begin
      if (count == COUNT_4T) begin
        if (flag[0]) begin
          ns_memsync = READY;
          flag_d     = flag;
        end
        else begin
          ns_memsync = UPDATE_UDDCNTLN;
          flag_d     = flag;
        end
      end
      else begin
        ns_memsync = cs_memsync;
        flag_d     = flag;
      end 
    end

    // ASSERT UDDCNTLN STATE during code update
    UPDATE_UDDCNTLN: begin
      flag_d = 2'd1;
      if (count == COUNT_4T) begin
        ns_memsync = UPDATE_PAUSE;
      end
      else begin
        ns_memsync = cs_memsync;
      end 
    end
    
    // Default State
    default: begin
      ns_memsync = cs_memsync;
      flag_d     = flag;
    end
    
  endcase
end


// ------------------------------------------------- 
//  COUNTER
// ------------------------------------------------- 

always @(posedge start_clk or posedge rst) begin
  if (rst) begin
    count <= 'h0;
  end
  else if ((counter_4t && (count==COUNT_4T)) || 
          ((cs_memsync==INIT) && !lock_d2) || 
          ((flag==0) && (count==COUNT_LOCK)) ||
          ((cs_memsync==READY)&&ready))
  begin
    count <= 'h0;
  end
  else begin
    count <= count + 1;
  end
end

endmodule //mem_sync
