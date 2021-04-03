// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.2.446
// Netlist written on Fri Mar 12 11:17:28 2021
//
// Verilog Description of module cam_in_fifo
//

module cam_in_fifo (Data, WrClock, RdClock, WrEn, RdEn, Reset, RPReset, 
            Q, RCNT, Empty, Full) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(8[8:19])
    input [31:0]Data;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(10[23:27])
    input WrClock;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(11[16:23])
    input RdClock;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(12[16:23])
    input WrEn;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(13[16:20])
    input RdEn;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(14[16:20])
    input Reset;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(15[16:21])
    input RPReset;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(16[16:23])
    output [63:0]Q;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(17[24:25])
    output [10:0]RCNT;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(18[24:28])
    output Empty;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(19[17:22])
    output Full;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(20[17:21])
    
    wire WrClock /* synthesis is_clock=1, SET_AS_NETWORK=WrClock */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(11[16:23])
    wire RdClock /* synthesis is_clock=1, SET_AS_NETWORK=RdClock */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(12[16:23])
    
    wire invout_1, invout_0, w_g2b_xor_cluster_2_1, w_g2b_xor_cluster_1, 
        r_g2b_xor_cluster_2, r_g2b_xor_cluster_1, w_gdata_1, w_gdata_2, 
        w_gdata_3, w_gdata_4, w_gdata_5, w_gdata_6, w_gdata_7, w_gdata_8, 
        w_gdata_9, w_gdata_10, wptr_0, wptr_1, wptr_2, wptr_3, wptr_4, 
        wptr_5, wptr_6, wptr_7, wptr_8, wptr_9, wptr_10, wptr_11, 
        r_gdata_0, r_gdata_1, r_gdata_2, r_gdata_3, r_gdata_4, r_gdata_5, 
        r_gdata_6, r_gdata_7, r_gdata_8, r_gdata_9, rptr_10, w_gcount_1, 
        w_gcount_2, w_gcount_3, w_gcount_4, w_gcount_5, w_gcount_6, 
        w_gcount_7, w_gcount_8, w_gcount_9, w_gcount_10, w_gcount_11, 
        r_gcount_0, r_gcount_1, r_gcount_2, r_gcount_3, r_gcount_4, 
        r_gcount_5, r_gcount_6, r_gcount_7, r_gcount_8, r_gcount_9, 
        r_gcount_10, w_gcount_r21, w_gcount_r1, w_gcount_r22, w_gcount_r2, 
        w_gcount_r23, w_gcount_r3, w_gcount_r24, w_gcount_r4, w_gcount_r25, 
        w_gcount_r5, w_gcount_r26, w_gcount_r6, w_gcount_r27, w_gcount_r7, 
        w_gcount_r28, w_gcount_r8, w_gcount_r29, w_gcount_r9, w_gcount_r210, 
        w_gcount_r10, w_gcount_r211, w_gcount_r11, r_gcount_w20, r_gcount_w0, 
        r_gcount_w21, r_gcount_w1, r_gcount_w22, r_gcount_w2, r_gcount_w23, 
        r_gcount_w3, r_gcount_w24, r_gcount_w4, r_gcount_w25, r_gcount_w5, 
        r_gcount_w26, r_gcount_w6, r_gcount_w27, r_gcount_w7, r_gcount_w28, 
        r_gcount_w8, r_gcount_w29, r_gcount_w9, r_gcount_w210, r_gcount_w10, 
        rRst, iwcount_0, iwcount_1, w_gctr_ci, iwcount_2, iwcount_3, 
        co0, iwcount_4, iwcount_5, co1, iwcount_6, iwcount_7, co2, 
        iwcount_8, iwcount_9, co3, iwcount_10, iwcount_11, co4, 
        wcount_11, ircount_0, ircount_1, r_gctr_ci, ircount_2, ircount_3, 
        co0_1, ircount_4, ircount_5, co1_1, ircount_6, ircount_7, 
        co2_1, ircount_8, ircount_9, co3_1, ircount_10, co4_1, rcount_10, 
        rfill_sub_0, rptr_0, precin, rfill_sub_1, rfill_sub_2, rptr_2, 
        rptr_1, co0_2, rfill_sub_3, rfill_sub_4, rptr_4, rptr_3, 
        co1_2, rfill_sub_5, rfill_sub_6, rptr_6, rptr_5, co2_2, 
        rfill_sub_7, rfill_sub_8, rptr_8, rptr_7, co3_2, rfill_sub_9, 
        rfill_sub_10, rptr_9, rfill_sub_msb, co4_2, rden_i, cmp_ci, 
        wcount_r1, wcount_r2, rcount_0, rcount_1, co0_3, wcount_r3, 
        wcount_r4, rcount_2, rcount_3, co1_3, wcount_r5, wcount_r6, 
        rcount_4, rcount_5, co2_3, wcount_r7, w_g2b_xor_cluster_0, 
        rcount_6, rcount_7, co3_3, wcount_r9, wcount_r10, rcount_8, 
        rcount_9, co4_3, empty_cmp_clr, empty_cmp_set, empty_d, empty_d_c, 
        wren_i, cmp_ci_1, rcount_w0, wcount_0, wcount_1, co0_4, 
        rcount_w1, rcount_w2, wcount_2, wcount_3, co1_4, rcount_w3, 
        rcount_w4, wcount_4, wcount_5, co2_4, rcount_w5, rcount_w6, 
        wcount_6, wcount_7, co3_4, r_g2b_xor_cluster_0, rcount_w8, 
        wcount_8, wcount_9, co4_4, rcount_w9, full_cmp_clr, wcount_10, 
        full_cmp_set, full_d, scuba_vhi, scuba_vlo, full_d_c;
    
    AND2 AND2_t24 (.A(WrEn), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(271[10:55])
    OR2 OR2_t22 (.A(Reset), .B(RPReset), .Z(rRst)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(279[9:51])
    XOR2 XOR2_t19 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(285[10:62])
    FD1P3DX FF_126 (.D(iwcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(612[13] 613[22])
    defparam FF_126.GSR = "ENABLED";
    FD1P3DX FF_125 (.D(iwcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(616[13] 617[22])
    defparam FF_125.GSR = "ENABLED";
    FD1P3DX FF_124 (.D(iwcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(620[13] 621[22])
    defparam FF_124.GSR = "ENABLED";
    FD1P3DX FF_123 (.D(iwcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(624[13] 625[22])
    defparam FF_123.GSR = "ENABLED";
    FD1P3DX FF_122 (.D(iwcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(628[13] 629[22])
    defparam FF_122.GSR = "ENABLED";
    FD1P3DX FF_121 (.D(iwcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(632[13] 633[22])
    defparam FF_121.GSR = "ENABLED";
    FD1P3DX FF_120 (.D(iwcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(636[13] 637[22])
    defparam FF_120.GSR = "ENABLED";
    FD1P3DX FF_119 (.D(iwcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(640[13] 641[22])
    defparam FF_119.GSR = "ENABLED";
    FD1P3DX FF_118 (.D(iwcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(644[13] 645[22])
    defparam FF_118.GSR = "ENABLED";
    FD1P3DX FF_117 (.D(iwcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(648[13] 649[23])
    defparam FF_117.GSR = "ENABLED";
    FD1P3DX FF_116 (.D(iwcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(652[13] 653[23])
    defparam FF_116.GSR = "ENABLED";
    FD1P3DX FF_114 (.D(w_gdata_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(660[13] 661[24])
    defparam FF_114.GSR = "ENABLED";
    INV INV_1 (.A(Full), .Z(invout_1));
    FD1P3DX FF_113 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(664[13] 665[24])
    defparam FF_113.GSR = "ENABLED";
    FD1P3DX FF_112 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(668[13] 669[24])
    defparam FF_112.GSR = "ENABLED";
    FD1P3DX FF_111 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(672[13] 673[24])
    defparam FF_111.GSR = "ENABLED";
    FD1P3DX FF_110 (.D(w_gdata_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(676[13] 677[24])
    defparam FF_110.GSR = "ENABLED";
    FD1P3DX FF_109 (.D(w_gdata_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(680[13] 681[24])
    defparam FF_109.GSR = "ENABLED";
    FD1P3DX FF_108 (.D(w_gdata_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(684[13] 685[24])
    defparam FF_108.GSR = "ENABLED";
    FD1P3DX FF_107 (.D(w_gdata_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(688[13] 689[24])
    defparam FF_107.GSR = "ENABLED";
    FD1P3DX FF_106 (.D(w_gdata_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(692[13] 693[24])
    defparam FF_106.GSR = "ENABLED";
    FD1P3DX FF_105 (.D(w_gdata_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(696[13] 697[25])
    defparam FF_105.GSR = "ENABLED";
    FD1P3DX FF_104 (.D(wcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(700[13] 701[25])
    defparam FF_104.GSR = "ENABLED";
    FD1P3DX FF_103 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(704[13] 705[20])
    defparam FF_103.GSR = "ENABLED";
    FD1P3DX FF_102 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(708[13] 709[20])
    defparam FF_102.GSR = "ENABLED";
    FD1P3DX FF_101 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(712[13] 713[20])
    defparam FF_101.GSR = "ENABLED";
    FD1P3DX FF_100 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(716[13] 717[20])
    defparam FF_100.GSR = "ENABLED";
    FD1P3DX FF_99 (.D(wcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(720[13] 721[20])
    defparam FF_99.GSR = "ENABLED";
    FD1P3DX FF_98 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(724[13] 725[20])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(wcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(728[13] 729[20])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(wcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(732[13] 733[20])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(736[13] 737[20])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(wcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(740[13] 741[20])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(wcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(744[13] 745[21])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(wcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(748[13] 749[21])
    defparam FF_92.GSR = "ENABLED";
    FD1P3BX FF_91 (.D(ircount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(752[13] 753[22])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(ircount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(756[13] 757[22])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(ircount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(760[13] 761[22])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(ircount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(764[13] 765[22])
    defparam FF_88.GSR = "ENABLED";
    FD1P3DX FF_87 (.D(ircount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(768[13] 769[22])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(ircount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(772[13] 773[22])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(ircount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(776[13] 777[22])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(ircount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(780[13] 781[22])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(ircount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(784[13] 785[22])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(ircount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(788[13] 789[22])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(ircount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(792[13] 793[23])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(r_gdata_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(796[13] 797[24])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(r_gdata_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(800[13] 801[24])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(r_gdata_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(804[13] 805[24])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(r_gdata_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(808[13] 809[24])
    defparam FF_77.GSR = "ENABLED";
    FD1P3DX FF_76 (.D(r_gdata_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(812[13] 813[24])
    defparam FF_76.GSR = "ENABLED";
    FD1P3DX FF_75 (.D(r_gdata_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(816[13] 817[24])
    defparam FF_75.GSR = "ENABLED";
    FD1P3DX FF_74 (.D(r_gdata_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(820[13] 821[24])
    defparam FF_74.GSR = "ENABLED";
    FD1P3DX FF_73 (.D(r_gdata_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(824[13] 825[24])
    defparam FF_73.GSR = "ENABLED";
    FD1P3DX FF_72 (.D(r_gdata_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(828[13] 829[24])
    defparam FF_72.GSR = "ENABLED";
    FD1P3DX FF_71 (.D(r_gdata_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(832[13] 833[24])
    defparam FF_71.GSR = "ENABLED";
    FD1P3DX FF_70 (.D(rcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(836[13] 837[25])
    defparam FF_70.GSR = "ENABLED";
    FD1P3DX FF_69 (.D(rcount_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(840[13:83])
    defparam FF_69.GSR = "ENABLED";
    FD1P3DX FF_68 (.D(rcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(843[13:83])
    defparam FF_68.GSR = "ENABLED";
    FD1P3DX FF_67 (.D(rcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(846[13:83])
    defparam FF_67.GSR = "ENABLED";
    FD1P3DX FF_66 (.D(rcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(849[13:83])
    defparam FF_66.GSR = "ENABLED";
    FD1P3DX FF_65 (.D(rcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(852[13:83])
    defparam FF_65.GSR = "ENABLED";
    FD1P3DX FF_64 (.D(rcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(855[13:83])
    defparam FF_64.GSR = "ENABLED";
    FD1P3DX FF_63 (.D(rcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(858[13:83])
    defparam FF_63.GSR = "ENABLED";
    FD1P3DX FF_62 (.D(rcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(861[13:83])
    defparam FF_62.GSR = "ENABLED";
    FD1P3DX FF_61 (.D(rcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(864[13:83])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(rcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(867[13:83])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(rcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(870[13] 871[21])
    defparam FF_59.GSR = "ENABLED";
    FD1S3DX FF_57 (.D(w_gcount_1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(877[13:78])
    defparam FF_57.GSR = "ENABLED";
    AND2 AND2_t23 (.A(RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(275[10:55])
    FD1S3DX FF_56 (.D(w_gcount_2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(880[13:78])
    defparam FF_56.GSR = "ENABLED";
    FD1S3DX FF_55 (.D(w_gcount_3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(883[13:78])
    defparam FF_55.GSR = "ENABLED";
    FD1S3DX FF_54 (.D(w_gcount_4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(886[13:78])
    defparam FF_54.GSR = "ENABLED";
    FD1S3DX FF_53 (.D(w_gcount_5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(889[13:78])
    defparam FF_53.GSR = "ENABLED";
    FD1S3DX FF_52 (.D(w_gcount_6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(892[13:78])
    defparam FF_52.GSR = "ENABLED";
    FD1S3DX FF_51 (.D(w_gcount_7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(895[13:78])
    defparam FF_51.GSR = "ENABLED";
    FD1S3DX FF_50 (.D(w_gcount_8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(898[13:78])
    defparam FF_50.GSR = "ENABLED";
    FD1S3DX FF_49 (.D(w_gcount_9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(901[13:78])
    defparam FF_49.GSR = "ENABLED";
    FD1S3DX FF_48 (.D(w_gcount_10), .CK(RdClock), .CD(Reset), .Q(w_gcount_r10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(904[13:80])
    defparam FF_48.GSR = "ENABLED";
    FD1S3DX FF_47 (.D(w_gcount_11), .CK(RdClock), .CD(Reset), .Q(w_gcount_r11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(907[13:80])
    defparam FF_47.GSR = "ENABLED";
    FD1S3DX FF_46 (.D(r_gcount_0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(910[13:77])
    defparam FF_46.GSR = "ENABLED";
    FD1S3DX FF_45 (.D(r_gcount_1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(913[13:77])
    defparam FF_45.GSR = "ENABLED";
    FD1S3DX FF_44 (.D(r_gcount_2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(916[13:77])
    defparam FF_44.GSR = "ENABLED";
    FD1S3DX FF_43 (.D(r_gcount_3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(919[13:77])
    defparam FF_43.GSR = "ENABLED";
    FD1S3DX FF_42 (.D(r_gcount_4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(922[13:77])
    defparam FF_42.GSR = "ENABLED";
    FD1S3DX FF_41 (.D(r_gcount_5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(925[13:77])
    defparam FF_41.GSR = "ENABLED";
    FD1S3DX FF_40 (.D(r_gcount_6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(928[13:77])
    defparam FF_40.GSR = "ENABLED";
    FD1S3DX FF_39 (.D(r_gcount_7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(931[13:77])
    defparam FF_39.GSR = "ENABLED";
    FD1S3DX FF_38 (.D(r_gcount_8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(934[13:77])
    defparam FF_38.GSR = "ENABLED";
    FD1S3DX FF_37 (.D(r_gcount_9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(937[13:77])
    defparam FF_37.GSR = "ENABLED";
    FD1S3DX FF_36 (.D(r_gcount_10), .CK(WrClock), .CD(rRst), .Q(r_gcount_w10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(940[13:79])
    defparam FF_36.GSR = "ENABLED";
    FD1S3DX FF_34 (.D(w_gcount_r1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(946[13:80])
    defparam FF_34.GSR = "ENABLED";
    INV INV_0 (.A(Empty), .Z(invout_0));
    FD1S3DX FF_33 (.D(w_gcount_r2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(949[13:80])
    defparam FF_33.GSR = "ENABLED";
    FD1S3DX FF_32 (.D(w_gcount_r3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(952[13:80])
    defparam FF_32.GSR = "ENABLED";
    FD1S3DX FF_31 (.D(w_gcount_r4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(955[13:80])
    defparam FF_31.GSR = "ENABLED";
    FD1S3DX FF_30 (.D(w_gcount_r5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(958[13:80])
    defparam FF_30.GSR = "ENABLED";
    FD1S3DX FF_29 (.D(w_gcount_r6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(961[13:80])
    defparam FF_29.GSR = "ENABLED";
    FD1S3DX FF_28 (.D(w_gcount_r7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(964[13:80])
    defparam FF_28.GSR = "ENABLED";
    FD1S3DX FF_27 (.D(w_gcount_r8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(967[13:80])
    defparam FF_27.GSR = "ENABLED";
    FD1S3DX FF_26 (.D(w_gcount_r9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(970[13:80])
    defparam FF_26.GSR = "ENABLED";
    FD1S3DX FF_25 (.D(w_gcount_r10), .CK(RdClock), .CD(Reset), .Q(w_gcount_r210)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(973[13:82])
    defparam FF_25.GSR = "ENABLED";
    FD1S3DX FF_24 (.D(w_gcount_r11), .CK(RdClock), .CD(Reset), .Q(w_gcount_r211)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(976[13:82])
    defparam FF_24.GSR = "ENABLED";
    FD1S3DX FF_23 (.D(r_gcount_w0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(979[13:79])
    defparam FF_23.GSR = "ENABLED";
    FD1S3DX FF_22 (.D(r_gcount_w1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(982[13:79])
    defparam FF_22.GSR = "ENABLED";
    FD1S3DX FF_21 (.D(r_gcount_w2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(985[13:79])
    defparam FF_21.GSR = "ENABLED";
    FD1S3DX FF_20 (.D(r_gcount_w3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(988[13:79])
    defparam FF_20.GSR = "ENABLED";
    FD1S3DX FF_19 (.D(r_gcount_w4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(991[13:79])
    defparam FF_19.GSR = "ENABLED";
    FD1S3DX FF_18 (.D(r_gcount_w5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(994[13:79])
    defparam FF_18.GSR = "ENABLED";
    FD1S3DX FF_17 (.D(r_gcount_w6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(997[13:79])
    defparam FF_17.GSR = "ENABLED";
    FD1S3DX FF_16 (.D(r_gcount_w7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1000[13:79])
    defparam FF_16.GSR = "ENABLED";
    FD1S3DX FF_15 (.D(r_gcount_w8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1003[13:79])
    defparam FF_15.GSR = "ENABLED";
    FD1S3DX FF_14 (.D(r_gcount_w9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1006[13:79])
    defparam FF_14.GSR = "ENABLED";
    FD1S3DX FF_13 (.D(r_gcount_w10), .CK(WrClock), .CD(rRst), .Q(r_gcount_w210)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1009[13:81])
    defparam FF_13.GSR = "ENABLED";
    FD1S3DX FF_12 (.D(rfill_sub_0), .CK(RdClock), .CD(rRst), .Q(RCNT[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1012[13:74])
    defparam FF_12.GSR = "ENABLED";
    FD1S3DX FF_11 (.D(rfill_sub_1), .CK(RdClock), .CD(rRst), .Q(RCNT[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1015[13:74])
    defparam FF_11.GSR = "ENABLED";
    FD1S3DX FF_10 (.D(rfill_sub_2), .CK(RdClock), .CD(rRst), .Q(RCNT[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1018[13:74])
    defparam FF_10.GSR = "ENABLED";
    FD1S3DX FF_9 (.D(rfill_sub_3), .CK(RdClock), .CD(rRst), .Q(RCNT[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1021[13:73])
    defparam FF_9.GSR = "ENABLED";
    FD1S3DX FF_8 (.D(rfill_sub_4), .CK(RdClock), .CD(rRst), .Q(RCNT[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1024[13:73])
    defparam FF_8.GSR = "ENABLED";
    FD1S3DX FF_7 (.D(rfill_sub_5), .CK(RdClock), .CD(rRst), .Q(RCNT[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1027[13:73])
    defparam FF_7.GSR = "ENABLED";
    FD1S3DX FF_6 (.D(rfill_sub_6), .CK(RdClock), .CD(rRst), .Q(RCNT[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1030[13:73])
    defparam FF_6.GSR = "ENABLED";
    FD1S3DX FF_5 (.D(rfill_sub_7), .CK(RdClock), .CD(rRst), .Q(RCNT[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1033[13:73])
    defparam FF_5.GSR = "ENABLED";
    FD1S3DX FF_4 (.D(rfill_sub_8), .CK(RdClock), .CD(rRst), .Q(RCNT[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1036[13:73])
    defparam FF_4.GSR = "ENABLED";
    FD1S3DX FF_3 (.D(rfill_sub_9), .CK(RdClock), .CD(rRst), .Q(RCNT[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1039[13:73])
    defparam FF_3.GSR = "ENABLED";
    FD1S3DX FF_2 (.D(rfill_sub_10), .CK(RdClock), .CD(rRst), .Q(RCNT[10])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1042[13:75])
    defparam FF_2.GSR = "ENABLED";
    FD1S3BX FF_1 (.D(empty_d), .CK(RdClock), .PD(rRst), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1045[13:69])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(full_d), .CK(WrClock), .CD(Reset), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1048[13:68])
    defparam FF_0.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1055[11] 1057[48])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_gctr_ci), .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1063[11] 1065[69])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1071[11] 1073[63])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1079[11] 1081[63])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C w_gctr_3 (.A0(wcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .COUT(co3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1087[11] 1089[63])
    defparam w_gctr_3.INIT0 = 16'b0110011010101010;
    defparam w_gctr_3.INIT1 = 16'b0110011010101010;
    defparam w_gctr_3.INJECT1_0 = "NO";
    defparam w_gctr_3.INJECT1_1 = "NO";
    CCU2C w_gctr_4 (.A0(wcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3), .COUT(co4), .S0(iwcount_8), .S1(iwcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1095[11] 1097[63])
    defparam w_gctr_4.INIT0 = 16'b0110011010101010;
    defparam w_gctr_4.INIT1 = 16'b0110011010101010;
    defparam w_gctr_4.INJECT1_0 = "NO";
    defparam w_gctr_4.INJECT1_1 = "NO";
    CCU2C w_gctr_5 (.A0(wcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_11), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4), .S0(iwcount_10), .S1(iwcount_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1103[11] 1105[65])
    defparam w_gctr_5.INIT0 = 16'b0110011010101010;
    defparam w_gctr_5.INIT1 = 16'b0110011010101010;
    defparam w_gctr_5.INJECT1_0 = "NO";
    defparam w_gctr_5.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1111[11] 1113[48])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_gctr_ci), .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1119[11] 1121[71])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1127[11] 1129[67])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .COUT(co2_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1135[11] 1137[67])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_3 (.A0(rcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_1), .COUT(co3_1), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1143[11] 1145[67])
    defparam r_gctr_3.INIT0 = 16'b0110011010101010;
    defparam r_gctr_3.INIT1 = 16'b0110011010101010;
    defparam r_gctr_3.INJECT1_0 = "NO";
    defparam r_gctr_3.INJECT1_1 = "NO";
    CCU2C r_gctr_4 (.A0(rcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_1), .COUT(co4_1), .S0(ircount_8), .S1(ircount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1151[11] 1153[67])
    defparam r_gctr_4.INIT0 = 16'b0110011010101010;
    defparam r_gctr_4.INIT1 = 16'b0110011010101010;
    defparam r_gctr_4.INJECT1_0 = "NO";
    defparam r_gctr_4.INJECT1_1 = "NO";
    CCU2C r_gctr_5 (.A0(rcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_1), .S0(ircount_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1159[11] 1161[59])
    defparam r_gctr_5.INIT0 = 16'b0110011010101010;
    defparam r_gctr_5.INIT1 = 16'b0110011010101010;
    defparam r_gctr_5.INJECT1_0 = "NO";
    defparam r_gctr_5.INJECT1_1 = "NO";
    CCU2C precin_inst407 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(precin)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1167[11] 1169[61])
    defparam precin_inst407.INIT0 = 16'b0000000000000000;
    defparam precin_inst407.INIT1 = 16'b0000000000000000;
    defparam precin_inst407.INJECT1_0 = "NO";
    defparam precin_inst407.INJECT1_1 = "NO";
    CCU2C rfill_0 (.A0(scuba_vhi), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r1), .B1(rptr_0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(precin), .COUT(co0_2), .S1(rfill_sub_0)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1175[11] 1177[61])
    defparam rfill_0.INIT0 = 16'b1001100110101010;
    defparam rfill_0.INIT1 = 16'b1001100110101010;
    defparam rfill_0.INJECT1_0 = "NO";
    defparam rfill_0.INJECT1_1 = "NO";
    CCU2C rfill_1 (.A0(wcount_r2), .B0(rptr_1), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r3), .B1(rptr_2), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_2), .COUT(co1_2), .S0(rfill_sub_1), .S1(rfill_sub_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1183[11] 1185[71])
    defparam rfill_1.INIT0 = 16'b1001100110101010;
    defparam rfill_1.INIT1 = 16'b1001100110101010;
    defparam rfill_1.INJECT1_0 = "NO";
    defparam rfill_1.INJECT1_1 = "NO";
    CCU2C rfill_2 (.A0(wcount_r4), .B0(rptr_3), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r5), .B1(rptr_4), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_2), .COUT(co2_2), .S0(rfill_sub_3), .S1(rfill_sub_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1191[11] 1193[71])
    defparam rfill_2.INIT0 = 16'b1001100110101010;
    defparam rfill_2.INIT1 = 16'b1001100110101010;
    defparam rfill_2.INJECT1_0 = "NO";
    defparam rfill_2.INJECT1_1 = "NO";
    CCU2C rfill_3 (.A0(wcount_r6), .B0(rptr_5), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r7), .B1(rptr_6), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_2), .COUT(co3_2), .S0(rfill_sub_5), .S1(rfill_sub_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1199[11] 1201[71])
    defparam rfill_3.INIT0 = 16'b1001100110101010;
    defparam rfill_3.INIT1 = 16'b1001100110101010;
    defparam rfill_3.INJECT1_0 = "NO";
    defparam rfill_3.INJECT1_1 = "NO";
    CCU2C rfill_4 (.A0(w_g2b_xor_cluster_0), .B0(rptr_7), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wcount_r9), .B1(rptr_8), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_2), .COUT(co4_2), .S0(rfill_sub_7), 
          .S1(rfill_sub_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1207[11] 1209[71])
    defparam rfill_4.INIT0 = 16'b1001100110101010;
    defparam rfill_4.INIT1 = 16'b1001100110101010;
    defparam rfill_4.INJECT1_0 = "NO";
    defparam rfill_4.INJECT1_1 = "NO";
    CCU2C rfill_5 (.A0(wcount_r10), .B0(rptr_9), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rfill_sub_msb), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_2), .S0(rfill_sub_9), .S1(rfill_sub_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1215[11] 1217[72])
    defparam rfill_5.INIT0 = 16'b1001100110101010;
    defparam rfill_5.INIT1 = 16'b1001100110101010;
    defparam rfill_5.INJECT1_0 = "NO";
    defparam rfill_5.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1231[11] 1233[45])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    XOR2 XOR2_t20 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(283[10:62])
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r1), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_1), .B1(wcount_r2), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci), .COUT(co0_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1239[11] 1241[50])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(wcount_r3), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_3), .B1(wcount_r4), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_3), .COUT(co1_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1247[11] 1249[49])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r5), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_5), .B1(wcount_r6), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_3), .COUT(co2_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1255[11] 1257[49])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_3 (.A0(rcount_6), .B0(wcount_r7), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_7), .B1(w_g2b_xor_cluster_0), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_3), .COUT(co3_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1263[11] 1265[49])
    defparam empty_cmp_3.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_3.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_3.INJECT1_0 = "NO";
    defparam empty_cmp_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_4 (.A0(rcount_8), .B0(wcount_r9), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_9), .B1(wcount_r10), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_3), .COUT(co4_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1271[11] 1273[49])
    defparam empty_cmp_4.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_4.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_4.INJECT1_0 = "NO";
    defparam empty_cmp_4.INJECT1_1 = "NO";
    CCU2C empty_cmp_5 (.A0(empty_cmp_set), .B0(empty_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_3), .COUT(empty_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1279[11] 1281[69])
    defparam empty_cmp_5.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_5.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_5.INJECT1_0 = "NO";
    defparam empty_cmp_5.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(empty_d_c), .S0(empty_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1287[11] 1289[55])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1295[11] 1297[47])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(rcount_w0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1303[11] 1305[52])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(rcount_w1), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(rcount_w2), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_4), .COUT(co1_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1311[11] 1313[49])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w3), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(rcount_w4), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_4), .COUT(co2_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1319[11] 1321[49])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C full_cmp_3 (.A0(wcount_6), .B0(rcount_w5), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(rcount_w6), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_4), .COUT(co3_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1327[11] 1329[49])
    defparam full_cmp_3.INIT0 = 16'b1001100110101010;
    defparam full_cmp_3.INIT1 = 16'b1001100110101010;
    defparam full_cmp_3.INJECT1_0 = "NO";
    defparam full_cmp_3.INJECT1_1 = "NO";
    CCU2C full_cmp_4 (.A0(wcount_8), .B0(r_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wcount_9), .B1(rcount_w8), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_4), .COUT(co4_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1335[11] 1337[65])
    defparam full_cmp_4.INIT0 = 16'b1001100110101010;
    defparam full_cmp_4.INIT1 = 16'b1001100110101010;
    defparam full_cmp_4.INJECT1_0 = "NO";
    defparam full_cmp_4.INJECT1_1 = "NO";
    CCU2C full_cmp_5 (.A0(wcount_10), .B0(rcount_w9), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(full_cmp_set), .B1(full_cmp_clr), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_4), .COUT(full_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1343[11] 1345[68])
    defparam full_cmp_5.INIT0 = 16'b1001100110101010;
    defparam full_cmp_5.INIT1 = 16'b1001100110101010;
    defparam full_cmp_5.INJECT1_0 = "NO";
    defparam full_cmp_5.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(full_d_c), .S0(full_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(1355[11] 1357[53])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    XOR2 XOR2_t18 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(287[10:62])
    XOR2 XOR2_t17 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(289[10:62])
    XOR2 XOR2_t16 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(291[10:62])
    XOR2 XOR2_t15 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(293[10:62])
    XOR2 XOR2_t14 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(295[10:62])
    XOR2 XOR2_t13 (.A(wcount_8), .B(wcount_9), .Z(w_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(297[10:62])
    XOR2 XOR2_t12 (.A(wcount_9), .B(wcount_10), .Z(w_gdata_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(299[10:63])
    XOR2 XOR2_t11 (.A(wcount_10), .B(wcount_11), .Z(w_gdata_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(301[10:65])
    XOR2 XOR2_t10 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(303[10:62])
    XOR2 XOR2_t9 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(305[10:61])
    XOR2 XOR2_t8 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(307[10:61])
    XOR2 XOR2_t7 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(309[10:61])
    XOR2 XOR2_t6 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(311[10:61])
    XOR2 XOR2_t5 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(313[10:61])
    XOR2 XOR2_t4 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(315[10:61])
    XOR2 XOR2_t3 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(317[10:61])
    XOR2 XOR2_t2 (.A(rcount_8), .B(rcount_9), .Z(r_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(319[10:61])
    XOR2 XOR2_t1 (.A(rcount_9), .B(rcount_10), .Z(r_gdata_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(321[10:62])
    ROM16X1A LUT4_29 (.AD0(w_gcount_r211), .AD1(w_gcount_r210), .AD2(w_gcount_r29), 
            .AD3(w_gcount_r28), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_29.initval = 16'b0110100110010110;
    ROM16X1A LUT4_28 (.AD0(w_gcount_r27), .AD1(w_gcount_r26), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_28.initval = 16'b0110100110010110;
    ROM16X1A LUT4_26 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_gcount_r211), 
            .AD3(w_gcount_r210), .DO0(wcount_r10)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_26.initval = 16'b0110100110010110;
    ROM16X1A LUT4_25 (.AD0(scuba_vlo), .AD1(w_gcount_r211), .AD2(w_gcount_r210), 
            .AD3(w_gcount_r29), .DO0(wcount_r9)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_25.initval = 16'b0110100110010110;
    ROM16X1A LUT4_24 (.AD0(wcount_r10), .AD1(w_gcount_r29), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_24.initval = 16'b0110100110010110;
    ROM16X1A LUT4_23 (.AD0(wcount_r9), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(wcount_r6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(wcount_r5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_21 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_20 (.AD0(scuba_vlo), .AD1(w_gcount_r23), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_20.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(w_gcount_r23), .AD1(w_gcount_r22), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(scuba_vlo), .AD1(w_gcount_r23), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(w_g2b_xor_cluster_2_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(scuba_vlo), .AD1(w_g2b_xor_cluster_2_1), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(r_gcount_w210), .AD1(r_gcount_w29), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(r_gcount_w26), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_gcount_w210), 
            .AD3(r_gcount_w29), .DO0(rcount_w9)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_13.initval = 16'b0110100110010110;
    ROM16X1A LUT4_12 (.AD0(scuba_vlo), .AD1(r_gcount_w210), .AD2(r_gcount_w29), 
            .AD3(r_gcount_w28), .DO0(rcount_w8)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_12.initval = 16'b0110100110010110;
    ROM16X1A LUT4_11 (.AD0(rcount_w9), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(rcount_w6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_11.initval = 16'b0110100110010110;
    ROM16X1A LUT4_10 (.AD0(rcount_w8), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(rcount_w5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_10.initval = 16'b0110100110010110;
    ROM16X1A LUT4_9 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(rcount_w4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_9.initval = 16'b0110100110010110;
    ROM16X1A LUT4_8 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_8.initval = 16'b0110100110010110;
    ROM16X1A LUT4_7 (.AD0(scuba_vlo), .AD1(r_gcount_w22), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_7.initval = 16'b0110100110010110;
    ROM16X1A LUT4_6 (.AD0(r_gcount_w22), .AD1(r_gcount_w21), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_6.initval = 16'b0110100110010110;
    ROM16X1A LUT4_5 (.AD0(scuba_vlo), .AD1(r_gcount_w22), .AD2(r_gcount_w21), 
            .AD3(r_gcount_w20), .DO0(r_g2b_xor_cluster_2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_5.initval = 16'b0110100110010110;
    ROM16X1A LUT4_4 (.AD0(scuba_vlo), .AD1(r_g2b_xor_cluster_2), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_4.initval = 16'b0110100110010110;
    XOR2 XOR2_t0 (.A(w_gcount_r211), .B(rptr_10), .Z(rfill_sub_msb)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(427[10:69])
    ROM16X1A LUT4_3 (.AD0(scuba_vlo), .AD1(w_gcount_r211), .AD2(rcount_10), 
            .AD3(rptr_10), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_3.initval = 16'b0000010000010000;
    ROM16X1A LUT4_2 (.AD0(scuba_vlo), .AD1(w_gcount_r211), .AD2(rcount_10), 
            .AD3(rptr_10), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b0001000000000100;
    ROM16X1A LUT4_1 (.AD0(scuba_vlo), .AD1(r_gcount_w210), .AD2(wcount_11), 
            .AD3(wptr_11), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b0000000101000000;
    ROM16X1A LUT4_0 (.AD0(scuba_vlo), .AD1(r_gcount_w210), .AD2(wcount_11), 
            .AD3(wptr_11), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0100000000000001;
    DP16KD pdp_ram_0_0_3 (.DIA0(Data[0]), .DIA1(Data[1]), .DIA2(Data[2]), 
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
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(scuba_vlo), .ADB4(rptr_0), 
           .ADB5(rptr_1), .ADB6(rptr_2), .ADB7(rptr_3), .ADB8(rptr_4), 
           .ADB9(rptr_5), .ADB10(rptr_6), .ADB11(rptr_7), .ADB12(rptr_8), 
           .ADB13(rptr_9), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[0]), .DOB1(Q[1]), .DOB2(Q[2]), .DOB3(Q[3]), 
           .DOB4(Q[4]), .DOB5(Q[5]), .DOB6(Q[6]), .DOB7(Q[7]), .DOB8(Q[8]), 
           .DOB9(Q[32]), .DOB10(Q[33]), .DOB11(Q[34]), .DOB12(Q[35]), 
           .DOB13(Q[36]), .DOB14(Q[37]), .DOB15(Q[38]), .DOB16(Q[39]), 
           .DOB17(Q[40])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_0_3.DATA_WIDTH_A = 9;
    defparam pdp_ram_0_0_3.DATA_WIDTH_B = 18;
    defparam pdp_ram_0_0_3.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_0_3.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_0_3.RESETMODE = "SYNC";
    defparam pdp_ram_0_0_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_3.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_0_3.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_0_3.CSDECODE_A = "0b000";
    defparam pdp_ram_0_0_3.CSDECODE_B = "0b000";
    defparam pdp_ram_0_0_3.GSR = "ENABLED";
    defparam pdp_ram_0_0_3.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_1_2 (.DIA0(Data[9]), .DIA1(Data[10]), .DIA2(Data[11]), 
           .DIA3(Data[12]), .DIA4(Data[13]), .DIA5(Data[14]), .DIA6(Data[15]), 
           .DIA7(Data[16]), .DIA8(Data[17]), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
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
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(scuba_vlo), .ADB4(rptr_0), 
           .ADB5(rptr_1), .ADB6(rptr_2), .ADB7(rptr_3), .ADB8(rptr_4), 
           .ADB9(rptr_5), .ADB10(rptr_6), .ADB11(rptr_7), .ADB12(rptr_8), 
           .ADB13(rptr_9), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[9]), .DOB1(Q[10]), .DOB2(Q[11]), .DOB3(Q[12]), 
           .DOB4(Q[13]), .DOB5(Q[14]), .DOB6(Q[15]), .DOB7(Q[16]), .DOB8(Q[17]), 
           .DOB9(Q[41]), .DOB10(Q[42]), .DOB11(Q[43]), .DOB12(Q[44]), 
           .DOB13(Q[45]), .DOB14(Q[46]), .DOB15(Q[47]), .DOB16(Q[48]), 
           .DOB17(Q[49])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_1_2.DATA_WIDTH_A = 9;
    defparam pdp_ram_0_1_2.DATA_WIDTH_B = 18;
    defparam pdp_ram_0_1_2.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_1_2.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_1_2.RESETMODE = "SYNC";
    defparam pdp_ram_0_1_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_1_2.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_1_2.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_1_2.CSDECODE_A = "0b000";
    defparam pdp_ram_0_1_2.CSDECODE_B = "0b000";
    defparam pdp_ram_0_1_2.GSR = "ENABLED";
    defparam pdp_ram_0_1_2.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_2_1 (.DIA0(Data[18]), .DIA1(Data[19]), .DIA2(Data[20]), 
           .DIA3(Data[21]), .DIA4(Data[22]), .DIA5(Data[23]), .DIA6(Data[24]), 
           .DIA7(Data[25]), .DIA8(Data[26]), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
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
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(scuba_vlo), .ADB4(rptr_0), 
           .ADB5(rptr_1), .ADB6(rptr_2), .ADB7(rptr_3), .ADB8(rptr_4), 
           .ADB9(rptr_5), .ADB10(rptr_6), .ADB11(rptr_7), .ADB12(rptr_8), 
           .ADB13(rptr_9), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[18]), .DOB1(Q[19]), .DOB2(Q[20]), .DOB3(Q[21]), 
           .DOB4(Q[22]), .DOB5(Q[23]), .DOB6(Q[24]), .DOB7(Q[25]), .DOB8(Q[26]), 
           .DOB9(Q[50]), .DOB10(Q[51]), .DOB11(Q[52]), .DOB12(Q[53]), 
           .DOB13(Q[54]), .DOB14(Q[55]), .DOB15(Q[56]), .DOB16(Q[57]), 
           .DOB17(Q[58])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_2_1.DATA_WIDTH_A = 9;
    defparam pdp_ram_0_2_1.DATA_WIDTH_B = 18;
    defparam pdp_ram_0_2_1.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_2_1.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_2_1.RESETMODE = "SYNC";
    defparam pdp_ram_0_2_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_2_1.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_2_1.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_2_1.CSDECODE_A = "0b000";
    defparam pdp_ram_0_2_1.CSDECODE_B = "0b000";
    defparam pdp_ram_0_2_1.GSR = "ENABLED";
    defparam pdp_ram_0_2_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_3_0 (.DIA0(Data[27]), .DIA1(Data[28]), .DIA2(Data[29]), 
           .DIA3(Data[30]), .DIA4(Data[31]), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
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
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(scuba_vlo), .ADB4(rptr_0), 
           .ADB5(rptr_1), .ADB6(rptr_2), .ADB7(rptr_3), .ADB8(rptr_4), 
           .ADB9(rptr_5), .ADB10(rptr_6), .ADB11(rptr_7), .ADB12(rptr_8), 
           .ADB13(rptr_9), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[27]), .DOB1(Q[28]), .DOB2(Q[29]), .DOB3(Q[30]), 
           .DOB4(Q[31]), .DOB9(Q[59]), .DOB10(Q[60]), .DOB11(Q[61]), 
           .DOB12(Q[62]), .DOB13(Q[63])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_3_0.DATA_WIDTH_A = 9;
    defparam pdp_ram_0_3_0.DATA_WIDTH_B = 18;
    defparam pdp_ram_0_3_0.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_3_0.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_3_0.RESETMODE = "SYNC";
    defparam pdp_ram_0_3_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_3_0.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_3_0.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_3_0.CSDECODE_A = "0b000";
    defparam pdp_ram_0_3_0.CSDECODE_B = "0b000";
    defparam pdp_ram_0_3_0.GSR = "ENABLED";
    defparam pdp_ram_0_3_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INIT_DATA = "STATIC";
    FD1P3BX FF_127 (.D(iwcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_industrial_4k_audio_check_2/ddr_ip/cam_in_fifo/cam_in_fifo.v(608[13] 609[22])
    defparam FF_127.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

