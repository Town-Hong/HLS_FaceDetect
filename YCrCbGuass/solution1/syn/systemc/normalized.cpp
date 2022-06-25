// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "normalized.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic normalized::ap_const_logic_0 = sc_dt::Log_0;
const bool normalized::ap_const_boolean_1 = true;
const sc_logic normalized::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<32> normalized::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<8> normalized::ap_const_lv8_0 = "00000000";

normalized::normalized(sc_module_name name) : sc_module(name), mVcdFile(0) {
    normalized_Loop_loop_U0 = new normalized_Loop_loop("normalized_Loop_loop_U0");
    normalized_Loop_loop_U0->ap_clk(ap_clk);
    normalized_Loop_loop_U0->ap_rst(ap_rst);
    normalized_Loop_loop_U0->ap_start(normalized_Loop_loop_U0_ap_start);
    normalized_Loop_loop_U0->ap_done(normalized_Loop_loop_U0_ap_done);
    normalized_Loop_loop_U0->ap_continue(normalized_Loop_loop_U0_ap_continue);
    normalized_Loop_loop_U0->ap_idle(normalized_Loop_loop_U0_ap_idle);
    normalized_Loop_loop_U0->ap_ready(normalized_Loop_loop_U0_ap_ready);
    normalized_Loop_loop_U0->max_dout(max_dout);
    normalized_Loop_loop_U0->max_empty_n(max_empty_n);
    normalized_Loop_loop_U0->max_read(normalized_Loop_loop_U0_max_read);
    normalized_Loop_loop_U0->min_dout(min_dout);
    normalized_Loop_loop_U0->min_empty_n(min_empty_n);
    normalized_Loop_loop_U0->min_read(normalized_Loop_loop_U0_min_read);
    normalized_Loop_loop_U0->sim_data_stream_V_dout(sim_data_stream_V_dout);
    normalized_Loop_loop_U0->sim_data_stream_V_empty_n(sim_data_stream_V_empty_n);
    normalized_Loop_loop_U0->sim_data_stream_V_read(normalized_Loop_loop_U0_sim_data_stream_V_read);
    normalized_Loop_loop_U0->nor_data_stream_V_din(normalized_Loop_loop_U0_nor_data_stream_V_din);
    normalized_Loop_loop_U0->nor_data_stream_V_full_n(nor_data_stream_V_full_n);
    normalized_Loop_loop_U0->nor_data_stream_V_write(normalized_Loop_loop_U0_nor_data_stream_V_write);
    normalized_Loop_loop_U0->gray_data_stream_V_din(normalized_Loop_loop_U0_gray_data_stream_V_din);
    normalized_Loop_loop_U0->gray_data_stream_V_full_n(gray_data_stream_V_full_n);
    normalized_Loop_loop_U0->gray_data_stream_V_write(normalized_Loop_loop_U0_gray_data_stream_V_write);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( normalized_Loop_loop_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( normalized_Loop_loop_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_ap_sync_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( normalized_Loop_loop_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( normalized_Loop_loop_U0_ap_ready );

    SC_METHOD(thread_gray_data_stream_V_din);
    sensitive << ( normalized_Loop_loop_U0_gray_data_stream_V_din );

    SC_METHOD(thread_gray_data_stream_V_write);
    sensitive << ( normalized_Loop_loop_U0_gray_data_stream_V_write );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( ap_sync_ready );

    SC_METHOD(thread_max_read);
    sensitive << ( normalized_Loop_loop_U0_max_read );

    SC_METHOD(thread_min_read);
    sensitive << ( normalized_Loop_loop_U0_min_read );

    SC_METHOD(thread_nor_data_stream_V_din);
    sensitive << ( normalized_Loop_loop_U0_nor_data_stream_V_din );

    SC_METHOD(thread_nor_data_stream_V_write);
    sensitive << ( normalized_Loop_loop_U0_nor_data_stream_V_write );

    SC_METHOD(thread_normalized_Loop_loop_U0_ap_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_normalized_Loop_loop_U0_ap_start);
    sensitive << ( real_start );
    sensitive << ( ap_rst );

    SC_METHOD(thread_normalized_Loop_loop_U0_start_full_n);

    SC_METHOD(thread_normalized_Loop_loop_U0_start_write);

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_sim_data_stream_V_read);
    sensitive << ( normalized_Loop_loop_U0_sim_data_stream_V_read );

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( start_once_reg );

    start_once_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "normalized_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, start_full_n, "(port)start_full_n");
    sc_trace(mVcdFile, start_out, "(port)start_out");
    sc_trace(mVcdFile, start_write, "(port)start_write");
    sc_trace(mVcdFile, sim_data_stream_V_dout, "(port)sim_data_stream_V_dout");
    sc_trace(mVcdFile, sim_data_stream_V_empty_n, "(port)sim_data_stream_V_empty_n");
    sc_trace(mVcdFile, sim_data_stream_V_read, "(port)sim_data_stream_V_read");
    sc_trace(mVcdFile, nor_data_stream_V_din, "(port)nor_data_stream_V_din");
    sc_trace(mVcdFile, nor_data_stream_V_full_n, "(port)nor_data_stream_V_full_n");
    sc_trace(mVcdFile, nor_data_stream_V_write, "(port)nor_data_stream_V_write");
    sc_trace(mVcdFile, gray_data_stream_V_din, "(port)gray_data_stream_V_din");
    sc_trace(mVcdFile, gray_data_stream_V_full_n, "(port)gray_data_stream_V_full_n");
    sc_trace(mVcdFile, gray_data_stream_V_write, "(port)gray_data_stream_V_write");
    sc_trace(mVcdFile, max_dout, "(port)max_dout");
    sc_trace(mVcdFile, max_empty_n, "(port)max_empty_n");
    sc_trace(mVcdFile, max_read, "(port)max_read");
    sc_trace(mVcdFile, min_dout, "(port)min_dout");
    sc_trace(mVcdFile, min_empty_n, "(port)min_empty_n");
    sc_trace(mVcdFile, min_read, "(port)min_read");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, real_start, "real_start");
    sc_trace(mVcdFile, start_once_reg, "start_once_reg");
    sc_trace(mVcdFile, internal_ap_ready, "internal_ap_ready");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_ap_start, "normalized_Loop_loop_U0_ap_start");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_ap_done, "normalized_Loop_loop_U0_ap_done");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_ap_continue, "normalized_Loop_loop_U0_ap_continue");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_ap_idle, "normalized_Loop_loop_U0_ap_idle");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_ap_ready, "normalized_Loop_loop_U0_ap_ready");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_max_read, "normalized_Loop_loop_U0_max_read");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_min_read, "normalized_Loop_loop_U0_min_read");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_sim_data_stream_V_read, "normalized_Loop_loop_U0_sim_data_stream_V_read");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_nor_data_stream_V_din, "normalized_Loop_loop_U0_nor_data_stream_V_din");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_nor_data_stream_V_write, "normalized_Loop_loop_U0_nor_data_stream_V_write");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_gray_data_stream_V_din, "normalized_Loop_loop_U0_gray_data_stream_V_din");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_gray_data_stream_V_write, "normalized_Loop_loop_U0_gray_data_stream_V_write");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_start_full_n, "normalized_Loop_loop_U0_start_full_n");
    sc_trace(mVcdFile, normalized_Loop_loop_U0_start_write, "normalized_Loop_loop_U0_start_write");
#endif

    }
}

normalized::~normalized() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete normalized_Loop_loop_U0;
}

void normalized::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(real_start.read(), ap_const_logic_1) && 
             esl_seteq<1,1,1>(ap_const_logic_0, internal_ap_ready.read()))) {
            start_once_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(internal_ap_ready.read(), ap_const_logic_1)) {
            start_once_reg = ap_const_logic_0;
        }
    }
}

void normalized::thread_ap_done() {
    ap_done = normalized_Loop_loop_U0_ap_done.read();
}

void normalized::thread_ap_idle() {
    ap_idle = normalized_Loop_loop_U0_ap_idle.read();
}

void normalized::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void normalized::thread_ap_sync_continue() {
    ap_sync_continue = ap_continue.read();
}

void normalized::thread_ap_sync_done() {
    ap_sync_done = normalized_Loop_loop_U0_ap_done.read();
}

void normalized::thread_ap_sync_ready() {
    ap_sync_ready = normalized_Loop_loop_U0_ap_ready.read();
}

void normalized::thread_gray_data_stream_V_din() {
    gray_data_stream_V_din = normalized_Loop_loop_U0_gray_data_stream_V_din.read();
}

void normalized::thread_gray_data_stream_V_write() {
    gray_data_stream_V_write = normalized_Loop_loop_U0_gray_data_stream_V_write.read();
}

void normalized::thread_internal_ap_ready() {
    internal_ap_ready = ap_sync_ready.read();
}

void normalized::thread_max_read() {
    max_read = normalized_Loop_loop_U0_max_read.read();
}

void normalized::thread_min_read() {
    min_read = normalized_Loop_loop_U0_min_read.read();
}

void normalized::thread_nor_data_stream_V_din() {
    nor_data_stream_V_din = normalized_Loop_loop_U0_nor_data_stream_V_din.read();
}

void normalized::thread_nor_data_stream_V_write() {
    nor_data_stream_V_write = normalized_Loop_loop_U0_nor_data_stream_V_write.read();
}

void normalized::thread_normalized_Loop_loop_U0_ap_continue() {
    normalized_Loop_loop_U0_ap_continue = ap_continue.read();
}

void normalized::thread_normalized_Loop_loop_U0_ap_start() {
    if ( ap_rst.read() == ap_const_logic_1) {
        normalized_Loop_loop_U0_ap_start = ap_const_logic_0;
    } else {
        normalized_Loop_loop_U0_ap_start = real_start.read();
    }
}

void normalized::thread_normalized_Loop_loop_U0_start_full_n() {
    normalized_Loop_loop_U0_start_full_n = ap_const_logic_1;
}

void normalized::thread_normalized_Loop_loop_U0_start_write() {
    normalized_Loop_loop_U0_start_write = ap_const_logic_0;
}

void normalized::thread_real_start() {
    if ((esl_seteq<1,1,1>(start_full_n.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()))) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void normalized::thread_sim_data_stream_V_read() {
    sim_data_stream_V_read = normalized_Loop_loop_U0_sim_data_stream_V_read.read();
}

void normalized::thread_start_out() {
    start_out = real_start.read();
}

void normalized::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()) && 
         esl_seteq<1,1,1>(real_start.read(), ap_const_logic_1))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

}

