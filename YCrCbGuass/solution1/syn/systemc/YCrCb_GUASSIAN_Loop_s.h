// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _YCrCb_GUASSIAN_Loop_s_HH_
#define _YCrCb_GUASSIAN_Loop_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ImgProcess_Top_fpkbM.h"
#include "ImgProcess_Top_dcwdI.h"

namespace ap_rtl {

struct YCrCb_GUASSIAN_Loop_s : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > nor_copy2_data_stream_0_V_dout;
    sc_in< sc_logic > nor_copy2_data_stream_0_V_empty_n;
    sc_out< sc_logic > nor_copy2_data_stream_0_V_read;
    sc_in< sc_lv<64> > tmp3_dout;
    sc_in< sc_logic > tmp3_empty_n;
    sc_out< sc_logic > tmp3_read;
    sc_out< sc_lv<8> > origin_data_stream_0_V_din;
    sc_in< sc_logic > origin_data_stream_0_V_full_n;
    sc_out< sc_logic > origin_data_stream_0_V_write;
    sc_signal< sc_lv<5> > ap_var_for_const0;


    // Module declarations
    YCrCb_GUASSIAN_Loop_s(sc_module_name name);
    SC_HAS_PROCESS(YCrCb_GUASSIAN_Loop_s);

    ~YCrCb_GUASSIAN_Loop_s();

    sc_trace_file* mVcdFile;

    ImgProcess_Top_fpkbM<1,1,32,64>* ImgProcess_Top_fpkbM_U128;
    ImgProcess_Top_dcwdI<1,1,64,64,1>* ImgProcess_Top_dcwdI_U129;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > nor_copy2_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_219;
    sc_signal< sc_logic > tmp3_blk_n;
    sc_signal< sc_logic > origin_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_exitcond_flatten_reg_219;
    sc_signal< sc_lv<19> > indvar_flatten_reg_87;
    sc_signal< sc_lv<64> > tmp3_read_reg_204;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<64> > scalar_tmp3_to_int_fu_106_p1;
    sc_signal< sc_lv<64> > scalar_tmp3_to_int_reg_209;
    sc_signal< sc_lv<1> > notrhs2_fu_114_p2;
    sc_signal< sc_lv<1> > notrhs2_reg_214;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_120_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_flatten_reg_219;
    sc_signal< sc_lv<19> > indvar_flatten_next_fu_126_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > notlhs1_fu_141_p2;
    sc_signal< sc_lv<1> > notlhs1_reg_228;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_notlhs1_reg_228;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_notlhs1_reg_228;
    sc_signal< sc_lv<64> > tmp_76_i_fu_98_p1;
    sc_signal< sc_lv<64> > tmp_76_i_reg_233;
    sc_signal< sc_lv<1> > notlhs_fu_164_p2;
    sc_signal< sc_lv<1> > notlhs_reg_239;
    sc_signal< sc_lv<1> > notrhs_fu_170_p2;
    sc_signal< sc_lv<1> > notrhs_reg_244;
    sc_signal< sc_lv<1> > tmp_33_fu_102_p2;
    sc_signal< sc_lv<1> > tmp_33_reg_249;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<52> > tmp_fu_110_p1;
    sc_signal< sc_lv<11> > tmp_29_fu_132_p4;
    sc_signal< sc_lv<64> > tmp_76_i_to_int_fu_147_p1;
    sc_signal< sc_lv<11> > tmp_s_fu_150_p4;
    sc_signal< sc_lv<52> > tmp_28_fu_160_p1;
    sc_signal< sc_lv<1> > tmp_30_fu_176_p2;
    sc_signal< sc_lv<1> > tmp_31_fu_180_p2;
    sc_signal< sc_lv<1> > tmp_32_fu_184_p2;
    sc_signal< sc_lv<1> > tmp_34_fu_190_p2;
    sc_signal< bool > ap_block_pp0_stage0_00001;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state6;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<19> ap_const_lv19_0;
    static const sc_lv<52> ap_const_lv52_0;
    static const sc_lv<19> ap_const_lv19_54600;
    static const sc_lv<19> ap_const_lv19_1;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<11> ap_const_lv11_7FF;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_00001();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_exitcond_flatten_fu_120_p2();
    void thread_indvar_flatten_next_fu_126_p2();
    void thread_internal_ap_ready();
    void thread_nor_copy2_data_stream_0_V_blk_n();
    void thread_nor_copy2_data_stream_0_V_read();
    void thread_notlhs1_fu_141_p2();
    void thread_notlhs_fu_164_p2();
    void thread_notrhs2_fu_114_p2();
    void thread_notrhs_fu_170_p2();
    void thread_origin_data_stream_0_V_blk_n();
    void thread_origin_data_stream_0_V_din();
    void thread_origin_data_stream_0_V_write();
    void thread_real_start();
    void thread_scalar_tmp3_to_int_fu_106_p1();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp3_blk_n();
    void thread_tmp3_read();
    void thread_tmp_28_fu_160_p1();
    void thread_tmp_29_fu_132_p4();
    void thread_tmp_30_fu_176_p2();
    void thread_tmp_31_fu_180_p2();
    void thread_tmp_32_fu_184_p2();
    void thread_tmp_34_fu_190_p2();
    void thread_tmp_76_i_to_int_fu_147_p1();
    void thread_tmp_fu_110_p1();
    void thread_tmp_s_fu_150_p4();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
