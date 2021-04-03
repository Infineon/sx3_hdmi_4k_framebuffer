// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.2.446
// Netlist written on Fri Mar 12 11:17:36 2021
//
// Verilog Description of module hdmi_uv_fifo
//

module hdmi_uv_fifo (Data, WrClock, RdClock, WrEn, RdEn, Reset, 
            RPReset, Q, RCNT, Empty, Full, AlmostEmpty) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(8[8:20])
    input [15:0]Data;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(10[23:27])
    input WrClock;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(11[16:23])
    input RdClock;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(12[16:23])
    input WrEn;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(13[16:20])
    input RdEn;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(14[16:20])
    input Reset;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(15[16:21])
    input RPReset;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(16[16:23])
    output [63:0]Q;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(17[24:25])
    output [9:0]RCNT;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(18[23:27])
    output Empty;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(19[17:22])
    output Full;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(20[17:21])
    output AlmostEmpty;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(21[17:28])
    
    wire WrClock /* synthesis is_clock=1, SET_AS_NETWORK=WrClock */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(11[16:23])
    wire RdClock /* synthesis is_clock=1, SET_AS_NETWORK=RdClock */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(12[16:23])
    
    wire invout_1, invout_0, w_g2b_xor_cluster_1, r_g2b_xor_cluster_1, 
        w_gdata_2, w_gdata_3, w_gdata_4, w_gdata_5, w_gdata_6, w_gdata_7, 
        w_gdata_8, w_gdata_9, w_gdata_10, wptr_0, wptr_1, wptr_2, 
        wptr_3, wptr_4, wptr_5, wptr_6, wptr_7, wptr_8, wptr_9, 
        wptr_10, wptr_11, r_gdata_0, r_gdata_1, r_gdata_2, r_gdata_3, 
        r_gdata_4, r_gdata_5, r_gdata_6, r_gdata_7, r_gdata_8, rptr_9, 
        w_gcount_2, w_gcount_3, w_gcount_4, w_gcount_5, w_gcount_6, 
        w_gcount_7, w_gcount_8, w_gcount_9, w_gcount_10, w_gcount_11, 
        r_gcount_0, r_gcount_1, r_gcount_2, r_gcount_3, r_gcount_4, 
        r_gcount_5, r_gcount_6, r_gcount_7, r_gcount_8, r_gcount_9, 
        w_gcount_r22, w_gcount_r2, w_gcount_r23, w_gcount_r3, w_gcount_r24, 
        w_gcount_r4, w_gcount_r25, w_gcount_r5, w_gcount_r26, w_gcount_r6, 
        w_gcount_r27, w_gcount_r7, w_gcount_r28, w_gcount_r8, w_gcount_r29, 
        w_gcount_r9, w_gcount_r210, w_gcount_r10, w_gcount_r211, w_gcount_r11, 
        r_gcount_w20, r_gcount_w0, r_gcount_w21, r_gcount_w1, r_gcount_w22, 
        r_gcount_w2, r_gcount_w23, r_gcount_w3, r_gcount_w24, r_gcount_w4, 
        r_gcount_w25, r_gcount_w5, r_gcount_w26, r_gcount_w6, r_gcount_w27, 
        r_gcount_w7, r_gcount_w28, r_gcount_w8, r_gcount_w29, r_gcount_w9, 
        rRst, ae_d, iwcount_0, iwcount_1, w_gctr_ci, iwcount_2, 
        iwcount_3, co0, iwcount_4, iwcount_5, co1, iwcount_6, iwcount_7, 
        co2, iwcount_8, iwcount_9, co3, iwcount_10, iwcount_11, 
        co4, wcount_11, ircount_0, ircount_1, r_gctr_ci, ircount_2, 
        ircount_3, co0_1, ircount_4, ircount_5, co1_1, ircount_6, 
        ircount_7, co2_1, ircount_8, ircount_9, co3_1, rcount_9, 
        rfill_sub_0, rptr_0, precin, rfill_sub_1, rfill_sub_2, rptr_2, 
        rptr_1, co0_2, rfill_sub_3, rfill_sub_4, rptr_4, rptr_3, 
        co1_2, rfill_sub_5, rfill_sub_6, rptr_6, rptr_5, co2_2, 
        rfill_sub_7, rfill_sub_8, rptr_8, rptr_7, co3_2, rfill_sub_9, 
        rfill_sub_msb, co4_2, cmp_ci, rcount_0, rcount_1, co0_3, 
        rcount_2, rcount_3, co1_3, rcount_4, rcount_5, co2_3, rcount_6, 
        rcount_7, co3_3, empty_cmp_clr, rcount_8, empty_cmp_set, empty_d, 
        empty_d_c, wren_i, cmp_ci_1, wcount_0, wcount_1, co0_4, 
        rcount_w0, rcount_w1, wcount_2, wcount_3, co1_4, rcount_w2, 
        rcount_w3, wcount_4, wcount_5, co2_4, rcount_w4, rcount_w5, 
        wcount_6, wcount_7, co3_4, r_g2b_xor_cluster_0, rcount_w7, 
        wcount_8, wcount_9, co4_3, rcount_w8, full_cmp_clr, wcount_10, 
        full_cmp_set, full_d, full_d_c, iae_setcount_0, iae_setcount_1, 
        ae_set_ctr_ci, iae_setcount_2, iae_setcount_3, co0_5, iae_setcount_4, 
        iae_setcount_5, co1_5, iae_setcount_6, iae_setcount_7, co2_5, 
        iae_setcount_8, iae_setcount_9, co3_5, ae_setcount_9, cmp_ci_2, 
        ae_setcount_0, ae_setcount_1, co0_6, ae_setcount_2, ae_setcount_3, 
        co1_6, ae_setcount_4, ae_setcount_5, co2_6, ae_setcount_6, 
        ae_setcount_7, co3_6, ae_set_cmp_clr, ae_setcount_8, ae_set_cmp_set, 
        ae_set_d, ae_set_d_c, iae_clrcount_0, iae_clrcount_1, ae_clr_ctr_ci, 
        iae_clrcount_2, iae_clrcount_3, co0_7, iae_clrcount_4, iae_clrcount_5, 
        co1_7, iae_clrcount_6, iae_clrcount_7, co2_7, iae_clrcount_8, 
        iae_clrcount_9, co3_7, ae_clrcount_9, rden_i, cmp_ci_3, wcount_r2, 
        wcount_r3, ae_clrcount_0, ae_clrcount_1, co0_8, wcount_r4, 
        wcount_r5, ae_clrcount_2, ae_clrcount_3, co1_8, wcount_r6, 
        wcount_r7, ae_clrcount_4, ae_clrcount_5, co2_8, w_g2b_xor_cluster_0, 
        wcount_r9, ae_clrcount_6, ae_clrcount_7, co3_8, wcount_r10, 
        ae_clr_cmp_clr, ae_clrcount_8, ae_clr_cmp_set, ae_clr_d, scuba_vhi, 
        scuba_vlo, ae_clr_d_c;
    
    INV INV_1 (.A(Full), .Z(invout_1));
    AND2 AND2_t23 (.A(WrEn), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(330[10:55])
    XOR2 XOR2_t14 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(352[10:62])
    XOR2 XOR2_t15 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(350[10:62])
    XOR2 XOR2_t12 (.A(wcount_8), .B(wcount_9), .Z(w_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(356[10:62])
    XOR2 XOR2_t13 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(354[10:62])
    FD1P3DX FF_141 (.D(iwcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(602[13] 603[22])
    defparam FF_141.GSR = "ENABLED";
    FD1P3DX FF_140 (.D(iwcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(606[13] 607[22])
    defparam FF_140.GSR = "ENABLED";
    FD1P3DX FF_139 (.D(iwcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(610[13] 611[22])
    defparam FF_139.GSR = "ENABLED";
    FD1P3DX FF_138 (.D(iwcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(614[13] 615[22])
    defparam FF_138.GSR = "ENABLED";
    FD1P3DX FF_137 (.D(iwcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(618[13] 619[22])
    defparam FF_137.GSR = "ENABLED";
    FD1P3DX FF_136 (.D(iwcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(622[13] 623[22])
    defparam FF_136.GSR = "ENABLED";
    FD1P3DX FF_135 (.D(iwcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(626[13] 627[22])
    defparam FF_135.GSR = "ENABLED";
    FD1P3DX FF_134 (.D(iwcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(630[13] 631[22])
    defparam FF_134.GSR = "ENABLED";
    FD1P3DX FF_133 (.D(iwcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(634[13] 635[22])
    defparam FF_133.GSR = "ENABLED";
    FD1P3DX FF_132 (.D(iwcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(638[13] 639[23])
    defparam FF_132.GSR = "ENABLED";
    FD1P3DX FF_131 (.D(iwcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(642[13] 643[23])
    defparam FF_131.GSR = "ENABLED";
    FD1P3DX FF_128 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(654[13] 655[24])
    defparam FF_128.GSR = "ENABLED";
    INV INV_0 (.A(Empty), .Z(invout_0));
    AND2 AND2_t22 (.A(RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(334[10:55])
    FD1P3DX FF_127 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(658[13] 659[24])
    defparam FF_127.GSR = "ENABLED";
    FD1P3DX FF_126 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(662[13] 663[24])
    defparam FF_126.GSR = "ENABLED";
    FD1P3DX FF_125 (.D(w_gdata_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(666[13] 667[24])
    defparam FF_125.GSR = "ENABLED";
    FD1P3DX FF_124 (.D(w_gdata_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(670[13] 671[24])
    defparam FF_124.GSR = "ENABLED";
    FD1P3DX FF_123 (.D(w_gdata_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(674[13] 675[24])
    defparam FF_123.GSR = "ENABLED";
    FD1P3DX FF_122 (.D(w_gdata_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(678[13] 679[24])
    defparam FF_122.GSR = "ENABLED";
    FD1P3DX FF_121 (.D(w_gdata_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(682[13] 683[24])
    defparam FF_121.GSR = "ENABLED";
    FD1P3DX FF_120 (.D(w_gdata_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(686[13] 687[25])
    defparam FF_120.GSR = "ENABLED";
    FD1P3DX FF_119 (.D(wcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(690[13] 691[25])
    defparam FF_119.GSR = "ENABLED";
    FD1P3DX FF_118 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(694[13] 695[20])
    defparam FF_118.GSR = "ENABLED";
    FD1P3DX FF_117 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(698[13] 699[20])
    defparam FF_117.GSR = "ENABLED";
    FD1P3DX FF_116 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(702[13] 703[20])
    defparam FF_116.GSR = "ENABLED";
    FD1P3DX FF_115 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(706[13] 707[20])
    defparam FF_115.GSR = "ENABLED";
    FD1P3DX FF_114 (.D(wcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(710[13] 711[20])
    defparam FF_114.GSR = "ENABLED";
    FD1P3DX FF_113 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(714[13] 715[20])
    defparam FF_113.GSR = "ENABLED";
    FD1P3DX FF_112 (.D(wcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(718[13] 719[20])
    defparam FF_112.GSR = "ENABLED";
    FD1P3DX FF_111 (.D(wcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(722[13] 723[20])
    defparam FF_111.GSR = "ENABLED";
    FD1P3DX FF_110 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(726[13] 727[20])
    defparam FF_110.GSR = "ENABLED";
    FD1P3DX FF_109 (.D(wcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(730[13] 731[20])
    defparam FF_109.GSR = "ENABLED";
    FD1P3DX FF_108 (.D(wcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(734[13] 735[21])
    defparam FF_108.GSR = "ENABLED";
    FD1P3DX FF_107 (.D(wcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(738[13] 739[21])
    defparam FF_107.GSR = "ENABLED";
    FD1P3BX FF_106 (.D(ircount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(742[13] 743[22])
    defparam FF_106.GSR = "ENABLED";
    FD1P3DX FF_105 (.D(ircount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(746[13] 747[22])
    defparam FF_105.GSR = "ENABLED";
    FD1P3DX FF_104 (.D(ircount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(750[13] 751[22])
    defparam FF_104.GSR = "ENABLED";
    FD1P3DX FF_103 (.D(ircount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(754[13] 755[22])
    defparam FF_103.GSR = "ENABLED";
    FD1P3DX FF_102 (.D(ircount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(758[13] 759[22])
    defparam FF_102.GSR = "ENABLED";
    FD1P3DX FF_101 (.D(ircount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(762[13] 763[22])
    defparam FF_101.GSR = "ENABLED";
    FD1P3DX FF_100 (.D(ircount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(766[13] 767[22])
    defparam FF_100.GSR = "ENABLED";
    FD1P3DX FF_99 (.D(ircount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(770[13] 771[22])
    defparam FF_99.GSR = "ENABLED";
    FD1P3DX FF_98 (.D(ircount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(774[13] 775[22])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(ircount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(778[13] 779[22])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(r_gdata_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(782[13] 783[24])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(r_gdata_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(786[13] 787[24])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(r_gdata_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(790[13] 791[24])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(r_gdata_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(794[13] 795[24])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(r_gdata_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(798[13] 799[24])
    defparam FF_92.GSR = "ENABLED";
    FD1P3DX FF_91 (.D(r_gdata_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(802[13] 803[24])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(r_gdata_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(806[13] 807[24])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(r_gdata_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(810[13] 811[24])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(r_gdata_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(814[13] 815[24])
    defparam FF_88.GSR = "ENABLED";
    FD1P3DX FF_87 (.D(rcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(818[13:87])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(rcount_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(821[13:83])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(rcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(824[13:83])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(rcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(827[13:83])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(rcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(830[13:83])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(rcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(833[13:83])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(rcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(836[13:83])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(rcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(839[13:83])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(rcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(842[13:83])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(rcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(845[13:83])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(rcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(848[13:83])
    defparam FF_77.GSR = "ENABLED";
    FD1S3DX FF_74 (.D(w_gcount_2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(857[13:78])
    defparam FF_74.GSR = "ENABLED";
    XOR2 XOR2_t18 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(344[10:62])
    OR2 OR2_t21 (.A(Reset), .B(RPReset), .Z(rRst)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(338[9:51])
    FD1S3DX FF_73 (.D(w_gcount_3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(860[13:78])
    defparam FF_73.GSR = "ENABLED";
    FD1S3DX FF_72 (.D(w_gcount_4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(863[13:78])
    defparam FF_72.GSR = "ENABLED";
    FD1S3DX FF_71 (.D(w_gcount_5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(866[13:78])
    defparam FF_71.GSR = "ENABLED";
    FD1S3DX FF_70 (.D(w_gcount_6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(869[13:78])
    defparam FF_70.GSR = "ENABLED";
    FD1S3DX FF_69 (.D(w_gcount_7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(872[13:78])
    defparam FF_69.GSR = "ENABLED";
    FD1S3DX FF_68 (.D(w_gcount_8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(875[13:78])
    defparam FF_68.GSR = "ENABLED";
    FD1S3DX FF_67 (.D(w_gcount_9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(878[13:78])
    defparam FF_67.GSR = "ENABLED";
    FD1S3DX FF_66 (.D(w_gcount_10), .CK(RdClock), .CD(Reset), .Q(w_gcount_r10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(881[13:80])
    defparam FF_66.GSR = "ENABLED";
    FD1S3DX FF_65 (.D(w_gcount_11), .CK(RdClock), .CD(Reset), .Q(w_gcount_r11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(884[13:80])
    defparam FF_65.GSR = "ENABLED";
    FD1S3DX FF_64 (.D(r_gcount_0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(887[13:77])
    defparam FF_64.GSR = "ENABLED";
    FD1S3DX FF_63 (.D(r_gcount_1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(890[13:77])
    defparam FF_63.GSR = "ENABLED";
    FD1S3DX FF_62 (.D(r_gcount_2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(893[13:77])
    defparam FF_62.GSR = "ENABLED";
    FD1S3DX FF_61 (.D(r_gcount_3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(896[13:77])
    defparam FF_61.GSR = "ENABLED";
    FD1S3DX FF_60 (.D(r_gcount_4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(899[13:77])
    defparam FF_60.GSR = "ENABLED";
    FD1S3DX FF_59 (.D(r_gcount_5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(902[13:77])
    defparam FF_59.GSR = "ENABLED";
    FD1S3DX FF_58 (.D(r_gcount_6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(905[13:77])
    defparam FF_58.GSR = "ENABLED";
    FD1S3DX FF_57 (.D(r_gcount_7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(908[13:77])
    defparam FF_57.GSR = "ENABLED";
    FD1S3DX FF_56 (.D(r_gcount_8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(911[13:77])
    defparam FF_56.GSR = "ENABLED";
    FD1S3DX FF_55 (.D(r_gcount_9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(914[13:77])
    defparam FF_55.GSR = "ENABLED";
    FD1S3DX FF_52 (.D(w_gcount_r2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(923[13:80])
    defparam FF_52.GSR = "ENABLED";
    XOR2 XOR2_t16 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(348[10:62])
    XOR2 XOR2_t17 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(346[10:62])
    FD1S3DX FF_51 (.D(w_gcount_r3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(926[13:80])
    defparam FF_51.GSR = "ENABLED";
    FD1S3DX FF_50 (.D(w_gcount_r4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(929[13:80])
    defparam FF_50.GSR = "ENABLED";
    FD1S3DX FF_49 (.D(w_gcount_r5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(932[13:80])
    defparam FF_49.GSR = "ENABLED";
    FD1S3DX FF_48 (.D(w_gcount_r6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(935[13:80])
    defparam FF_48.GSR = "ENABLED";
    FD1S3DX FF_47 (.D(w_gcount_r7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(938[13:80])
    defparam FF_47.GSR = "ENABLED";
    FD1S3DX FF_46 (.D(w_gcount_r8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(941[13:80])
    defparam FF_46.GSR = "ENABLED";
    FD1S3DX FF_45 (.D(w_gcount_r9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(944[13:80])
    defparam FF_45.GSR = "ENABLED";
    FD1S3DX FF_44 (.D(w_gcount_r10), .CK(RdClock), .CD(Reset), .Q(w_gcount_r210)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(947[13:82])
    defparam FF_44.GSR = "ENABLED";
    FD1S3DX FF_43 (.D(w_gcount_r11), .CK(RdClock), .CD(Reset), .Q(w_gcount_r211)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(950[13:82])
    defparam FF_43.GSR = "ENABLED";
    FD1S3DX FF_42 (.D(r_gcount_w0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(953[13:79])
    defparam FF_42.GSR = "ENABLED";
    FD1S3DX FF_41 (.D(r_gcount_w1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(956[13:79])
    defparam FF_41.GSR = "ENABLED";
    FD1S3DX FF_40 (.D(r_gcount_w2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(959[13:79])
    defparam FF_40.GSR = "ENABLED";
    FD1S3DX FF_39 (.D(r_gcount_w3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(962[13:79])
    defparam FF_39.GSR = "ENABLED";
    FD1S3DX FF_38 (.D(r_gcount_w4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(965[13:79])
    defparam FF_38.GSR = "ENABLED";
    FD1S3DX FF_37 (.D(r_gcount_w5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(968[13:79])
    defparam FF_37.GSR = "ENABLED";
    FD1S3DX FF_36 (.D(r_gcount_w6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(971[13:79])
    defparam FF_36.GSR = "ENABLED";
    FD1S3DX FF_35 (.D(r_gcount_w7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(974[13:79])
    defparam FF_35.GSR = "ENABLED";
    FD1S3DX FF_34 (.D(r_gcount_w8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(977[13:79])
    defparam FF_34.GSR = "ENABLED";
    FD1S3DX FF_33 (.D(r_gcount_w9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(980[13:79])
    defparam FF_33.GSR = "ENABLED";
    FD1S3DX FF_32 (.D(rfill_sub_0), .CK(RdClock), .CD(rRst), .Q(RCNT[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(983[13:74])
    defparam FF_32.GSR = "ENABLED";
    FD1S3DX FF_31 (.D(rfill_sub_1), .CK(RdClock), .CD(rRst), .Q(RCNT[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(986[13:74])
    defparam FF_31.GSR = "ENABLED";
    FD1S3DX FF_30 (.D(rfill_sub_2), .CK(RdClock), .CD(rRst), .Q(RCNT[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(989[13:74])
    defparam FF_30.GSR = "ENABLED";
    FD1S3DX FF_29 (.D(rfill_sub_3), .CK(RdClock), .CD(rRst), .Q(RCNT[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(992[13:74])
    defparam FF_29.GSR = "ENABLED";
    FD1S3DX FF_28 (.D(rfill_sub_4), .CK(RdClock), .CD(rRst), .Q(RCNT[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(995[13:74])
    defparam FF_28.GSR = "ENABLED";
    FD1S3DX FF_27 (.D(rfill_sub_5), .CK(RdClock), .CD(rRst), .Q(RCNT[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(998[13:74])
    defparam FF_27.GSR = "ENABLED";
    FD1S3DX FF_26 (.D(rfill_sub_6), .CK(RdClock), .CD(rRst), .Q(RCNT[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1001[13:74])
    defparam FF_26.GSR = "ENABLED";
    FD1S3DX FF_25 (.D(rfill_sub_7), .CK(RdClock), .CD(rRst), .Q(RCNT[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1004[13:74])
    defparam FF_25.GSR = "ENABLED";
    FD1S3DX FF_24 (.D(rfill_sub_8), .CK(RdClock), .CD(rRst), .Q(RCNT[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1007[13:74])
    defparam FF_24.GSR = "ENABLED";
    FD1S3DX FF_23 (.D(rfill_sub_9), .CK(RdClock), .CD(rRst), .Q(RCNT[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1010[13:74])
    defparam FF_23.GSR = "ENABLED";
    FD1S3BX FF_22 (.D(empty_d), .CK(RdClock), .PD(rRst), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1013[13:70])
    defparam FF_22.GSR = "ENABLED";
    FD1S3DX FF_21 (.D(full_d), .CK(WrClock), .CD(Reset), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1016[13:69])
    defparam FF_21.GSR = "ENABLED";
    FD1P3BX FF_20 (.D(iae_setcount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1019[13] 1020[27])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(iae_setcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1023[13] 1024[27])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(iae_setcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1027[13] 1028[27])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(iae_setcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1031[13] 1032[27])
    defparam FF_17.GSR = "ENABLED";
    FD1P3BX FF_16 (.D(iae_setcount_4), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1035[13] 1036[27])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(iae_setcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1039[13] 1040[27])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(iae_setcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1043[13] 1044[27])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(iae_setcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1047[13] 1048[27])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(iae_setcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1051[13] 1052[27])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(iae_setcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1055[13] 1056[27])
    defparam FF_11.GSR = "ENABLED";
    FD1P3BX FF_10 (.D(iae_clrcount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1059[13] 1060[27])
    defparam FF_10.GSR = "ENABLED";
    FD1P3BX FF_9 (.D(iae_clrcount_1), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1063[13] 1064[27])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(iae_clrcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1067[13] 1068[27])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(iae_clrcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1071[13] 1072[27])
    defparam FF_7.GSR = "ENABLED";
    FD1P3BX FF_6 (.D(iae_clrcount_4), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1075[13] 1076[27])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(iae_clrcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1079[13] 1080[27])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(iae_clrcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1083[13] 1084[27])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(iae_clrcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1087[13] 1088[27])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(iae_clrcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1091[13] 1092[27])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(iae_clrcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1095[13] 1096[27])
    defparam FF_1.GSR = "ENABLED";
    FD1S3BX FF_0 (.D(ae_d), .CK(RdClock), .PD(rRst), .Q(AlmostEmpty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1099[13:61])
    defparam FF_0.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1106[11] 1108[48])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_gctr_ci), .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1114[11] 1116[69])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1122[11] 1124[63])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1130[11] 1132[63])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C w_gctr_3 (.A0(wcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .COUT(co3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1138[11] 1140[63])
    defparam w_gctr_3.INIT0 = 16'b0110011010101010;
    defparam w_gctr_3.INIT1 = 16'b0110011010101010;
    defparam w_gctr_3.INJECT1_0 = "NO";
    defparam w_gctr_3.INJECT1_1 = "NO";
    CCU2C w_gctr_4 (.A0(wcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3), .COUT(co4), .S0(iwcount_8), .S1(iwcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1146[11] 1148[63])
    defparam w_gctr_4.INIT0 = 16'b0110011010101010;
    defparam w_gctr_4.INIT1 = 16'b0110011010101010;
    defparam w_gctr_4.INJECT1_0 = "NO";
    defparam w_gctr_4.INJECT1_1 = "NO";
    CCU2C w_gctr_5 (.A0(wcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_11), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4), .S0(iwcount_10), .S1(iwcount_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1154[11] 1156[65])
    defparam w_gctr_5.INIT0 = 16'b0110011010101010;
    defparam w_gctr_5.INIT1 = 16'b0110011010101010;
    defparam w_gctr_5.INJECT1_0 = "NO";
    defparam w_gctr_5.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1162[11] 1164[48])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_gctr_ci), .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1170[11] 1172[71])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1178[11] 1180[67])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .COUT(co2_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1186[11] 1188[67])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_3 (.A0(rcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_1), .COUT(co3_1), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1194[11] 1196[67])
    defparam r_gctr_3.INIT0 = 16'b0110011010101010;
    defparam r_gctr_3.INIT1 = 16'b0110011010101010;
    defparam r_gctr_3.INJECT1_0 = "NO";
    defparam r_gctr_3.INJECT1_1 = "NO";
    CCU2C r_gctr_4 (.A0(rcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_1), .S0(ircount_8), .S1(ircount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1202[11] 1204[67])
    defparam r_gctr_4.INIT0 = 16'b0110011010101010;
    defparam r_gctr_4.INIT1 = 16'b0110011010101010;
    defparam r_gctr_4.INJECT1_0 = "NO";
    defparam r_gctr_4.INJECT1_1 = "NO";
    CCU2C precin_inst380 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(precin)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1210[11] 1212[61])
    defparam precin_inst380.INIT0 = 16'b0000000000000000;
    defparam precin_inst380.INIT1 = 16'b0000000000000000;
    defparam precin_inst380.INJECT1_0 = "NO";
    defparam precin_inst380.INJECT1_1 = "NO";
    CCU2C rfill_0 (.A0(scuba_vhi), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r2), .B1(rptr_0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(precin), .COUT(co0_2), .S1(rfill_sub_0)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1218[11] 1220[61])
    defparam rfill_0.INIT0 = 16'b1001100110101010;
    defparam rfill_0.INIT1 = 16'b1001100110101010;
    defparam rfill_0.INJECT1_0 = "NO";
    defparam rfill_0.INJECT1_1 = "NO";
    CCU2C rfill_1 (.A0(wcount_r3), .B0(rptr_1), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r4), .B1(rptr_2), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_2), .COUT(co1_2), .S0(rfill_sub_1), .S1(rfill_sub_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1226[11] 1228[71])
    defparam rfill_1.INIT0 = 16'b1001100110101010;
    defparam rfill_1.INIT1 = 16'b1001100110101010;
    defparam rfill_1.INJECT1_0 = "NO";
    defparam rfill_1.INJECT1_1 = "NO";
    CCU2C rfill_2 (.A0(wcount_r5), .B0(rptr_3), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r6), .B1(rptr_4), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_2), .COUT(co2_2), .S0(rfill_sub_3), .S1(rfill_sub_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1234[11] 1236[71])
    defparam rfill_2.INIT0 = 16'b1001100110101010;
    defparam rfill_2.INIT1 = 16'b1001100110101010;
    defparam rfill_2.INJECT1_0 = "NO";
    defparam rfill_2.INJECT1_1 = "NO";
    CCU2C rfill_3 (.A0(wcount_r7), .B0(rptr_5), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(w_g2b_xor_cluster_0), .B1(rptr_6), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_2), .COUT(co3_2), .S0(rfill_sub_5), .S1(rfill_sub_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1242[11] 1244[71])
    defparam rfill_3.INIT0 = 16'b1001100110101010;
    defparam rfill_3.INIT1 = 16'b1001100110101010;
    defparam rfill_3.INJECT1_0 = "NO";
    defparam rfill_3.INJECT1_1 = "NO";
    CCU2C rfill_4 (.A0(wcount_r9), .B0(rptr_7), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r10), .B1(rptr_8), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_2), .COUT(co4_2), .S0(rfill_sub_7), .S1(rfill_sub_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1250[11] 1252[71])
    defparam rfill_4.INIT0 = 16'b1001100110101010;
    defparam rfill_4.INIT1 = 16'b1001100110101010;
    defparam rfill_4.INJECT1_0 = "NO";
    defparam rfill_4.INJECT1_1 = "NO";
    CCU2C rfill_5 (.A0(rfill_sub_msb), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_2), .S0(rfill_sub_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1258[11] 1260[55])
    defparam rfill_5.INIT0 = 16'b1001100110101010;
    defparam rfill_5.INIT1 = 16'b1001100110101010;
    defparam rfill_5.INJECT1_0 = "NO";
    defparam rfill_5.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1266[11] 1268[45])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_1), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci), .COUT(co0_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1274[11] 1276[50])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_3), .B1(wcount_r5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_3), .COUT(co1_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1282[11] 1284[49])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_5), .B1(wcount_r7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_3), .COUT(co2_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1290[11] 1292[49])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_3 (.A0(rcount_6), .B0(w_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_7), .B1(wcount_r9), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_3), .COUT(co3_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1298[11] 1300[65])
    defparam empty_cmp_3.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_3.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_3.INJECT1_0 = "NO";
    defparam empty_cmp_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_4 (.A0(rcount_8), .B0(wcount_r10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(empty_cmp_set), .B1(empty_cmp_clr), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_3), .COUT(empty_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1306[11] 1308[69])
    defparam empty_cmp_4.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_4.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_4.INJECT1_0 = "NO";
    defparam empty_cmp_4.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(empty_d_c), .S0(empty_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1314[11] 1316[55])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1322[11] 1324[47])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1330[11] 1332[52])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(rcount_w0), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(rcount_w1), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_4), .COUT(co1_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1338[11] 1340[49])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w2), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(rcount_w3), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_4), .COUT(co2_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1346[11] 1348[49])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C full_cmp_3 (.A0(wcount_6), .B0(rcount_w4), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(rcount_w5), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_4), .COUT(co3_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1354[11] 1356[49])
    defparam full_cmp_3.INIT0 = 16'b1001100110101010;
    defparam full_cmp_3.INIT1 = 16'b1001100110101010;
    defparam full_cmp_3.INJECT1_0 = "NO";
    defparam full_cmp_3.INJECT1_1 = "NO";
    CCU2C full_cmp_4 (.A0(wcount_8), .B0(r_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wcount_9), .B1(rcount_w7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_4), .COUT(co4_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1362[11] 1364[65])
    defparam full_cmp_4.INIT0 = 16'b1001100110101010;
    defparam full_cmp_4.INIT1 = 16'b1001100110101010;
    defparam full_cmp_4.INJECT1_0 = "NO";
    defparam full_cmp_4.INJECT1_1 = "NO";
    CCU2C full_cmp_5 (.A0(wcount_10), .B0(rcount_w8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(full_cmp_set), .B1(full_cmp_clr), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_3), .COUT(full_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1370[11] 1372[68])
    defparam full_cmp_5.INIT0 = 16'b1001100110101010;
    defparam full_cmp_5.INIT1 = 16'b1001100110101010;
    defparam full_cmp_5.INJECT1_0 = "NO";
    defparam full_cmp_5.INJECT1_1 = "NO";
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(full_d_c), .S0(full_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1378[11] 1380[53])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(ae_set_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1386[11] 1388[68])
    defparam ae_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INJECT1_0 = "NO";
    defparam ae_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_0 (.A0(ae_setcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(ae_set_ctr_ci), .COUT(co0_5), .S0(iae_setcount_0), 
          .S1(iae_setcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1394[11] 1397[22])
    defparam ae_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INJECT1_0 = "NO";
    defparam ae_set_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_1 (.A0(ae_setcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_5), .COUT(co1_5), .S0(iae_setcount_2), 
          .S1(iae_setcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1403[11] 1406[22])
    defparam ae_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INJECT1_0 = "NO";
    defparam ae_set_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_2 (.A0(ae_setcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_5), .COUT(co2_5), .S0(iae_setcount_4), 
          .S1(iae_setcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1412[11] 1415[22])
    defparam ae_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INJECT1_0 = "NO";
    defparam ae_set_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_3 (.A0(ae_setcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_5), .COUT(co3_5), .S0(iae_setcount_6), 
          .S1(iae_setcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1421[11] 1424[22])
    defparam ae_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INJECT1_0 = "NO";
    defparam ae_set_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_4 (.A0(ae_setcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_5), .S0(iae_setcount_8), .S1(iae_setcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1430[11] 1433[22])
    defparam ae_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INJECT1_0 = "NO";
    defparam ae_set_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1439[11] 1441[47])
    defparam ae_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_0 (.A0(ae_setcount_0), .B0(wcount_r2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_1), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_2), .COUT(co0_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1447[11] 1449[68])
    defparam ae_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INJECT1_0 = "NO";
    defparam ae_set_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_1 (.A0(ae_setcount_2), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_3), .B1(wcount_r5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_6), .COUT(co1_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1455[11] 1457[65])
    defparam ae_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INJECT1_0 = "NO";
    defparam ae_set_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_2 (.A0(ae_setcount_4), .B0(wcount_r6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_5), .B1(wcount_r7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_6), .COUT(co2_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1463[11] 1465[65])
    defparam ae_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INJECT1_0 = "NO";
    defparam ae_set_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_3 (.A0(ae_setcount_6), .B0(w_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_7), .B1(wcount_r9), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_6), .COUT(co3_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1471[11] 1473[65])
    defparam ae_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INJECT1_0 = "NO";
    defparam ae_set_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_4 (.A0(ae_setcount_8), .B0(wcount_r10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_set_cmp_set), .B1(ae_set_cmp_clr), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_6), .COUT(ae_set_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1479[11] 1481[70])
    defparam ae_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INJECT1_0 = "NO";
    defparam ae_set_cmp_4.INJECT1_1 = "NO";
    CCU2C a2 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_set_d_c), .S0(ae_set_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1487[11] 1489[57])
    defparam a2.INIT0 = 16'b0110011010101010;
    defparam a2.INIT1 = 16'b0110011010101010;
    defparam a2.INJECT1_0 = "NO";
    defparam a2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(ae_clr_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1495[11] 1497[68])
    defparam ae_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INJECT1_0 = "NO";
    defparam ae_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_0 (.A0(ae_clrcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(ae_clr_ctr_ci), .COUT(co0_7), .S0(iae_clrcount_0), 
          .S1(iae_clrcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1503[11] 1506[22])
    defparam ae_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INJECT1_0 = "NO";
    defparam ae_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_1 (.A0(ae_clrcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_7), .COUT(co1_7), .S0(iae_clrcount_2), 
          .S1(iae_clrcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1512[11] 1515[22])
    defparam ae_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INJECT1_0 = "NO";
    defparam ae_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_2 (.A0(ae_clrcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_7), .COUT(co2_7), .S0(iae_clrcount_4), 
          .S1(iae_clrcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1521[11] 1524[22])
    defparam ae_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INJECT1_0 = "NO";
    defparam ae_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_3 (.A0(ae_clrcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_7), .COUT(co3_7), .S0(iae_clrcount_6), 
          .S1(iae_clrcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1530[11] 1533[22])
    defparam ae_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INJECT1_0 = "NO";
    defparam ae_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_4 (.A0(ae_clrcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_7), .S0(iae_clrcount_8), .S1(iae_clrcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1539[11] 1542[22])
    defparam ae_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INJECT1_0 = "NO";
    defparam ae_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1548[11] 1550[47])
    defparam ae_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_0 (.A0(ae_clrcount_0), .B0(wcount_r2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_1), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_3), .COUT(co0_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1556[11] 1558[68])
    defparam ae_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INJECT1_0 = "NO";
    defparam ae_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_1 (.A0(ae_clrcount_2), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_3), .B1(wcount_r5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_8), .COUT(co1_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1564[11] 1566[65])
    defparam ae_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INJECT1_0 = "NO";
    defparam ae_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_2 (.A0(ae_clrcount_4), .B0(wcount_r6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_5), .B1(wcount_r7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_8), .COUT(co2_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1572[11] 1574[65])
    defparam ae_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INJECT1_0 = "NO";
    defparam ae_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_3 (.A0(ae_clrcount_6), .B0(w_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_7), .B1(wcount_r9), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_8), .COUT(co3_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1580[11] 1582[65])
    defparam ae_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INJECT1_0 = "NO";
    defparam ae_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_4 (.A0(ae_clrcount_8), .B0(wcount_r10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clr_cmp_set), .B1(ae_clr_cmp_clr), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_8), .COUT(ae_clr_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1588[11] 1590[70])
    defparam ae_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INJECT1_0 = "NO";
    defparam ae_clr_cmp_4.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C a3 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_clr_d_c), .S0(ae_clr_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(1600[11] 1602[57])
    defparam a3.INIT0 = 16'b0110011010101010;
    defparam a3.INIT1 = 16'b0110011010101010;
    defparam a3.INJECT1_0 = "NO";
    defparam a3.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    XOR2 XOR2_t11 (.A(wcount_9), .B(wcount_10), .Z(w_gdata_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(358[10:63])
    XOR2 XOR2_t10 (.A(wcount_10), .B(wcount_11), .Z(w_gdata_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(360[10:65])
    XOR2 XOR2_t9 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(362[10:61])
    XOR2 XOR2_t8 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(364[10:61])
    XOR2 XOR2_t7 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(366[10:61])
    XOR2 XOR2_t6 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(368[10:61])
    XOR2 XOR2_t5 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(370[10:61])
    XOR2 XOR2_t4 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(372[10:61])
    XOR2 XOR2_t3 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(374[10:61])
    XOR2 XOR2_t2 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(376[10:61])
    XOR2 XOR2_t1 (.A(rcount_8), .B(rcount_9), .Z(r_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(378[10:61])
    ROM16X1A LUT4_32 (.AD0(w_gcount_r211), .AD1(w_gcount_r210), .AD2(w_gcount_r29), 
            .AD3(w_gcount_r28), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_32.initval = 16'b0110100110010110;
    ROM16X1A LUT4_31 (.AD0(w_gcount_r27), .AD1(w_gcount_r26), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_31.initval = 16'b0110100110010110;
    ROM16X1A LUT4_29 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_gcount_r211), 
            .AD3(w_gcount_r210), .DO0(wcount_r10)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_29.initval = 16'b0110100110010110;
    ROM16X1A LUT4_28 (.AD0(scuba_vlo), .AD1(w_gcount_r211), .AD2(w_gcount_r210), 
            .AD3(w_gcount_r29), .DO0(wcount_r9)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_28.initval = 16'b0110100110010110;
    ROM16X1A LUT4_27 (.AD0(wcount_r10), .AD1(w_gcount_r29), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_27.initval = 16'b0110100110010110;
    ROM16X1A LUT4_26 (.AD0(wcount_r9), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(wcount_r6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_26.initval = 16'b0110100110010110;
    ROM16X1A LUT4_25 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(wcount_r5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_25.initval = 16'b0110100110010110;
    ROM16X1A LUT4_24 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_24.initval = 16'b0110100110010110;
    ROM16X1A LUT4_23 (.AD0(scuba_vlo), .AD1(w_gcount_r23), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(w_gcount_r23), .AD1(w_gcount_r22), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(r_gcount_w29), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(r_gcount_w25), .AD1(r_gcount_w24), .AD2(r_gcount_w23), 
            .AD3(r_gcount_w22), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_gcount_w29), 
            .AD3(r_gcount_w28), .DO0(rcount_w8)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(scuba_vlo), .AD1(r_gcount_w29), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(rcount_w7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(rcount_w8), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(rcount_w5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(rcount_w7), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(rcount_w4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_13.initval = 16'b0110100110010110;
    ROM16X1A LUT4_12 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(rcount_w3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_12.initval = 16'b0110100110010110;
    ROM16X1A LUT4_11 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_11.initval = 16'b0110100110010110;
    ROM16X1A LUT4_10 (.AD0(scuba_vlo), .AD1(r_gcount_w21), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_10.initval = 16'b0110100110010110;
    ROM16X1A LUT4_9 (.AD0(r_gcount_w21), .AD1(r_gcount_w20), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_9.initval = 16'b0110100110010110;
    XOR2 XOR2_t0 (.A(w_gcount_r211), .B(rptr_9), .Z(rfill_sub_msb)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(476[10:68])
    ROM16X1A LUT4_8 (.AD0(scuba_vlo), .AD1(w_gcount_r211), .AD2(rcount_9), 
            .AD3(rptr_9), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_8.initval = 16'b0000010000010000;
    ROM16X1A LUT4_7 (.AD0(scuba_vlo), .AD1(w_gcount_r211), .AD2(rcount_9), 
            .AD3(rptr_9), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_7.initval = 16'b0001000000000100;
    ROM16X1A LUT4_6 (.AD0(scuba_vlo), .AD1(r_gcount_w29), .AD2(wcount_11), 
            .AD3(wptr_11), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_6.initval = 16'b0000000101000000;
    ROM16X1A LUT4_5 (.AD0(scuba_vlo), .AD1(r_gcount_w29), .AD2(wcount_11), 
            .AD3(wptr_11), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_5.initval = 16'b0100000000000001;
    ROM16X1A LUT4_4 (.AD0(rptr_9), .AD1(w_gcount_r211), .AD2(rcount_9), 
            .AD3(ae_setcount_9), .DO0(ae_set_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_4.initval = 16'b0001001111001000;
    ROM16X1A LUT4_3 (.AD0(rptr_9), .AD1(w_gcount_r211), .AD2(rcount_9), 
            .AD3(ae_setcount_9), .DO0(ae_set_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_3.initval = 16'b0010000000000100;
    ROM16X1A LUT4_2 (.AD0(rptr_9), .AD1(w_gcount_r211), .AD2(rcount_9), 
            .AD3(ae_clrcount_9), .DO0(ae_clr_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b0001001111001000;
    ROM16X1A LUT4_1 (.AD0(rptr_9), .AD1(w_gcount_r211), .AD2(rcount_9), 
            .AD3(ae_clrcount_9), .DO0(ae_clr_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b0010000000000100;
    ROM16X1A LUT4_0 (.AD0(scuba_vlo), .AD1(ae_clr_d), .AD2(ae_set_d), 
            .AD3(AlmostEmpty), .DO0(ae_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0100010001010000;
    DP16KD pdp_ram_0_0_1 (.DIA0(Data[0]), .DIA1(Data[1]), .DIA2(Data[2]), 
           .DIA3(Data[3]), .DIA4(Data[4]), .DIA5(Data[5]), .DIA6(Data[6]), 
           .DIA7(Data[7]), .DIA8(Data[8]), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(scuba_vlo), .ADA3(wptr_0), .ADA4(wptr_1), 
           .ADA5(wptr_2), .ADA6(wptr_3), .ADA7(wptr_4), .ADA8(wptr_5), 
           .ADA9(wptr_6), .ADA10(wptr_7), .ADA11(wptr_8), .ADA12(wptr_9), 
           .ADA13(wptr_10), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(scuba_vlo), .ADB4(scuba_vlo), 
           .ADB5(rptr_0), .ADB6(rptr_1), .ADB7(rptr_2), .ADB8(rptr_3), 
           .ADB9(rptr_4), .ADB10(rptr_5), .ADB11(rptr_6), .ADB12(rptr_7), 
           .ADB13(rptr_8), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOA0(Q[0]), .DOA1(Q[1]), .DOA2(Q[2]), .DOA3(Q[3]), 
           .DOA4(Q[4]), .DOA5(Q[5]), .DOA6(Q[6]), .DOA7(Q[7]), .DOA8(Q[8]), 
           .DOA9(Q[16]), .DOA10(Q[17]), .DOA11(Q[18]), .DOA12(Q[19]), 
           .DOA13(Q[20]), .DOA14(Q[21]), .DOA15(Q[22]), .DOA16(Q[23]), 
           .DOA17(Q[24]), .DOB0(Q[32]), .DOB1(Q[33]), .DOB2(Q[34]), 
           .DOB3(Q[35]), .DOB4(Q[36]), .DOB5(Q[37]), .DOB6(Q[38]), .DOB7(Q[39]), 
           .DOB8(Q[40]), .DOB9(Q[48]), .DOB10(Q[49]), .DOB11(Q[50]), 
           .DOB12(Q[51]), .DOB13(Q[52]), .DOB14(Q[53]), .DOB15(Q[54]), 
           .DOB16(Q[55]), .DOB17(Q[56])) /* synthesis MEM_LPC_FILE="hdmi_uv_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_0_1.DATA_WIDTH_A = 9;
    defparam pdp_ram_0_0_1.DATA_WIDTH_B = 36;
    defparam pdp_ram_0_0_1.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_0_1.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_0_1.RESETMODE = "SYNC";
    defparam pdp_ram_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_1.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_0_1.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_0_1.CSDECODE_A = "0b000";
    defparam pdp_ram_0_0_1.CSDECODE_B = "0b000";
    defparam pdp_ram_0_0_1.GSR = "ENABLED";
    defparam pdp_ram_0_0_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_1_0 (.DIA0(Data[9]), .DIA1(Data[10]), .DIA2(Data[11]), 
           .DIA3(Data[12]), .DIA4(Data[13]), .DIA5(Data[14]), .DIA6(Data[15]), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(scuba_vlo), .ADA3(wptr_0), .ADA4(wptr_1), 
           .ADA5(wptr_2), .ADA6(wptr_3), .ADA7(wptr_4), .ADA8(wptr_5), 
           .ADA9(wptr_6), .ADA10(wptr_7), .ADA11(wptr_8), .ADA12(wptr_9), 
           .ADA13(wptr_10), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(scuba_vlo), .ADB4(scuba_vlo), 
           .ADB5(rptr_0), .ADB6(rptr_1), .ADB7(rptr_2), .ADB8(rptr_3), 
           .ADB9(rptr_4), .ADB10(rptr_5), .ADB11(rptr_6), .ADB12(rptr_7), 
           .ADB13(rptr_8), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOA0(Q[9]), .DOA1(Q[10]), .DOA2(Q[11]), .DOA3(Q[12]), 
           .DOA4(Q[13]), .DOA5(Q[14]), .DOA6(Q[15]), .DOA9(Q[25]), .DOA10(Q[26]), 
           .DOA11(Q[27]), .DOA12(Q[28]), .DOA13(Q[29]), .DOA14(Q[30]), 
           .DOA15(Q[31]), .DOB0(Q[41]), .DOB1(Q[42]), .DOB2(Q[43]), 
           .DOB3(Q[44]), .DOB4(Q[45]), .DOB5(Q[46]), .DOB6(Q[47]), .DOB9(Q[57]), 
           .DOB10(Q[58]), .DOB11(Q[59]), .DOB12(Q[60]), .DOB13(Q[61]), 
           .DOB14(Q[62]), .DOB15(Q[63])) /* synthesis MEM_LPC_FILE="hdmi_uv_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_1_0.DATA_WIDTH_A = 9;
    defparam pdp_ram_0_1_0.DATA_WIDTH_B = 36;
    defparam pdp_ram_0_1_0.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_1_0.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_1_0.RESETMODE = "SYNC";
    defparam pdp_ram_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_1_0.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_1_0.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_1_0.CSDECODE_A = "0b000";
    defparam pdp_ram_0_1_0.CSDECODE_B = "0b000";
    defparam pdp_ram_0_1_0.GSR = "ENABLED";
    defparam pdp_ram_0_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INIT_DATA = "STATIC";
    FD1P3BX FF_142 (.D(iwcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/hdmi_uv_fifo/hdmi_uv_fifo.v(598[13] 599[22])
    defparam FF_142.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

