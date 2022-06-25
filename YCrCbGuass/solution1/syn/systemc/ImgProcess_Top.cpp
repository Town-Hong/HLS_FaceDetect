// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ImgProcess_Top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<32> ImgProcess_Top::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<4> ImgProcess_Top::ap_const_lv4_0 = "0000";
const sc_lv<1> ImgProcess_Top::ap_const_lv1_0 = "0";
const sc_lv<64> ImgProcess_Top::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_logic ImgProcess_Top::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic ImgProcess_Top::ap_const_logic_0 = sc_dt::Log_0;

ImgProcess_Top::ImgProcess_Top(sc_module_name name) : sc_module(name), mVcdFile(0) {
    AXIvideo2Mat_U0 = new AXIvideo2Mat("AXIvideo2Mat_U0");
    AXIvideo2Mat_U0->ap_clk(ap_clk);
    AXIvideo2Mat_U0->ap_rst(ap_rst_n_inv);
    AXIvideo2Mat_U0->ap_start(AXIvideo2Mat_U0_ap_start);
    AXIvideo2Mat_U0->ap_done(AXIvideo2Mat_U0_ap_done);
    AXIvideo2Mat_U0->ap_continue(AXIvideo2Mat_U0_ap_continue);
    AXIvideo2Mat_U0->ap_idle(AXIvideo2Mat_U0_ap_idle);
    AXIvideo2Mat_U0->ap_ready(AXIvideo2Mat_U0_ap_ready);
    AXIvideo2Mat_U0->input_r_TDATA(input_r_TDATA);
    AXIvideo2Mat_U0->input_r_TVALID(input_r_TVALID);
    AXIvideo2Mat_U0->input_r_TREADY(AXIvideo2Mat_U0_input_r_TREADY);
    AXIvideo2Mat_U0->input_r_TKEEP(input_r_TKEEP);
    AXIvideo2Mat_U0->input_r_TSTRB(input_r_TSTRB);
    AXIvideo2Mat_U0->input_r_TUSER(input_r_TUSER);
    AXIvideo2Mat_U0->input_r_TLAST(input_r_TLAST);
    AXIvideo2Mat_U0->input_r_TID(input_r_TID);
    AXIvideo2Mat_U0->input_r_TDEST(input_r_TDEST);
    AXIvideo2Mat_U0->rows(rows);
    AXIvideo2Mat_U0->cols(cols);
    AXIvideo2Mat_U0->src_mat_data_stream_s_din(AXIvideo2Mat_U0_src_mat_data_stream_s_din);
    AXIvideo2Mat_U0->src_mat_data_stream_s_full_n(src_mat_data_stream_s_full_n);
    AXIvideo2Mat_U0->src_mat_data_stream_s_write(AXIvideo2Mat_U0_src_mat_data_stream_s_write);
    AXIvideo2Mat_U0->src_mat_data_stream_1_din(AXIvideo2Mat_U0_src_mat_data_stream_1_din);
    AXIvideo2Mat_U0->src_mat_data_stream_1_full_n(src_mat_data_stream_1_full_n);
    AXIvideo2Mat_U0->src_mat_data_stream_1_write(AXIvideo2Mat_U0_src_mat_data_stream_1_write);
    AXIvideo2Mat_U0->src_mat_data_stream_2_din(AXIvideo2Mat_U0_src_mat_data_stream_2_din);
    AXIvideo2Mat_U0->src_mat_data_stream_2_full_n(src_mat_data_stream_2_full_n);
    AXIvideo2Mat_U0->src_mat_data_stream_2_write(AXIvideo2Mat_U0_src_mat_data_stream_2_write);
    YCrCb_GUASSIAN_U0 = new YCrCb_GUASSIAN("YCrCb_GUASSIAN_U0");
    YCrCb_GUASSIAN_U0->rows(rows);
    YCrCb_GUASSIAN_U0->cols(cols);
    YCrCb_GUASSIAN_U0->src_data_stream_0_V_dout(src_mat_data_stream_s_dout);
    YCrCb_GUASSIAN_U0->src_data_stream_0_V_empty_n(src_mat_data_stream_s_empty_n);
    YCrCb_GUASSIAN_U0->src_data_stream_0_V_read(YCrCb_GUASSIAN_U0_src_data_stream_0_V_read);
    YCrCb_GUASSIAN_U0->src_data_stream_1_V_dout(src_mat_data_stream_1_dout);
    YCrCb_GUASSIAN_U0->src_data_stream_1_V_empty_n(src_mat_data_stream_1_empty_n);
    YCrCb_GUASSIAN_U0->src_data_stream_1_V_read(YCrCb_GUASSIAN_U0_src_data_stream_1_V_read);
    YCrCb_GUASSIAN_U0->src_data_stream_2_V_dout(src_mat_data_stream_2_dout);
    YCrCb_GUASSIAN_U0->src_data_stream_2_V_empty_n(src_mat_data_stream_2_empty_n);
    YCrCb_GUASSIAN_U0->src_data_stream_2_V_read(YCrCb_GUASSIAN_U0_src_data_stream_2_V_read);
    YCrCb_GUASSIAN_U0->res_data_stream_V_din(YCrCb_GUASSIAN_U0_res_data_stream_V_din);
    YCrCb_GUASSIAN_U0->res_data_stream_V_full_n(dst_mat_data_stream_s_full_n);
    YCrCb_GUASSIAN_U0->res_data_stream_V_write(YCrCb_GUASSIAN_U0_res_data_stream_V_write);
    YCrCb_GUASSIAN_U0->nor_data_stream_V_din(YCrCb_GUASSIAN_U0_nor_data_stream_V_din);
    YCrCb_GUASSIAN_U0->nor_data_stream_V_full_n(nor_mat_data_stream_s_full_n);
    YCrCb_GUASSIAN_U0->nor_data_stream_V_write(YCrCb_GUASSIAN_U0_nor_data_stream_V_write);
    YCrCb_GUASSIAN_U0->threshold(YCrCb_GUASSIAN_U0_threshold);
    YCrCb_GUASSIAN_U0->ap_clk(ap_clk);
    YCrCb_GUASSIAN_U0->ap_rst(ap_rst_n_inv);
    YCrCb_GUASSIAN_U0->ap_start(YCrCb_GUASSIAN_U0_ap_start);
    YCrCb_GUASSIAN_U0->rows_ap_vld(ap_var_for_const0);
    YCrCb_GUASSIAN_U0->cols_ap_vld(ap_var_for_const0);
    YCrCb_GUASSIAN_U0->ap_done(YCrCb_GUASSIAN_U0_ap_done);
    YCrCb_GUASSIAN_U0->threshold_ap_vld(YCrCb_GUASSIAN_U0_threshold_ap_vld);
    YCrCb_GUASSIAN_U0->ap_ready(YCrCb_GUASSIAN_U0_ap_ready);
    YCrCb_GUASSIAN_U0->ap_idle(YCrCb_GUASSIAN_U0_ap_idle);
    YCrCb_GUASSIAN_U0->ap_continue(YCrCb_GUASSIAN_U0_ap_continue);
    Mat2AXIvideo_1_U0 = new Mat2AXIvideo_1("Mat2AXIvideo_1_U0");
    Mat2AXIvideo_1_U0->ap_clk(ap_clk);
    Mat2AXIvideo_1_U0->ap_rst(ap_rst_n_inv);
    Mat2AXIvideo_1_U0->ap_start(Mat2AXIvideo_1_U0_ap_start);
    Mat2AXIvideo_1_U0->ap_done(Mat2AXIvideo_1_U0_ap_done);
    Mat2AXIvideo_1_U0->ap_continue(Mat2AXIvideo_1_U0_ap_continue);
    Mat2AXIvideo_1_U0->ap_idle(Mat2AXIvideo_1_U0_ap_idle);
    Mat2AXIvideo_1_U0->ap_ready(Mat2AXIvideo_1_U0_ap_ready);
    Mat2AXIvideo_1_U0->rows(rows);
    Mat2AXIvideo_1_U0->cols(cols);
    Mat2AXIvideo_1_U0->dst_mat_data_stream_s_dout(dst_mat_data_stream_s_dout);
    Mat2AXIvideo_1_U0->dst_mat_data_stream_s_empty_n(dst_mat_data_stream_s_empty_n);
    Mat2AXIvideo_1_U0->dst_mat_data_stream_s_read(Mat2AXIvideo_1_U0_dst_mat_data_stream_s_read);
    Mat2AXIvideo_1_U0->output_r_TDATA(Mat2AXIvideo_1_U0_output_r_TDATA);
    Mat2AXIvideo_1_U0->output_r_TVALID(Mat2AXIvideo_1_U0_output_r_TVALID);
    Mat2AXIvideo_1_U0->output_r_TREADY(output_r_TREADY);
    Mat2AXIvideo_1_U0->output_r_TKEEP(Mat2AXIvideo_1_U0_output_r_TKEEP);
    Mat2AXIvideo_1_U0->output_r_TSTRB(Mat2AXIvideo_1_U0_output_r_TSTRB);
    Mat2AXIvideo_1_U0->output_r_TUSER(Mat2AXIvideo_1_U0_output_r_TUSER);
    Mat2AXIvideo_1_U0->output_r_TLAST(Mat2AXIvideo_1_U0_output_r_TLAST);
    Mat2AXIvideo_1_U0->output_r_TID(Mat2AXIvideo_1_U0_output_r_TID);
    Mat2AXIvideo_1_U0->output_r_TDEST(Mat2AXIvideo_1_U0_output_r_TDEST);
    Mat2AXIvideo_U0 = new Mat2AXIvideo("Mat2AXIvideo_U0");
    Mat2AXIvideo_U0->ap_clk(ap_clk);
    Mat2AXIvideo_U0->ap_rst(ap_rst_n_inv);
    Mat2AXIvideo_U0->ap_start(Mat2AXIvideo_U0_ap_start);
    Mat2AXIvideo_U0->ap_done(Mat2AXIvideo_U0_ap_done);
    Mat2AXIvideo_U0->ap_continue(Mat2AXIvideo_U0_ap_continue);
    Mat2AXIvideo_U0->ap_idle(Mat2AXIvideo_U0_ap_idle);
    Mat2AXIvideo_U0->ap_ready(Mat2AXIvideo_U0_ap_ready);
    Mat2AXIvideo_U0->rows(rows);
    Mat2AXIvideo_U0->cols(cols);
    Mat2AXIvideo_U0->nor_mat_data_stream_s_dout(nor_mat_data_stream_s_dout);
    Mat2AXIvideo_U0->nor_mat_data_stream_s_empty_n(nor_mat_data_stream_s_empty_n);
    Mat2AXIvideo_U0->nor_mat_data_stream_s_read(Mat2AXIvideo_U0_nor_mat_data_stream_s_read);
    Mat2AXIvideo_U0->nor_output_TDATA(Mat2AXIvideo_U0_nor_output_TDATA);
    Mat2AXIvideo_U0->nor_output_TVALID(Mat2AXIvideo_U0_nor_output_TVALID);
    Mat2AXIvideo_U0->nor_output_TREADY(nor_output_TREADY);
    Mat2AXIvideo_U0->nor_output_TKEEP(Mat2AXIvideo_U0_nor_output_TKEEP);
    Mat2AXIvideo_U0->nor_output_TSTRB(Mat2AXIvideo_U0_nor_output_TSTRB);
    Mat2AXIvideo_U0->nor_output_TUSER(Mat2AXIvideo_U0_nor_output_TUSER);
    Mat2AXIvideo_U0->nor_output_TLAST(Mat2AXIvideo_U0_nor_output_TLAST);
    Mat2AXIvideo_U0->nor_output_TID(Mat2AXIvideo_U0_nor_output_TID);
    Mat2AXIvideo_U0->nor_output_TDEST(Mat2AXIvideo_U0_nor_output_TDEST);
    src_mat_data_stream_s_U = new fifo_w8_d1_A_x_x("src_mat_data_stream_s_U");
    src_mat_data_stream_s_U->clk(ap_clk);
    src_mat_data_stream_s_U->reset(ap_rst_n_inv);
    src_mat_data_stream_s_U->if_read_ce(ap_var_for_const0);
    src_mat_data_stream_s_U->if_write_ce(ap_var_for_const0);
    src_mat_data_stream_s_U->if_din(AXIvideo2Mat_U0_src_mat_data_stream_s_din);
    src_mat_data_stream_s_U->if_full_n(src_mat_data_stream_s_full_n);
    src_mat_data_stream_s_U->if_write(AXIvideo2Mat_U0_src_mat_data_stream_s_write);
    src_mat_data_stream_s_U->if_dout(src_mat_data_stream_s_dout);
    src_mat_data_stream_s_U->if_empty_n(src_mat_data_stream_s_empty_n);
    src_mat_data_stream_s_U->if_read(YCrCb_GUASSIAN_U0_src_data_stream_0_V_read);
    src_mat_data_stream_1_U = new fifo_w8_d1_A_x_x("src_mat_data_stream_1_U");
    src_mat_data_stream_1_U->clk(ap_clk);
    src_mat_data_stream_1_U->reset(ap_rst_n_inv);
    src_mat_data_stream_1_U->if_read_ce(ap_var_for_const0);
    src_mat_data_stream_1_U->if_write_ce(ap_var_for_const0);
    src_mat_data_stream_1_U->if_din(AXIvideo2Mat_U0_src_mat_data_stream_1_din);
    src_mat_data_stream_1_U->if_full_n(src_mat_data_stream_1_full_n);
    src_mat_data_stream_1_U->if_write(AXIvideo2Mat_U0_src_mat_data_stream_1_write);
    src_mat_data_stream_1_U->if_dout(src_mat_data_stream_1_dout);
    src_mat_data_stream_1_U->if_empty_n(src_mat_data_stream_1_empty_n);
    src_mat_data_stream_1_U->if_read(YCrCb_GUASSIAN_U0_src_data_stream_1_V_read);
    src_mat_data_stream_2_U = new fifo_w8_d1_A_x_x("src_mat_data_stream_2_U");
    src_mat_data_stream_2_U->clk(ap_clk);
    src_mat_data_stream_2_U->reset(ap_rst_n_inv);
    src_mat_data_stream_2_U->if_read_ce(ap_var_for_const0);
    src_mat_data_stream_2_U->if_write_ce(ap_var_for_const0);
    src_mat_data_stream_2_U->if_din(AXIvideo2Mat_U0_src_mat_data_stream_2_din);
    src_mat_data_stream_2_U->if_full_n(src_mat_data_stream_2_full_n);
    src_mat_data_stream_2_U->if_write(AXIvideo2Mat_U0_src_mat_data_stream_2_write);
    src_mat_data_stream_2_U->if_dout(src_mat_data_stream_2_dout);
    src_mat_data_stream_2_U->if_empty_n(src_mat_data_stream_2_empty_n);
    src_mat_data_stream_2_U->if_read(YCrCb_GUASSIAN_U0_src_data_stream_2_V_read);
    dst_mat_data_stream_s_U = new fifo_w8_d1_A_x_x("dst_mat_data_stream_s_U");
    dst_mat_data_stream_s_U->clk(ap_clk);
    dst_mat_data_stream_s_U->reset(ap_rst_n_inv);
    dst_mat_data_stream_s_U->if_read_ce(ap_var_for_const0);
    dst_mat_data_stream_s_U->if_write_ce(ap_var_for_const0);
    dst_mat_data_stream_s_U->if_din(YCrCb_GUASSIAN_U0_res_data_stream_V_din);
    dst_mat_data_stream_s_U->if_full_n(dst_mat_data_stream_s_full_n);
    dst_mat_data_stream_s_U->if_write(YCrCb_GUASSIAN_U0_res_data_stream_V_write);
    dst_mat_data_stream_s_U->if_dout(dst_mat_data_stream_s_dout);
    dst_mat_data_stream_s_U->if_empty_n(dst_mat_data_stream_s_empty_n);
    dst_mat_data_stream_s_U->if_read(Mat2AXIvideo_1_U0_dst_mat_data_stream_s_read);
    nor_mat_data_stream_s_U = new fifo_w32_d1_A_x("nor_mat_data_stream_s_U");
    nor_mat_data_stream_s_U->clk(ap_clk);
    nor_mat_data_stream_s_U->reset(ap_rst_n_inv);
    nor_mat_data_stream_s_U->if_read_ce(ap_var_for_const0);
    nor_mat_data_stream_s_U->if_write_ce(ap_var_for_const0);
    nor_mat_data_stream_s_U->if_din(YCrCb_GUASSIAN_U0_nor_data_stream_V_din);
    nor_mat_data_stream_s_U->if_full_n(nor_mat_data_stream_s_full_n);
    nor_mat_data_stream_s_U->if_write(YCrCb_GUASSIAN_U0_nor_data_stream_V_write);
    nor_mat_data_stream_s_U->if_dout(nor_mat_data_stream_s_dout);
    nor_mat_data_stream_s_U->if_empty_n(nor_mat_data_stream_s_empty_n);
    nor_mat_data_stream_s_U->if_read(Mat2AXIvideo_U0_nor_mat_data_stream_s_read);

    SC_METHOD(thread_AXIvideo2Mat_U0_ap_continue);

    SC_METHOD(thread_AXIvideo2Mat_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_AXIvideo2Mat_U0_start_full_n);

    SC_METHOD(thread_AXIvideo2Mat_U0_start_write);

    SC_METHOD(thread_Mat2AXIvideo_1_U0_ap_continue);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_Mat2AXIvideo_1_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_Mat2AXIvideo_1_U0_start_full_n);

    SC_METHOD(thread_Mat2AXIvideo_1_U0_start_write);

    SC_METHOD(thread_Mat2AXIvideo_U0_ap_continue);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_Mat2AXIvideo_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_Mat2AXIvideo_U0_start_full_n);

    SC_METHOD(thread_Mat2AXIvideo_U0_start_write);

    SC_METHOD(thread_YCrCb_GUASSIAN_U0_ap_continue);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_YCrCb_GUASSIAN_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_YCrCb_GUASSIAN_U0_start_full_n);

    SC_METHOD(thread_YCrCb_GUASSIAN_U0_start_write);

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( AXIvideo2Mat_U0_ap_idle );
    sensitive << ( YCrCb_GUASSIAN_U0_ap_idle );
    sensitive << ( Mat2AXIvideo_1_U0_ap_idle );
    sensitive << ( Mat2AXIvideo_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( AXIvideo2Mat_U0_ap_ready );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_continue);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( Mat2AXIvideo_1_U0_ap_done );
    sensitive << ( Mat2AXIvideo_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( AXIvideo2Mat_U0_ap_ready );

    SC_METHOD(thread_input_r_TREADY);
    sensitive << ( AXIvideo2Mat_U0_input_r_TREADY );

    SC_METHOD(thread_nor_output_TDATA);
    sensitive << ( Mat2AXIvideo_U0_nor_output_TDATA );

    SC_METHOD(thread_nor_output_TDEST);
    sensitive << ( Mat2AXIvideo_U0_nor_output_TDEST );

    SC_METHOD(thread_nor_output_TID);
    sensitive << ( Mat2AXIvideo_U0_nor_output_TID );

    SC_METHOD(thread_nor_output_TKEEP);
    sensitive << ( Mat2AXIvideo_U0_nor_output_TKEEP );

    SC_METHOD(thread_nor_output_TLAST);
    sensitive << ( Mat2AXIvideo_U0_nor_output_TLAST );

    SC_METHOD(thread_nor_output_TSTRB);
    sensitive << ( Mat2AXIvideo_U0_nor_output_TSTRB );

    SC_METHOD(thread_nor_output_TUSER);
    sensitive << ( Mat2AXIvideo_U0_nor_output_TUSER );

    SC_METHOD(thread_nor_output_TVALID);
    sensitive << ( Mat2AXIvideo_U0_nor_output_TVALID );

    SC_METHOD(thread_output_r_TDATA);
    sensitive << ( Mat2AXIvideo_1_U0_output_r_TDATA );

    SC_METHOD(thread_output_r_TDEST);
    sensitive << ( Mat2AXIvideo_1_U0_output_r_TDEST );

    SC_METHOD(thread_output_r_TID);
    sensitive << ( Mat2AXIvideo_1_U0_output_r_TID );

    SC_METHOD(thread_output_r_TKEEP);
    sensitive << ( Mat2AXIvideo_1_U0_output_r_TKEEP );

    SC_METHOD(thread_output_r_TLAST);
    sensitive << ( Mat2AXIvideo_1_U0_output_r_TLAST );

    SC_METHOD(thread_output_r_TSTRB);
    sensitive << ( Mat2AXIvideo_1_U0_output_r_TSTRB );

    SC_METHOD(thread_output_r_TUSER);
    sensitive << ( Mat2AXIvideo_1_U0_output_r_TUSER );

    SC_METHOD(thread_output_r_TVALID);
    sensitive << ( Mat2AXIvideo_1_U0_output_r_TVALID );

    SC_METHOD(thread_threshold);
    sensitive << ( YCrCb_GUASSIAN_U0_threshold );

    SC_METHOD(thread_threshold_ap_vld);
    sensitive << ( YCrCb_GUASSIAN_U0_threshold_ap_vld );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ImgProcess_Top_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, input_r_TDATA, "(port)input_r_TDATA");
    sc_trace(mVcdFile, input_r_TKEEP, "(port)input_r_TKEEP");
    sc_trace(mVcdFile, input_r_TSTRB, "(port)input_r_TSTRB");
    sc_trace(mVcdFile, input_r_TUSER, "(port)input_r_TUSER");
    sc_trace(mVcdFile, input_r_TLAST, "(port)input_r_TLAST");
    sc_trace(mVcdFile, input_r_TID, "(port)input_r_TID");
    sc_trace(mVcdFile, input_r_TDEST, "(port)input_r_TDEST");
    sc_trace(mVcdFile, output_r_TDATA, "(port)output_r_TDATA");
    sc_trace(mVcdFile, output_r_TKEEP, "(port)output_r_TKEEP");
    sc_trace(mVcdFile, output_r_TSTRB, "(port)output_r_TSTRB");
    sc_trace(mVcdFile, output_r_TUSER, "(port)output_r_TUSER");
    sc_trace(mVcdFile, output_r_TLAST, "(port)output_r_TLAST");
    sc_trace(mVcdFile, output_r_TID, "(port)output_r_TID");
    sc_trace(mVcdFile, output_r_TDEST, "(port)output_r_TDEST");
    sc_trace(mVcdFile, nor_output_TDATA, "(port)nor_output_TDATA");
    sc_trace(mVcdFile, nor_output_TKEEP, "(port)nor_output_TKEEP");
    sc_trace(mVcdFile, nor_output_TSTRB, "(port)nor_output_TSTRB");
    sc_trace(mVcdFile, nor_output_TUSER, "(port)nor_output_TUSER");
    sc_trace(mVcdFile, nor_output_TLAST, "(port)nor_output_TLAST");
    sc_trace(mVcdFile, nor_output_TID, "(port)nor_output_TID");
    sc_trace(mVcdFile, nor_output_TDEST, "(port)nor_output_TDEST");
    sc_trace(mVcdFile, rows, "(port)rows");
    sc_trace(mVcdFile, cols, "(port)cols");
    sc_trace(mVcdFile, threshold, "(port)threshold");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, input_r_TVALID, "(port)input_r_TVALID");
    sc_trace(mVcdFile, input_r_TREADY, "(port)input_r_TREADY");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, threshold_ap_vld, "(port)threshold_ap_vld");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, output_r_TVALID, "(port)output_r_TVALID");
    sc_trace(mVcdFile, output_r_TREADY, "(port)output_r_TREADY");
    sc_trace(mVcdFile, nor_output_TVALID, "(port)nor_output_TVALID");
    sc_trace(mVcdFile, nor_output_TREADY, "(port)nor_output_TREADY");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_start, "AXIvideo2Mat_U0_ap_start");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_done, "AXIvideo2Mat_U0_ap_done");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_continue, "AXIvideo2Mat_U0_ap_continue");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_idle, "AXIvideo2Mat_U0_ap_idle");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_ready, "AXIvideo2Mat_U0_ap_ready");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_input_r_TREADY, "AXIvideo2Mat_U0_input_r_TREADY");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_src_mat_data_stream_s_din, "AXIvideo2Mat_U0_src_mat_data_stream_s_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_src_mat_data_stream_s_write, "AXIvideo2Mat_U0_src_mat_data_stream_s_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_src_mat_data_stream_1_din, "AXIvideo2Mat_U0_src_mat_data_stream_1_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_src_mat_data_stream_1_write, "AXIvideo2Mat_U0_src_mat_data_stream_1_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_src_mat_data_stream_2_din, "AXIvideo2Mat_U0_src_mat_data_stream_2_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_src_mat_data_stream_2_write, "AXIvideo2Mat_U0_src_mat_data_stream_2_write");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_src_data_stream_0_V_read, "YCrCb_GUASSIAN_U0_src_data_stream_0_V_read");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_src_data_stream_1_V_read, "YCrCb_GUASSIAN_U0_src_data_stream_1_V_read");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_src_data_stream_2_V_read, "YCrCb_GUASSIAN_U0_src_data_stream_2_V_read");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_res_data_stream_V_din, "YCrCb_GUASSIAN_U0_res_data_stream_V_din");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_res_data_stream_V_write, "YCrCb_GUASSIAN_U0_res_data_stream_V_write");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_nor_data_stream_V_din, "YCrCb_GUASSIAN_U0_nor_data_stream_V_din");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_nor_data_stream_V_write, "YCrCb_GUASSIAN_U0_nor_data_stream_V_write");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_threshold, "YCrCb_GUASSIAN_U0_threshold");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_ap_start, "YCrCb_GUASSIAN_U0_ap_start");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_ap_done, "YCrCb_GUASSIAN_U0_ap_done");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_threshold_ap_vld, "YCrCb_GUASSIAN_U0_threshold_ap_vld");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_ap_ready, "YCrCb_GUASSIAN_U0_ap_ready");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_ap_idle, "YCrCb_GUASSIAN_U0_ap_idle");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_ap_continue, "YCrCb_GUASSIAN_U0_ap_continue");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_ap_start, "Mat2AXIvideo_1_U0_ap_start");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_ap_done, "Mat2AXIvideo_1_U0_ap_done");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_ap_continue, "Mat2AXIvideo_1_U0_ap_continue");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_ap_idle, "Mat2AXIvideo_1_U0_ap_idle");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_ap_ready, "Mat2AXIvideo_1_U0_ap_ready");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_dst_mat_data_stream_s_read, "Mat2AXIvideo_1_U0_dst_mat_data_stream_s_read");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_output_r_TDATA, "Mat2AXIvideo_1_U0_output_r_TDATA");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_output_r_TVALID, "Mat2AXIvideo_1_U0_output_r_TVALID");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_output_r_TKEEP, "Mat2AXIvideo_1_U0_output_r_TKEEP");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_output_r_TSTRB, "Mat2AXIvideo_1_U0_output_r_TSTRB");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_output_r_TUSER, "Mat2AXIvideo_1_U0_output_r_TUSER");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_output_r_TLAST, "Mat2AXIvideo_1_U0_output_r_TLAST");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_output_r_TID, "Mat2AXIvideo_1_U0_output_r_TID");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_output_r_TDEST, "Mat2AXIvideo_1_U0_output_r_TDEST");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_start, "Mat2AXIvideo_U0_ap_start");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_done, "Mat2AXIvideo_U0_ap_done");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_continue, "Mat2AXIvideo_U0_ap_continue");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_idle, "Mat2AXIvideo_U0_ap_idle");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_ready, "Mat2AXIvideo_U0_ap_ready");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_nor_mat_data_stream_s_read, "Mat2AXIvideo_U0_nor_mat_data_stream_s_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_nor_output_TDATA, "Mat2AXIvideo_U0_nor_output_TDATA");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_nor_output_TVALID, "Mat2AXIvideo_U0_nor_output_TVALID");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_nor_output_TKEEP, "Mat2AXIvideo_U0_nor_output_TKEEP");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_nor_output_TSTRB, "Mat2AXIvideo_U0_nor_output_TSTRB");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_nor_output_TUSER, "Mat2AXIvideo_U0_nor_output_TUSER");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_nor_output_TLAST, "Mat2AXIvideo_U0_nor_output_TLAST");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_nor_output_TID, "Mat2AXIvideo_U0_nor_output_TID");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_nor_output_TDEST, "Mat2AXIvideo_U0_nor_output_TDEST");
    sc_trace(mVcdFile, src_mat_data_stream_s_full_n, "src_mat_data_stream_s_full_n");
    sc_trace(mVcdFile, src_mat_data_stream_s_dout, "src_mat_data_stream_s_dout");
    sc_trace(mVcdFile, src_mat_data_stream_s_empty_n, "src_mat_data_stream_s_empty_n");
    sc_trace(mVcdFile, src_mat_data_stream_1_full_n, "src_mat_data_stream_1_full_n");
    sc_trace(mVcdFile, src_mat_data_stream_1_dout, "src_mat_data_stream_1_dout");
    sc_trace(mVcdFile, src_mat_data_stream_1_empty_n, "src_mat_data_stream_1_empty_n");
    sc_trace(mVcdFile, src_mat_data_stream_2_full_n, "src_mat_data_stream_2_full_n");
    sc_trace(mVcdFile, src_mat_data_stream_2_dout, "src_mat_data_stream_2_dout");
    sc_trace(mVcdFile, src_mat_data_stream_2_empty_n, "src_mat_data_stream_2_empty_n");
    sc_trace(mVcdFile, dst_mat_data_stream_s_full_n, "dst_mat_data_stream_s_full_n");
    sc_trace(mVcdFile, dst_mat_data_stream_s_dout, "dst_mat_data_stream_s_dout");
    sc_trace(mVcdFile, dst_mat_data_stream_s_empty_n, "dst_mat_data_stream_s_empty_n");
    sc_trace(mVcdFile, nor_mat_data_stream_s_full_n, "nor_mat_data_stream_s_full_n");
    sc_trace(mVcdFile, nor_mat_data_stream_s_dout, "nor_mat_data_stream_s_dout");
    sc_trace(mVcdFile, nor_mat_data_stream_s_empty_n, "nor_mat_data_stream_s_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_start_full_n, "AXIvideo2Mat_U0_start_full_n");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_start_write, "AXIvideo2Mat_U0_start_write");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_start_full_n, "YCrCb_GUASSIAN_U0_start_full_n");
    sc_trace(mVcdFile, YCrCb_GUASSIAN_U0_start_write, "YCrCb_GUASSIAN_U0_start_write");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_start_full_n, "Mat2AXIvideo_1_U0_start_full_n");
    sc_trace(mVcdFile, Mat2AXIvideo_1_U0_start_write, "Mat2AXIvideo_1_U0_start_write");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_start_full_n, "Mat2AXIvideo_U0_start_full_n");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_start_write, "Mat2AXIvideo_U0_start_write");
#endif

    }
    mHdltvinHandle.open("ImgProcess_Top.hdltvin.dat");
    mHdltvoutHandle.open("ImgProcess_Top.hdltvout.dat");
}

ImgProcess_Top::~ImgProcess_Top() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete AXIvideo2Mat_U0;
    delete YCrCb_GUASSIAN_U0;
    delete Mat2AXIvideo_1_U0;
    delete Mat2AXIvideo_U0;
    delete src_mat_data_stream_s_U;
    delete src_mat_data_stream_1_U;
    delete src_mat_data_stream_2_U;
    delete dst_mat_data_stream_s_U;
    delete nor_mat_data_stream_s_U;
}

void ImgProcess_Top::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void ImgProcess_Top::thread_AXIvideo2Mat_U0_ap_continue() {
    AXIvideo2Mat_U0_ap_continue = ap_const_logic_1;
}

void ImgProcess_Top::thread_AXIvideo2Mat_U0_ap_start() {
    AXIvideo2Mat_U0_ap_start = (ap_start.read());
}

void ImgProcess_Top::thread_AXIvideo2Mat_U0_start_full_n() {
    AXIvideo2Mat_U0_start_full_n = ap_const_logic_1;
}

void ImgProcess_Top::thread_AXIvideo2Mat_U0_start_write() {
    AXIvideo2Mat_U0_start_write = ap_const_logic_0;
}

void ImgProcess_Top::thread_Mat2AXIvideo_1_U0_ap_continue() {
    Mat2AXIvideo_1_U0_ap_continue = ap_sync_done.read();
}

void ImgProcess_Top::thread_Mat2AXIvideo_1_U0_ap_start() {
    Mat2AXIvideo_1_U0_ap_start = ap_start.read();
}

void ImgProcess_Top::thread_Mat2AXIvideo_1_U0_start_full_n() {
    Mat2AXIvideo_1_U0_start_full_n = ap_const_logic_1;
}

void ImgProcess_Top::thread_Mat2AXIvideo_1_U0_start_write() {
    Mat2AXIvideo_1_U0_start_write = ap_const_logic_0;
}

void ImgProcess_Top::thread_Mat2AXIvideo_U0_ap_continue() {
    Mat2AXIvideo_U0_ap_continue = ap_sync_done.read();
}

void ImgProcess_Top::thread_Mat2AXIvideo_U0_ap_start() {
    Mat2AXIvideo_U0_ap_start = ap_start.read();
}

void ImgProcess_Top::thread_Mat2AXIvideo_U0_start_full_n() {
    Mat2AXIvideo_U0_start_full_n = ap_const_logic_1;
}

void ImgProcess_Top::thread_Mat2AXIvideo_U0_start_write() {
    Mat2AXIvideo_U0_start_write = ap_const_logic_0;
}

void ImgProcess_Top::thread_YCrCb_GUASSIAN_U0_ap_continue() {
    YCrCb_GUASSIAN_U0_ap_continue = ap_sync_done.read();
}

void ImgProcess_Top::thread_YCrCb_GUASSIAN_U0_ap_start() {
    YCrCb_GUASSIAN_U0_ap_start = ap_start.read();
}

void ImgProcess_Top::thread_YCrCb_GUASSIAN_U0_start_full_n() {
    YCrCb_GUASSIAN_U0_start_full_n = ap_const_logic_1;
}

void ImgProcess_Top::thread_YCrCb_GUASSIAN_U0_start_write() {
    YCrCb_GUASSIAN_U0_start_write = ap_const_logic_0;
}

void ImgProcess_Top::thread_ap_done() {
    ap_done = ap_sync_done.read();
}

void ImgProcess_Top::thread_ap_idle() {
    ap_idle = (AXIvideo2Mat_U0_ap_idle.read() & YCrCb_GUASSIAN_U0_ap_idle.read() & Mat2AXIvideo_1_U0_ap_idle.read() & Mat2AXIvideo_U0_ap_idle.read());
}

void ImgProcess_Top::thread_ap_ready() {
    ap_ready = AXIvideo2Mat_U0_ap_ready.read();
}

void ImgProcess_Top::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void ImgProcess_Top::thread_ap_sync_continue() {
    ap_sync_continue = ap_sync_done.read();
}

void ImgProcess_Top::thread_ap_sync_done() {
    ap_sync_done = (Mat2AXIvideo_1_U0_ap_done.read() & Mat2AXIvideo_U0_ap_done.read());
}

void ImgProcess_Top::thread_ap_sync_ready() {
    ap_sync_ready = AXIvideo2Mat_U0_ap_ready.read();
}

void ImgProcess_Top::thread_input_r_TREADY() {
    input_r_TREADY = AXIvideo2Mat_U0_input_r_TREADY.read();
}

void ImgProcess_Top::thread_nor_output_TDATA() {
    nor_output_TDATA = Mat2AXIvideo_U0_nor_output_TDATA.read();
}

void ImgProcess_Top::thread_nor_output_TDEST() {
    nor_output_TDEST = Mat2AXIvideo_U0_nor_output_TDEST.read();
}

void ImgProcess_Top::thread_nor_output_TID() {
    nor_output_TID = Mat2AXIvideo_U0_nor_output_TID.read();
}

void ImgProcess_Top::thread_nor_output_TKEEP() {
    nor_output_TKEEP = Mat2AXIvideo_U0_nor_output_TKEEP.read();
}

void ImgProcess_Top::thread_nor_output_TLAST() {
    nor_output_TLAST = Mat2AXIvideo_U0_nor_output_TLAST.read();
}

void ImgProcess_Top::thread_nor_output_TSTRB() {
    nor_output_TSTRB = Mat2AXIvideo_U0_nor_output_TSTRB.read();
}

void ImgProcess_Top::thread_nor_output_TUSER() {
    nor_output_TUSER = Mat2AXIvideo_U0_nor_output_TUSER.read();
}

void ImgProcess_Top::thread_nor_output_TVALID() {
    nor_output_TVALID = Mat2AXIvideo_U0_nor_output_TVALID.read();
}

void ImgProcess_Top::thread_output_r_TDATA() {
    output_r_TDATA = Mat2AXIvideo_1_U0_output_r_TDATA.read();
}

void ImgProcess_Top::thread_output_r_TDEST() {
    output_r_TDEST = Mat2AXIvideo_1_U0_output_r_TDEST.read();
}

void ImgProcess_Top::thread_output_r_TID() {
    output_r_TID = Mat2AXIvideo_1_U0_output_r_TID.read();
}

void ImgProcess_Top::thread_output_r_TKEEP() {
    output_r_TKEEP = Mat2AXIvideo_1_U0_output_r_TKEEP.read();
}

void ImgProcess_Top::thread_output_r_TLAST() {
    output_r_TLAST = Mat2AXIvideo_1_U0_output_r_TLAST.read();
}

void ImgProcess_Top::thread_output_r_TSTRB() {
    output_r_TSTRB = Mat2AXIvideo_1_U0_output_r_TSTRB.read();
}

void ImgProcess_Top::thread_output_r_TUSER() {
    output_r_TUSER = Mat2AXIvideo_1_U0_output_r_TUSER.read();
}

void ImgProcess_Top::thread_output_r_TVALID() {
    output_r_TVALID = Mat2AXIvideo_1_U0_output_r_TVALID.read();
}

void ImgProcess_Top::thread_threshold() {
    threshold = YCrCb_GUASSIAN_U0_threshold.read();
}

void ImgProcess_Top::thread_threshold_ap_vld() {
    threshold_ap_vld = YCrCb_GUASSIAN_U0_threshold_ap_vld.read();
}

void ImgProcess_Top::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"input_r_TDATA\" :  \"" << input_r_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_r_TKEEP\" :  \"" << input_r_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_r_TSTRB\" :  \"" << input_r_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_r_TUSER\" :  \"" << input_r_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_r_TLAST\" :  \"" << input_r_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_r_TID\" :  \"" << input_r_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_r_TDEST\" :  \"" << input_r_TDEST.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"output_r_TDATA\" :  \"" << output_r_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_r_TKEEP\" :  \"" << output_r_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_r_TSTRB\" :  \"" << output_r_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_r_TUSER\" :  \"" << output_r_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_r_TLAST\" :  \"" << output_r_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_r_TID\" :  \"" << output_r_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_r_TDEST\" :  \"" << output_r_TDEST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"nor_output_TDATA\" :  \"" << nor_output_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"nor_output_TKEEP\" :  \"" << nor_output_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"nor_output_TSTRB\" :  \"" << nor_output_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"nor_output_TUSER\" :  \"" << nor_output_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"nor_output_TLAST\" :  \"" << nor_output_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"nor_output_TID\" :  \"" << nor_output_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"nor_output_TDEST\" :  \"" << nor_output_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"rows\" :  \"" << rows.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"cols\" :  \"" << cols.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"threshold\" :  \"" << threshold.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_r_TVALID\" :  \"" << input_r_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"input_r_TREADY\" :  \"" << input_r_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"threshold_ap_vld\" :  \"" << threshold_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_r_TVALID\" :  \"" << output_r_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"output_r_TREADY\" :  \"" << output_r_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"nor_output_TVALID\" :  \"" << nor_output_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"nor_output_TREADY\" :  \"" << nor_output_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

