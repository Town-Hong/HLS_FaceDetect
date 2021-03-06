// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "MinMaxLoc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic MinMaxLoc::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic MinMaxLoc::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> MinMaxLoc::ap_ST_fsm_state1 = "1";
const sc_lv<5> MinMaxLoc::ap_ST_fsm_state2 = "10";
const sc_lv<5> MinMaxLoc::ap_ST_fsm_pp0_stage0 = "100";
const sc_lv<5> MinMaxLoc::ap_ST_fsm_state6 = "1000";
const sc_lv<5> MinMaxLoc::ap_ST_fsm_state7 = "10000";
const sc_lv<32> MinMaxLoc::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool MinMaxLoc::ap_const_boolean_1 = true;
const sc_lv<32> MinMaxLoc::ap_const_lv32_2 = "10";
const bool MinMaxLoc::ap_const_boolean_0 = false;
const sc_lv<1> MinMaxLoc::ap_const_lv1_0 = "0";
const sc_lv<32> MinMaxLoc::ap_const_lv32_4 = "100";
const sc_lv<32> MinMaxLoc::ap_const_lv32_1 = "1";
const sc_lv<1> MinMaxLoc::ap_const_lv1_1 = "1";
const sc_lv<10> MinMaxLoc::ap_const_lv10_0 = "0000000000";
const sc_lv<32> MinMaxLoc::ap_const_lv32_3 = "11";
const sc_lv<9> MinMaxLoc::ap_const_lv9_0 = "000000000";
const sc_lv<32> MinMaxLoc::ap_const_lv32_CF000000 = "11001111000000000000000000000000";
const sc_lv<32> MinMaxLoc::ap_const_lv32_4F000000 = "1001111000000000000000000000000";
const sc_lv<10> MinMaxLoc::ap_const_lv10_2D0 = "1011010000";
const sc_lv<10> MinMaxLoc::ap_const_lv10_1 = "1";
const sc_lv<9> MinMaxLoc::ap_const_lv9_1E0 = "111100000";
const sc_lv<9> MinMaxLoc::ap_const_lv9_1 = "1";
const sc_lv<32> MinMaxLoc::ap_const_lv32_1F = "11111";

MinMaxLoc::MinMaxLoc(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ImgProcess_Top_fpkbM_U69 = new ImgProcess_Top_fpkbM<1,1,32,64>("ImgProcess_Top_fpkbM_U69");
    ImgProcess_Top_fpkbM_U69->din0(v_assign_fu_74);
    ImgProcess_Top_fpkbM_U69->dout(min_val_dc_fu_120_p1);
    ImgProcess_Top_fpkbM_U70 = new ImgProcess_Top_fpkbM<1,1,32,64>("ImgProcess_Top_fpkbM_U70");
    ImgProcess_Top_fpkbM_U70->din0(v_assign_1_fu_70);
    ImgProcess_Top_fpkbM_U70->dout(max_val_dc_fu_123_p1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( src_data_stream_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_i_i_reg_362 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( src_data_stream_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_i_i_reg_362 );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter1);
    sensitive << ( src_data_stream_V_empty_n );
    sensitive << ( exitcond_i_i_reg_362 );

    SC_METHOD(thread_ap_block_state5_pp0_stage0_iter2);

    SC_METHOD(thread_ap_block_state7);
    sensitive << ( min_val_out_full_n );
    sensitive << ( max_val_out_full_n );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state3);
    sensitive << ( exitcond_i_i_fu_156_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( min_val_out_full_n );
    sensitive << ( max_val_out_full_n );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( min_val_out_full_n );
    sensitive << ( max_val_out_full_n );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_brmerge35_demorgan_i_fu_267_p2);
    sensitive << ( p_Result_s_fu_195_p3 );
    sensitive << ( p_Result_7_fu_184_p3 );

    SC_METHOD(thread_brmerge_demorgan_i_fu_203_p2);
    sensitive << ( p_Result_2_fu_172_p3 );
    sensitive << ( p_Result_s_fu_195_p3 );

    SC_METHOD(thread_exitcond139_i_i_fu_144_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( t_V_reg_98 );

    SC_METHOD(thread_exitcond_i_i_fu_156_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( t_V_10_reg_109 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_i_V_fu_150_p2);
    sensitive << ( t_V_reg_98 );

    SC_METHOD(thread_j_V_fu_162_p2);
    sensitive << ( t_V_10_reg_109 );

    SC_METHOD(thread_max_val_out_blk_n);
    sensitive << ( max_val_out_full_n );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_max_val_out_din);
    sensitive << ( min_val_out_full_n );
    sensitive << ( max_val_out_full_n );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( max_val_dc_reg_357 );

    SC_METHOD(thread_max_val_out_write);
    sensitive << ( min_val_out_full_n );
    sensitive << ( max_val_out_full_n );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_min_val_out_blk_n);
    sensitive << ( min_val_out_full_n );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_min_val_out_din);
    sensitive << ( min_val_out_full_n );
    sensitive << ( max_val_out_full_n );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( min_val_dc_reg_352 );

    SC_METHOD(thread_min_val_out_write);
    sensitive << ( min_val_out_full_n );
    sensitive << ( max_val_out_full_n );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_p_Result_10_fu_225_p3);
    sensitive << ( tmp_41_fu_221_p1 );

    SC_METHOD(thread_p_Result_11_fu_277_p3);
    sensitive << ( tmp_42_fu_273_p1 );

    SC_METHOD(thread_p_Result_2_fu_172_p3);
    sensitive << ( t_V_5_fu_168_p1 );

    SC_METHOD(thread_p_Result_7_fu_184_p3);
    sensitive << ( t_V_9_fu_180_p1 );

    SC_METHOD(thread_p_Result_9_fu_213_p3);
    sensitive << ( tmp_fu_209_p1 );

    SC_METHOD(thread_p_Result_s_fu_195_p3);
    sensitive << ( t_V_8_fu_192_p1 );

    SC_METHOD(thread_p_max_val_4_i_i_fu_311_p3);
    sensitive << ( brmerge35_demorgan_i_fu_267_p2 );
    sensitive << ( s_val_0_i_f_assign_2_fu_291_p3 );
    sensitive << ( s_val_0_i_f_assign_3_fu_304_p3 );

    SC_METHOD(thread_p_min_val_4_i_i_fu_259_p3);
    sensitive << ( brmerge_demorgan_i_fu_203_p2 );
    sensitive << ( s_val_0_i_f_assign_s_fu_239_p3 );
    sensitive << ( s_val_0_i_f_assign_1_fu_252_p3 );

    SC_METHOD(thread_s_val_0_i_f_assign_1_fu_252_p3);
    sensitive << ( tmp_43_reg_371 );
    sensitive << ( v_assign_fu_74 );
    sensitive << ( tmp_41_i_fu_246_p2 );

    SC_METHOD(thread_s_val_0_i_f_assign_2_fu_291_p3);
    sensitive << ( tmp_43_reg_371 );
    sensitive << ( v_assign_1_fu_70 );
    sensitive << ( tmp_44_i_fu_285_p2 );

    SC_METHOD(thread_s_val_0_i_f_assign_3_fu_304_p3);
    sensitive << ( tmp_43_reg_371 );
    sensitive << ( v_assign_1_fu_70 );
    sensitive << ( tmp_47_i_fu_298_p2 );

    SC_METHOD(thread_s_val_0_i_f_assign_s_fu_239_p3);
    sensitive << ( tmp_43_reg_371 );
    sensitive << ( v_assign_fu_74 );
    sensitive << ( tmp_38_i_fu_233_p2 );

    SC_METHOD(thread_src_data_stream_V_blk_n);
    sensitive << ( src_data_stream_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( exitcond_i_i_reg_362 );

    SC_METHOD(thread_src_data_stream_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_i_i_reg_362 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_t_V_5_fu_168_p1);
    sensitive << ( v_assign_fu_74 );

    SC_METHOD(thread_t_V_8_fu_192_p1);
    sensitive << ( tmp_43_reg_371 );

    SC_METHOD(thread_t_V_9_fu_180_p1);
    sensitive << ( v_assign_1_fu_70 );

    SC_METHOD(thread_tmp_38_i_fu_233_p2);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_reg_pp0_iter1_exitcond_i_i_reg_362 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( p_Result_9_fu_213_p3 );
    sensitive << ( p_Result_10_fu_225_p3 );

    SC_METHOD(thread_tmp_41_fu_221_p1);
    sensitive << ( t_V_5_fu_168_p1 );

    SC_METHOD(thread_tmp_41_i_fu_246_p2);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_reg_pp0_iter1_exitcond_i_i_reg_362 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( t_V_5_fu_168_p1 );
    sensitive << ( t_V_8_fu_192_p1 );

    SC_METHOD(thread_tmp_42_fu_273_p1);
    sensitive << ( t_V_9_fu_180_p1 );

    SC_METHOD(thread_tmp_44_i_fu_285_p2);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_reg_pp0_iter1_exitcond_i_i_reg_362 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( p_Result_9_fu_213_p3 );
    sensitive << ( p_Result_11_fu_277_p3 );

    SC_METHOD(thread_tmp_47_i_fu_298_p2);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_reg_pp0_iter1_exitcond_i_i_reg_362 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( t_V_9_fu_180_p1 );
    sensitive << ( t_V_8_fu_192_p1 );

    SC_METHOD(thread_tmp_fu_209_p1);
    sensitive << ( t_V_8_fu_192_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( min_val_out_full_n );
    sensitive << ( max_val_out_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( exitcond139_i_i_fu_144_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_i_i_fu_156_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "00001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "MinMaxLoc_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, src_data_stream_V_dout, "(port)src_data_stream_V_dout");
    sc_trace(mVcdFile, src_data_stream_V_empty_n, "(port)src_data_stream_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_V_read, "(port)src_data_stream_V_read");
    sc_trace(mVcdFile, min_val_out_din, "(port)min_val_out_din");
    sc_trace(mVcdFile, min_val_out_full_n, "(port)min_val_out_full_n");
    sc_trace(mVcdFile, min_val_out_write, "(port)min_val_out_write");
    sc_trace(mVcdFile, max_val_out_din, "(port)max_val_out_din");
    sc_trace(mVcdFile, max_val_out_full_n, "(port)max_val_out_full_n");
    sc_trace(mVcdFile, max_val_out_write, "(port)max_val_out_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, src_data_stream_V_blk_n, "src_data_stream_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, exitcond_i_i_reg_362, "exitcond_i_i_reg_362");
    sc_trace(mVcdFile, min_val_out_blk_n, "min_val_out_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, max_val_out_blk_n, "max_val_out_blk_n");
    sc_trace(mVcdFile, t_V_10_reg_109, "t_V_10_reg_109");
    sc_trace(mVcdFile, exitcond139_i_i_fu_144_p2, "exitcond139_i_i_fu_144_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_V_fu_150_p2, "i_V_fu_150_p2");
    sc_trace(mVcdFile, i_V_reg_347, "i_V_reg_347");
    sc_trace(mVcdFile, min_val_dc_fu_120_p1, "min_val_dc_fu_120_p1");
    sc_trace(mVcdFile, min_val_dc_reg_352, "min_val_dc_reg_352");
    sc_trace(mVcdFile, max_val_dc_fu_123_p1, "max_val_dc_fu_123_p1");
    sc_trace(mVcdFile, max_val_dc_reg_357, "max_val_dc_reg_357");
    sc_trace(mVcdFile, exitcond_i_i_fu_156_p2, "exitcond_i_i_fu_156_p2");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter0, "ap_block_state3_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter1, "ap_block_state4_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state5_pp0_stage0_iter2, "ap_block_state5_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, ap_reg_pp0_iter1_exitcond_i_i_reg_362, "ap_reg_pp0_iter1_exitcond_i_i_reg_362");
    sc_trace(mVcdFile, j_V_fu_162_p2, "j_V_fu_162_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, tmp_43_reg_371, "tmp_43_reg_371");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state3, "ap_condition_pp0_exit_iter0_state3");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, t_V_reg_98, "t_V_reg_98");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, ap_block_state7, "ap_block_state7");
    sc_trace(mVcdFile, v_assign_1_fu_70, "v_assign_1_fu_70");
    sc_trace(mVcdFile, p_max_val_4_i_i_fu_311_p3, "p_max_val_4_i_i_fu_311_p3");
    sc_trace(mVcdFile, v_assign_fu_74, "v_assign_fu_74");
    sc_trace(mVcdFile, p_min_val_4_i_i_fu_259_p3, "p_min_val_4_i_i_fu_259_p3");
    sc_trace(mVcdFile, t_V_5_fu_168_p1, "t_V_5_fu_168_p1");
    sc_trace(mVcdFile, t_V_9_fu_180_p1, "t_V_9_fu_180_p1");
    sc_trace(mVcdFile, t_V_8_fu_192_p1, "t_V_8_fu_192_p1");
    sc_trace(mVcdFile, p_Result_2_fu_172_p3, "p_Result_2_fu_172_p3");
    sc_trace(mVcdFile, p_Result_s_fu_195_p3, "p_Result_s_fu_195_p3");
    sc_trace(mVcdFile, tmp_fu_209_p1, "tmp_fu_209_p1");
    sc_trace(mVcdFile, tmp_41_fu_221_p1, "tmp_41_fu_221_p1");
    sc_trace(mVcdFile, p_Result_9_fu_213_p3, "p_Result_9_fu_213_p3");
    sc_trace(mVcdFile, p_Result_10_fu_225_p3, "p_Result_10_fu_225_p3");
    sc_trace(mVcdFile, tmp_38_i_fu_233_p2, "tmp_38_i_fu_233_p2");
    sc_trace(mVcdFile, tmp_41_i_fu_246_p2, "tmp_41_i_fu_246_p2");
    sc_trace(mVcdFile, brmerge_demorgan_i_fu_203_p2, "brmerge_demorgan_i_fu_203_p2");
    sc_trace(mVcdFile, s_val_0_i_f_assign_s_fu_239_p3, "s_val_0_i_f_assign_s_fu_239_p3");
    sc_trace(mVcdFile, s_val_0_i_f_assign_1_fu_252_p3, "s_val_0_i_f_assign_1_fu_252_p3");
    sc_trace(mVcdFile, p_Result_7_fu_184_p3, "p_Result_7_fu_184_p3");
    sc_trace(mVcdFile, tmp_42_fu_273_p1, "tmp_42_fu_273_p1");
    sc_trace(mVcdFile, p_Result_11_fu_277_p3, "p_Result_11_fu_277_p3");
    sc_trace(mVcdFile, tmp_44_i_fu_285_p2, "tmp_44_i_fu_285_p2");
    sc_trace(mVcdFile, tmp_47_i_fu_298_p2, "tmp_47_i_fu_298_p2");
    sc_trace(mVcdFile, brmerge35_demorgan_i_fu_267_p2, "brmerge35_demorgan_i_fu_267_p2");
    sc_trace(mVcdFile, s_val_0_i_f_assign_2_fu_291_p3, "s_val_0_i_f_assign_2_fu_291_p3");
    sc_trace(mVcdFile, s_val_0_i_f_assign_3_fu_304_p3, "s_val_0_i_f_assign_3_fu_304_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

MinMaxLoc::~MinMaxLoc() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ImgProcess_Top_fpkbM_U69;
    delete ImgProcess_Top_fpkbM_U70;
}

void MinMaxLoc::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, min_val_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, max_val_out_full_n.read())))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, exitcond139_i_i_fu_144_p2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state3.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, exitcond139_i_i_fu_144_p2.read()))) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_i_fu_156_p2.read()))) {
        t_V_10_reg_109 = j_V_fu_162_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond139_i_i_fu_144_p2.read()))) {
        t_V_10_reg_109 = ap_const_lv9_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        t_V_reg_98 = i_V_reg_347.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        t_V_reg_98 = ap_const_lv10_0;
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter1_exitcond_i_i_reg_362.read()))) {
        v_assign_1_fu_70 = p_max_val_4_i_i_fu_311_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        v_assign_1_fu_70 = ap_const_lv32_CF000000;
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter1_exitcond_i_i_reg_362.read()))) {
        v_assign_fu_74 = p_min_val_4_i_i_fu_259_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        v_assign_fu_74 = ap_const_lv32_4F000000;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        ap_reg_pp0_iter1_exitcond_i_i_reg_362 = exitcond_i_i_reg_362.read();
        exitcond_i_i_reg_362 = exitcond_i_i_fu_156_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_V_reg_347 = i_V_fu_150_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond139_i_i_fu_144_p2.read(), ap_const_lv1_1))) {
        max_val_dc_reg_357 = max_val_dc_fu_123_p1.read();
        min_val_dc_reg_352 = min_val_dc_fu_120_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(exitcond_i_i_reg_362.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp_43_reg_371 = src_data_stream_V_dout.read();
    }
}

void MinMaxLoc::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[2];
}

void MinMaxLoc::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void MinMaxLoc::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void MinMaxLoc::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[3];
}

void MinMaxLoc::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[4];
}

void MinMaxLoc::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void MinMaxLoc::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(exitcond_i_i_reg_362.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_V_empty_n.read()));
}

void MinMaxLoc::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(exitcond_i_i_reg_362.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_V_empty_n.read()));
}

void MinMaxLoc::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void MinMaxLoc::thread_ap_block_state3_pp0_stage0_iter0() {
    ap_block_state3_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void MinMaxLoc::thread_ap_block_state4_pp0_stage0_iter1() {
    ap_block_state4_pp0_stage0_iter1 = (esl_seteq<1,1,1>(exitcond_i_i_reg_362.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_V_empty_n.read()));
}

void MinMaxLoc::thread_ap_block_state5_pp0_stage0_iter2() {
    ap_block_state5_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void MinMaxLoc::thread_ap_block_state7() {
    ap_block_state7 = (esl_seteq<1,1,1>(ap_const_logic_0, min_val_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, max_val_out_full_n.read()));
}

void MinMaxLoc::thread_ap_condition_pp0_exit_iter0_state3() {
    if (esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_i_i_fu_156_p2.read())) {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_0;
    }
}

void MinMaxLoc::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, min_val_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, max_val_out_full_n.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void MinMaxLoc::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void MinMaxLoc::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void MinMaxLoc::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void MinMaxLoc::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, min_val_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, max_val_out_full_n.read())))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void MinMaxLoc::thread_brmerge35_demorgan_i_fu_267_p2() {
    brmerge35_demorgan_i_fu_267_p2 = (p_Result_7_fu_184_p3.read() & p_Result_s_fu_195_p3.read());
}

void MinMaxLoc::thread_brmerge_demorgan_i_fu_203_p2() {
    brmerge_demorgan_i_fu_203_p2 = (p_Result_2_fu_172_p3.read() & p_Result_s_fu_195_p3.read());
}

void MinMaxLoc::thread_exitcond139_i_i_fu_144_p2() {
    exitcond139_i_i_fu_144_p2 = (!t_V_reg_98.read().is_01() || !ap_const_lv10_2D0.is_01())? sc_lv<1>(): sc_lv<1>(t_V_reg_98.read() == ap_const_lv10_2D0);
}

void MinMaxLoc::thread_exitcond_i_i_fu_156_p2() {
    exitcond_i_i_fu_156_p2 = (!t_V_10_reg_109.read().is_01() || !ap_const_lv9_1E0.is_01())? sc_lv<1>(): sc_lv<1>(t_V_10_reg_109.read() == ap_const_lv9_1E0);
}

void MinMaxLoc::thread_i_V_fu_150_p2() {
    i_V_fu_150_p2 = (!t_V_reg_98.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(t_V_reg_98.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void MinMaxLoc::thread_j_V_fu_162_p2() {
    j_V_fu_162_p2 = (!t_V_10_reg_109.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(t_V_10_reg_109.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void MinMaxLoc::thread_max_val_out_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        max_val_out_blk_n = max_val_out_full_n.read();
    } else {
        max_val_out_blk_n = ap_const_logic_1;
    }
}

void MinMaxLoc::thread_max_val_out_din() {
    max_val_out_din = max_val_dc_reg_357.read();
}

void MinMaxLoc::thread_max_val_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, min_val_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, max_val_out_full_n.read())))) {
        max_val_out_write = ap_const_logic_1;
    } else {
        max_val_out_write = ap_const_logic_0;
    }
}

void MinMaxLoc::thread_min_val_out_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        min_val_out_blk_n = min_val_out_full_n.read();
    } else {
        min_val_out_blk_n = ap_const_logic_1;
    }
}

void MinMaxLoc::thread_min_val_out_din() {
    min_val_out_din = min_val_dc_reg_352.read();
}

void MinMaxLoc::thread_min_val_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, min_val_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, max_val_out_full_n.read())))) {
        min_val_out_write = ap_const_logic_1;
    } else {
        min_val_out_write = ap_const_logic_0;
    }
}

void MinMaxLoc::thread_p_Result_10_fu_225_p3() {
    p_Result_10_fu_225_p3 = esl_concat<1,31>(ap_const_lv1_1, tmp_41_fu_221_p1.read());
}

void MinMaxLoc::thread_p_Result_11_fu_277_p3() {
    p_Result_11_fu_277_p3 = esl_concat<1,31>(ap_const_lv1_1, tmp_42_fu_273_p1.read());
}

void MinMaxLoc::thread_p_Result_2_fu_172_p3() {
    p_Result_2_fu_172_p3 = t_V_5_fu_168_p1.read().range(31, 31);
}

void MinMaxLoc::thread_p_Result_7_fu_184_p3() {
    p_Result_7_fu_184_p3 = t_V_9_fu_180_p1.read().range(31, 31);
}

void MinMaxLoc::thread_p_Result_9_fu_213_p3() {
    p_Result_9_fu_213_p3 = esl_concat<1,31>(ap_const_lv1_1, tmp_fu_209_p1.read());
}

void MinMaxLoc::thread_p_Result_s_fu_195_p3() {
    p_Result_s_fu_195_p3 = t_V_8_fu_192_p1.read().range(31, 31);
}

void MinMaxLoc::thread_p_max_val_4_i_i_fu_311_p3() {
    p_max_val_4_i_i_fu_311_p3 = (!brmerge35_demorgan_i_fu_267_p2.read()[0].is_01())? sc_lv<32>(): ((brmerge35_demorgan_i_fu_267_p2.read()[0].to_bool())? s_val_0_i_f_assign_2_fu_291_p3.read(): s_val_0_i_f_assign_3_fu_304_p3.read());
}

void MinMaxLoc::thread_p_min_val_4_i_i_fu_259_p3() {
    p_min_val_4_i_i_fu_259_p3 = (!brmerge_demorgan_i_fu_203_p2.read()[0].is_01())? sc_lv<32>(): ((brmerge_demorgan_i_fu_203_p2.read()[0].to_bool())? s_val_0_i_f_assign_s_fu_239_p3.read(): s_val_0_i_f_assign_1_fu_252_p3.read());
}

void MinMaxLoc::thread_s_val_0_i_f_assign_1_fu_252_p3() {
    s_val_0_i_f_assign_1_fu_252_p3 = (!tmp_41_i_fu_246_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_41_i_fu_246_p2.read()[0].to_bool())? tmp_43_reg_371.read(): v_assign_fu_74.read());
}

void MinMaxLoc::thread_s_val_0_i_f_assign_2_fu_291_p3() {
    s_val_0_i_f_assign_2_fu_291_p3 = (!tmp_44_i_fu_285_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_44_i_fu_285_p2.read()[0].to_bool())? tmp_43_reg_371.read(): v_assign_1_fu_70.read());
}

void MinMaxLoc::thread_s_val_0_i_f_assign_3_fu_304_p3() {
    s_val_0_i_f_assign_3_fu_304_p3 = (!tmp_47_i_fu_298_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_47_i_fu_298_p2.read()[0].to_bool())? tmp_43_reg_371.read(): v_assign_1_fu_70.read());
}

void MinMaxLoc::thread_s_val_0_i_f_assign_s_fu_239_p3() {
    s_val_0_i_f_assign_s_fu_239_p3 = (!tmp_38_i_fu_233_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_38_i_fu_233_p2.read()[0].to_bool())? tmp_43_reg_371.read(): v_assign_fu_74.read());
}

void MinMaxLoc::thread_src_data_stream_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(exitcond_i_i_reg_362.read(), ap_const_lv1_0))) {
        src_data_stream_V_blk_n = src_data_stream_V_empty_n.read();
    } else {
        src_data_stream_V_blk_n = ap_const_logic_1;
    }
}

void MinMaxLoc::thread_src_data_stream_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(exitcond_i_i_reg_362.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        src_data_stream_V_read = ap_const_logic_1;
    } else {
        src_data_stream_V_read = ap_const_logic_0;
    }
}

void MinMaxLoc::thread_t_V_5_fu_168_p1() {
    t_V_5_fu_168_p1 = v_assign_fu_74.read();
}

void MinMaxLoc::thread_t_V_8_fu_192_p1() {
    t_V_8_fu_192_p1 = tmp_43_reg_371.read();
}

void MinMaxLoc::thread_t_V_9_fu_180_p1() {
    t_V_9_fu_180_p1 = v_assign_1_fu_70.read();
}

void MinMaxLoc::thread_tmp_38_i_fu_233_p2() {
    tmp_38_i_fu_233_p2 = (!p_Result_9_fu_213_p3.read().is_01() || !p_Result_10_fu_225_p3.read().is_01())? sc_lv<1>(): (sc_bigint<32>(p_Result_9_fu_213_p3.read()) > sc_bigint<32>(p_Result_10_fu_225_p3.read()));
}

void MinMaxLoc::thread_tmp_41_fu_221_p1() {
    tmp_41_fu_221_p1 = t_V_5_fu_168_p1.read().range(31-1, 0);
}

void MinMaxLoc::thread_tmp_41_i_fu_246_p2() {
    tmp_41_i_fu_246_p2 = (!t_V_8_fu_192_p1.read().is_01() || !t_V_5_fu_168_p1.read().is_01())? sc_lv<1>(): (sc_bigint<32>(t_V_8_fu_192_p1.read()) < sc_bigint<32>(t_V_5_fu_168_p1.read()));
}

void MinMaxLoc::thread_tmp_42_fu_273_p1() {
    tmp_42_fu_273_p1 = t_V_9_fu_180_p1.read().range(31-1, 0);
}

void MinMaxLoc::thread_tmp_44_i_fu_285_p2() {
    tmp_44_i_fu_285_p2 = (!p_Result_9_fu_213_p3.read().is_01() || !p_Result_11_fu_277_p3.read().is_01())? sc_lv<1>(): (sc_bigint<32>(p_Result_9_fu_213_p3.read()) < sc_bigint<32>(p_Result_11_fu_277_p3.read()));
}

void MinMaxLoc::thread_tmp_47_i_fu_298_p2() {
    tmp_47_i_fu_298_p2 = (!t_V_8_fu_192_p1.read().is_01() || !t_V_9_fu_180_p1.read().is_01())? sc_lv<1>(): (sc_bigint<32>(t_V_8_fu_192_p1.read()) > sc_bigint<32>(t_V_9_fu_180_p1.read()));
}

void MinMaxLoc::thread_tmp_fu_209_p1() {
    tmp_fu_209_p1 = t_V_8_fu_192_p1.read().range(31-1, 0);
}

void MinMaxLoc::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond139_i_i_fu_144_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 4 : 
            if ((!(esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_i_i_fu_156_p2.read()) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_i_i_fu_156_p2.read()) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, min_val_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, max_val_out_full_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        default : 
            ap_NS_fsm = "XXXXX";
            break;
    }
}

}

