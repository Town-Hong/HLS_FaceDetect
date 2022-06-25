// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __ImgProcess_Top_dejbC__HH__
#define __ImgProcess_Top_dejbC__HH__
#include "ACMP_dexp.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(ImgProcess_Top_dejbC) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_dexp<ID, 18, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_dexp_U;

    SC_CTOR(ImgProcess_Top_dejbC):  ACMP_dexp_U ("ACMP_dexp_U") {
        ACMP_dexp_U.clk(clk);
        ACMP_dexp_U.reset(reset);
        ACMP_dexp_U.ce(ce);
        ACMP_dexp_U.din0(din0);
        ACMP_dexp_U.din1(din1);
        ACMP_dexp_U.dout(dout);

    }

};

#endif //
