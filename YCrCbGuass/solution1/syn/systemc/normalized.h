// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _normalized_HH_
#define _normalized_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "normalized_Loop_loop.h"

namespace ap_rtl {

struct normalized : public sc_module {
    // Port declarations 25
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > sim_data_stream_V_dout;
    sc_in< sc_logic > sim_data_stream_V_empty_n;
    sc_out< sc_logic > sim_data_stream_V_read;
    sc_out< sc_lv<32> > nor_data_stream_V_din;
    sc_in< sc_logic > nor_data_stream_V_full_n;
    sc_out< sc_logic > nor_data_stream_V_write;
    sc_out< sc_lv<8> > gray_data_stream_V_din;
    sc_in< sc_logic > gray_data_stream_V_full_n;
    sc_out< sc_logic > gray_data_stream_V_write;
    sc_in< sc_lv<64> > max_dout;
    sc_in< sc_logic > max_empty_n;
    sc_out< sc_logic > max_read;
    sc_in< sc_lv<64> > min_dout;
    sc_in< sc_logic > min_empty_n;
    sc_out< sc_logic > min_read;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_in< sc_logic > ap_continue;


    // Module declarations
    normalized(sc_module_name name);
    SC_HAS_PROCESS(normalized);

    ~normalized();

    sc_trace_file* mVcdFile;

    normalized_Loop_loop* normalized_Loop_loop_U0;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > normalized_Loop_loop_U0_ap_start;
    sc_signal< sc_logic > normalized_Loop_loop_U0_ap_done;
    sc_signal< sc_logic > normalized_Loop_loop_U0_ap_continue;
    sc_signal< sc_logic > normalized_Loop_loop_U0_ap_idle;
    sc_signal< sc_logic > normalized_Loop_loop_U0_ap_ready;
    sc_signal< sc_logic > normalized_Loop_loop_U0_max_read;
    sc_signal< sc_logic > normalized_Loop_loop_U0_min_read;
    sc_signal< sc_logic > normalized_Loop_loop_U0_sim_data_stream_V_read;
    sc_signal< sc_lv<32> > normalized_Loop_loop_U0_nor_data_stream_V_din;
    sc_signal< sc_logic > normalized_Loop_loop_U0_nor_data_stream_V_write;
    sc_signal< sc_lv<8> > normalized_Loop_loop_U0_gray_data_stream_V_din;
    sc_signal< sc_logic > normalized_Loop_loop_U0_gray_data_stream_V_write;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > normalized_Loop_loop_U0_start_full_n;
    sc_signal< sc_logic > normalized_Loop_loop_U0_start_write;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<8> ap_const_lv8_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_gray_data_stream_V_din();
    void thread_gray_data_stream_V_write();
    void thread_internal_ap_ready();
    void thread_max_read();
    void thread_min_read();
    void thread_nor_data_stream_V_din();
    void thread_nor_data_stream_V_write();
    void thread_normalized_Loop_loop_U0_ap_continue();
    void thread_normalized_Loop_loop_U0_ap_start();
    void thread_normalized_Loop_loop_U0_start_full_n();
    void thread_normalized_Loop_loop_U0_start_write();
    void thread_real_start();
    void thread_sim_data_stream_V_read();
    void thread_start_out();
    void thread_start_write();
};

}

using namespace ap_rtl;

#endif
