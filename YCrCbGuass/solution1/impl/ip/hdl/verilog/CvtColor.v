// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module CvtColor (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        rows,
        cols,
        src_mat_data_stream_s_dout,
        src_mat_data_stream_s_empty_n,
        src_mat_data_stream_s_read,
        src_mat_data_stream_1_dout,
        src_mat_data_stream_1_empty_n,
        src_mat_data_stream_1_read,
        src_mat_data_stream_2_dout,
        src_mat_data_stream_2_empty_n,
        src_mat_data_stream_2_read,
        YCrCb_IMG_data_strea_i_din,
        YCrCb_IMG_data_strea_i_full_n,
        YCrCb_IMG_data_strea_i_write,
        YCrCb_IMG_data_strea_1_i_din,
        YCrCb_IMG_data_strea_1_i_full_n,
        YCrCb_IMG_data_strea_1_i_write,
        YCrCb_IMG_data_strea_2_i_din,
        YCrCb_IMG_data_strea_2_i_full_n,
        YCrCb_IMG_data_strea_2_i_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state10 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] rows;
input  [31:0] cols;
input  [7:0] src_mat_data_stream_s_dout;
input   src_mat_data_stream_s_empty_n;
output   src_mat_data_stream_s_read;
input  [7:0] src_mat_data_stream_1_dout;
input   src_mat_data_stream_1_empty_n;
output   src_mat_data_stream_1_read;
input  [7:0] src_mat_data_stream_2_dout;
input   src_mat_data_stream_2_empty_n;
output   src_mat_data_stream_2_read;
output  [7:0] YCrCb_IMG_data_strea_i_din;
input   YCrCb_IMG_data_strea_i_full_n;
output   YCrCb_IMG_data_strea_i_write;
output  [7:0] YCrCb_IMG_data_strea_1_i_din;
input   YCrCb_IMG_data_strea_1_i_full_n;
output   YCrCb_IMG_data_strea_1_i_write;
output  [7:0] YCrCb_IMG_data_strea_2_i_din;
input   YCrCb_IMG_data_strea_2_i_full_n;
output   YCrCb_IMG_data_strea_2_i_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg src_mat_data_stream_s_read;
reg src_mat_data_stream_1_read;
reg src_mat_data_stream_2_read;
reg YCrCb_IMG_data_strea_i_write;
reg YCrCb_IMG_data_strea_1_i_write;
reg YCrCb_IMG_data_strea_2_i_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    src_mat_data_stream_s_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_i_reg_713;
reg    src_mat_data_stream_1_blk_n;
reg    src_mat_data_stream_2_blk_n;
reg    YCrCb_IMG_data_strea_i_blk_n;
reg    ap_enable_reg_pp0_iter6;
reg   [0:0] ap_reg_pp0_iter5_exitcond_i_reg_713;
reg    YCrCb_IMG_data_strea_1_i_blk_n;
reg    YCrCb_IMG_data_strea_2_i_blk_n;
reg   [8:0] j_i_reg_184;
wire   [9:0] rows_1_fu_195_p1;
reg    ap_block_state1;
wire   [8:0] cols_1_fu_199_p1;
wire   [0:0] exitcond1_i_fu_203_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] i_fu_208_p2;
reg   [9:0] i_reg_708;
wire   [0:0] exitcond_i_fu_214_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
wire    ap_block_state7_pp0_stage0_iter4;
wire    ap_block_state8_pp0_stage0_iter5;
reg    ap_block_state9_pp0_stage0_iter6;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_reg_pp0_iter1_exitcond_i_reg_713;
reg   [0:0] ap_reg_pp0_iter2_exitcond_i_reg_713;
reg   [0:0] ap_reg_pp0_iter3_exitcond_i_reg_713;
reg   [0:0] ap_reg_pp0_iter4_exitcond_i_reg_713;
wire   [8:0] j_fu_219_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [7:0] tmp_76_reg_722;
reg   [7:0] ap_reg_pp0_iter2_tmp_76_reg_722;
reg   [7:0] ap_reg_pp0_iter3_tmp_76_reg_722;
reg   [7:0] tmp_77_reg_728;
reg   [7:0] ap_reg_pp0_iter2_tmp_77_reg_728;
reg   [7:0] tmp_78_reg_733;
reg   [7:0] ap_reg_pp0_iter2_tmp_78_reg_733;
reg   [7:0] ap_reg_pp0_iter3_tmp_78_reg_733;
wire   [28:0] r_V_4_i_i_fu_644_p2;
reg   [28:0] r_V_4_i_i_reg_739;
wire   [29:0] grp_fu_650_p3;
reg   [29:0] r_V_1_reg_744;
reg    ap_enable_reg_pp0_iter3;
reg   [7:0] p_Val2_8_reg_749;
reg   [0:0] tmp_reg_754;
wire   [7:0] p_Val2_s_fu_288_p3;
reg   [7:0] p_Val2_s_reg_759;
reg   [7:0] ap_reg_pp0_iter5_p_Val2_s_reg_759;
wire   [8:0] i_op_assign_3_i_fu_303_p2;
reg  signed [8:0] i_op_assign_3_i_reg_764;
wire   [8:0] i_op_assign_4_i_fu_312_p2;
reg  signed [8:0] i_op_assign_4_i_reg_769;
wire   [0:0] signbit_fu_321_p3;
reg   [0:0] signbit_reg_774;
wire   [7:0] p_Val2_14_fu_355_p2;
reg   [7:0] p_Val2_14_reg_780;
wire   [0:0] p_38_i_i_i_i_i_fu_410_p2;
reg   [0:0] p_38_i_i_i_i_i_reg_786;
wire   [0:0] p_39_demorgan_i_i_i_i_fu_416_p2;
reg   [0:0] p_39_demorgan_i_i_i_i_reg_792;
wire   [0:0] signbit_1_fu_425_p3;
reg   [0:0] signbit_1_reg_798;
wire   [7:0] p_Val2_19_fu_459_p2;
reg   [7:0] p_Val2_19_reg_804;
wire   [0:0] p_38_i_i_i14_i_i_fu_514_p2;
reg   [0:0] p_38_i_i_i14_i_i_reg_810;
wire   [0:0] p_39_demorgan_i_i_i17_fu_520_p2;
reg   [0:0] p_39_demorgan_i_i_i17_reg_816;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg   [9:0] i_i_reg_173;
wire    ap_CS_fsm_state10;
reg    ap_block_pp0_stage0_01001;
wire   [28:0] grp_fu_660_p3;
wire   [7:0] tmp_26_i_i_i_i_fu_253_p1;
wire   [7:0] p_Val2_9_fu_263_p2;
wire   [0:0] tmp_63_fu_256_p3;
wire   [0:0] tmp_64_fu_268_p3;
wire   [0:0] p_Result_9_i_i_not_fu_276_p2;
wire   [0:0] not_carry_i_i_fu_282_p2;
wire   [8:0] tmp_30_cast_i_i_fu_296_p1;
wire   [8:0] tmp_31_cast_i_i_fu_299_p1;
wire   [8:0] tmp_33_cast_i_i_fu_309_p1;
wire  signed [31:0] grp_fu_668_p3;
wire   [0:0] tmp_66_fu_337_p3;
wire   [7:0] p_Val2_13_fu_328_p4;
wire   [7:0] tmp_23_i_i_i_i_fu_344_p1;
wire   [0:0] tmp_68_fu_361_p3;
wire   [0:0] tmp_67_fu_348_p3;
wire   [0:0] tmp_24_i_i_i_i_fu_369_p2;
wire   [1:0] tmp_i_125_fu_381_p4;
wire   [0:0] carry_fu_375_p2;
wire   [0:0] Range1_all_ones_fu_390_p2;
wire   [0:0] Range1_all_zeros_fu_396_p2;
wire   [0:0] deleted_zeros_fu_402_p3;
wire  signed [31:0] grp_fu_681_p3;
wire   [0:0] tmp_70_fu_441_p3;
wire   [7:0] p_Val2_18_fu_432_p4;
wire   [7:0] tmp_23_i_i5_i_i_fu_448_p1;
wire   [0:0] tmp_72_fu_465_p3;
wire   [0:0] tmp_71_fu_452_p3;
wire   [0:0] tmp_24_i_i9_i_i_fu_473_p2;
wire   [1:0] tmp_45_i_fu_485_p4;
wire   [0:0] carry_1_fu_479_p2;
wire   [0:0] Range1_all_ones_1_fu_494_p2;
wire   [0:0] Range1_all_zeros_1_fu_500_p2;
wire   [0:0] deleted_zeros_1_fu_506_p3;
wire   [0:0] tmp_25_i_i_i_i_fu_526_p2;
wire   [0:0] signbit_not_i_i_i_fu_536_p2;
wire   [0:0] neg_src_not_i_i_i_i_fu_541_p2;
wire   [0:0] p_39_demorgan_i_not_i_fu_551_p2;
wire   [0:0] brmerge_i_i_not_i_i_s_fu_546_p2;
wire   [0:0] neg_src_fu_531_p2;
wire   [0:0] brmerge_i_i_i_i_fu_556_p2;
wire   [7:0] p_mux_i_i1_i_i_fu_562_p3;
wire   [7:0] p_i_i_i_i_fu_569_p3;
wire   [0:0] tmp_25_i_i15_i_i_fu_585_p2;
wire   [0:0] signbit_not_i18_i_i_fu_595_p2;
wire   [0:0] neg_src_not_i_i19_i_s_fu_600_p2;
wire   [0:0] p_39_demorgan_i_not_i_1_fu_610_p2;
wire   [0:0] brmerge_i_i_not_i_i2_fu_605_p2;
wire   [0:0] neg_src_4_fu_590_p2;
wire   [0:0] brmerge_i_i22_i_i_fu_615_p2;
wire   [7:0] p_mux_i_i23_i_i_fu_621_p3;
wire   [7:0] p_i_i24_i_i_fu_628_p3;
wire   [7:0] r_V_4_i_i_fu_644_p0;
wire   [21:0] r_V_4_i_i_fu_644_p1;
wire   [7:0] grp_fu_650_p0;
wire   [22:0] grp_fu_650_p1;
wire   [28:0] grp_fu_650_p2;
wire   [7:0] grp_fu_660_p0;
wire   [19:0] grp_fu_660_p1;
wire   [22:0] grp_fu_668_p1;
wire   [30:0] grp_fu_668_p2;
wire   [22:0] grp_fu_681_p1;
wire   [30:0] grp_fu_681_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [29:0] grp_fu_650_p00;
wire   [29:0] grp_fu_650_p20;
wire   [27:0] grp_fu_660_p00;
wire   [28:0] r_V_4_i_i_fu_644_p00;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
end

ImgProcess_Top_mubkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 22 ),
    .dout_WIDTH( 29 ))
ImgProcess_Top_mubkb_U17(
    .din0(r_V_4_i_i_fu_644_p0),
    .din1(r_V_4_i_i_fu_644_p1),
    .dout(r_V_4_i_i_fu_644_p2)
);

ImgProcess_Top_macud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 23 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 30 ))
ImgProcess_Top_macud_U18(
    .din0(grp_fu_650_p0),
    .din1(grp_fu_650_p1),
    .din2(grp_fu_650_p2),
    .dout(grp_fu_650_p3)
);

ImgProcess_Top_madEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 20 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
ImgProcess_Top_madEe_U19(
    .din0(grp_fu_660_p0),
    .din1(grp_fu_660_p1),
    .din2(r_V_4_i_i_reg_739),
    .dout(grp_fu_660_p3)
);

ImgProcess_Top_maeOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 23 ),
    .din2_WIDTH( 31 ),
    .dout_WIDTH( 32 ))
ImgProcess_Top_maeOg_U20(
    .din0(i_op_assign_3_i_reg_764),
    .din1(grp_fu_668_p1),
    .din2(grp_fu_668_p2),
    .dout(grp_fu_668_p3)
);

ImgProcess_Top_maeOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 23 ),
    .din2_WIDTH( 31 ),
    .dout_WIDTH( 32 ))
ImgProcess_Top_maeOg_U21(
    .din0(i_op_assign_4_i_reg_769),
    .din1(grp_fu_681_p1),
    .din2(grp_fu_681_p2),
    .dout(grp_fu_681_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_i_fu_203_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((exitcond1_i_fu_203_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end else if (((exitcond1_i_fu_203_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i_i_reg_173 <= i_reg_708;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_i_reg_173 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_214_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_i_reg_184 <= j_fu_219_p2;
    end else if (((exitcond1_i_fu_203_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_i_reg_184 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_reg_pp0_iter1_exitcond_i_reg_713 <= exitcond_i_reg_713;
        exitcond_i_reg_713 <= exitcond_i_fu_214_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_reg_pp0_iter2_exitcond_i_reg_713 <= ap_reg_pp0_iter1_exitcond_i_reg_713;
        ap_reg_pp0_iter2_tmp_76_reg_722 <= tmp_76_reg_722;
        ap_reg_pp0_iter2_tmp_77_reg_728 <= tmp_77_reg_728;
        ap_reg_pp0_iter2_tmp_78_reg_733 <= tmp_78_reg_733;
        ap_reg_pp0_iter3_exitcond_i_reg_713 <= ap_reg_pp0_iter2_exitcond_i_reg_713;
        ap_reg_pp0_iter3_tmp_76_reg_722 <= ap_reg_pp0_iter2_tmp_76_reg_722;
        ap_reg_pp0_iter3_tmp_78_reg_733 <= ap_reg_pp0_iter2_tmp_78_reg_733;
        ap_reg_pp0_iter4_exitcond_i_reg_713 <= ap_reg_pp0_iter3_exitcond_i_reg_713;
        ap_reg_pp0_iter5_exitcond_i_reg_713 <= ap_reg_pp0_iter4_exitcond_i_reg_713;
        ap_reg_pp0_iter5_p_Val2_s_reg_759 <= p_Val2_s_reg_759;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter3_exitcond_i_reg_713 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_op_assign_3_i_reg_764 <= i_op_assign_3_i_fu_303_p2;
        i_op_assign_4_i_reg_769 <= i_op_assign_4_i_fu_312_p2;
        p_Val2_s_reg_759 <= p_Val2_s_fu_288_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_708 <= i_fu_208_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter4_exitcond_i_reg_713 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_38_i_i_i14_i_i_reg_810 <= p_38_i_i_i14_i_i_fu_514_p2;
        p_38_i_i_i_i_i_reg_786 <= p_38_i_i_i_i_i_fu_410_p2;
        p_39_demorgan_i_i_i17_reg_816 <= p_39_demorgan_i_i_i17_fu_520_p2;
        p_39_demorgan_i_i_i_i_reg_792 <= p_39_demorgan_i_i_i_i_fu_416_p2;
        p_Val2_14_reg_780 <= p_Val2_14_fu_355_p2;
        p_Val2_19_reg_804 <= p_Val2_19_fu_459_p2;
        signbit_1_reg_798 <= grp_fu_681_p3[32'd31];
        signbit_reg_774 <= grp_fu_668_p3[32'd31];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond_i_reg_713 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_8_reg_749 <= {{grp_fu_650_p3[29:22]}};
        tmp_reg_754 <= grp_fu_650_p3[32'd21];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond_i_reg_713 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        r_V_1_reg_744 <= grp_fu_650_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter1_exitcond_i_reg_713 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        r_V_4_i_i_reg_739 <= r_V_4_i_i_fu_644_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_reg_713 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_76_reg_722 <= src_mat_data_stream_s_dout;
        tmp_77_reg_728 <= src_mat_data_stream_1_dout;
        tmp_78_reg_733 <= src_mat_data_stream_2_dout;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        YCrCb_IMG_data_strea_1_i_blk_n = YCrCb_IMG_data_strea_1_i_full_n;
    end else begin
        YCrCb_IMG_data_strea_1_i_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        YCrCb_IMG_data_strea_1_i_write = 1'b1;
    end else begin
        YCrCb_IMG_data_strea_1_i_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        YCrCb_IMG_data_strea_2_i_blk_n = YCrCb_IMG_data_strea_2_i_full_n;
    end else begin
        YCrCb_IMG_data_strea_2_i_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        YCrCb_IMG_data_strea_2_i_write = 1'b1;
    end else begin
        YCrCb_IMG_data_strea_2_i_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        YCrCb_IMG_data_strea_i_blk_n = YCrCb_IMG_data_strea_i_full_n;
    end else begin
        YCrCb_IMG_data_strea_i_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        YCrCb_IMG_data_strea_i_write = 1'b1;
    end else begin
        YCrCb_IMG_data_strea_i_write = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond_i_fu_214_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_i_fu_203_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_i_fu_203_p2 == 1'd1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_713 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_mat_data_stream_1_blk_n = src_mat_data_stream_1_empty_n;
    end else begin
        src_mat_data_stream_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_713 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_mat_data_stream_1_read = 1'b1;
    end else begin
        src_mat_data_stream_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_713 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_mat_data_stream_2_blk_n = src_mat_data_stream_2_empty_n;
    end else begin
        src_mat_data_stream_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_713 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_mat_data_stream_2_read = 1'b1;
    end else begin
        src_mat_data_stream_2_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_713 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_mat_data_stream_s_blk_n = src_mat_data_stream_s_empty_n;
    end else begin
        src_mat_data_stream_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_713 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_mat_data_stream_s_read = 1'b1;
    end else begin
        src_mat_data_stream_s_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_i_fu_203_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_i_fu_214_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter5 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter5 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_i_fu_214_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range1_all_ones_1_fu_494_p2 = ((tmp_45_i_fu_485_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_ones_fu_390_p2 = ((tmp_i_125_fu_381_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_1_fu_500_p2 = ((tmp_45_i_fu_485_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_396_p2 = ((tmp_i_125_fu_381_p4 == 2'd0) ? 1'b1 : 1'b0);

assign YCrCb_IMG_data_strea_1_i_din = ((brmerge_i_i_i_i_fu_556_p2[0:0] === 1'b1) ? p_mux_i_i1_i_i_fu_562_p3 : p_i_i_i_i_fu_569_p3);

assign YCrCb_IMG_data_strea_2_i_din = ((brmerge_i_i22_i_i_fu_615_p2[0:0] === 1'b1) ? p_mux_i_i23_i_i_fu_621_p3 : p_i_i24_i_i_fu_628_p3);

assign YCrCb_IMG_data_strea_i_din = ap_reg_pp0_iter5_p_Val2_s_reg_759;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter6 == 1'b1) & (((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_2_i_full_n)) | ((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_1_i_full_n)) | ((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_i_full_n)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_2_empty_n == 1'b0)) | ((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_1_empty_n == 1'b0)) | ((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_s_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter6 == 1'b1) & (((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_2_i_full_n)) | ((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_1_i_full_n)) | ((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_i_full_n)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_2_empty_n == 1'b0)) | ((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_1_empty_n == 1'b0)) | ((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_s_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter6 == 1'b1) & (((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_2_i_full_n)) | ((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_1_i_full_n)) | ((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_i_full_n)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_2_empty_n == 1'b0)) | ((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_1_empty_n == 1'b0)) | ((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_s_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_2_empty_n == 1'b0)) | ((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_1_empty_n == 1'b0)) | ((exitcond_i_reg_713 == 1'd0) & (src_mat_data_stream_s_empty_n == 1'b0)));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_pp0_stage0_iter6 = (((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_2_i_full_n)) | ((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_1_i_full_n)) | ((ap_reg_pp0_iter5_exitcond_i_reg_713 == 1'd0) & (1'b0 == YCrCb_IMG_data_strea_i_full_n)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign brmerge_i_i22_i_i_fu_615_p2 = (p_39_demorgan_i_not_i_1_fu_610_p2 | neg_src_not_i_i19_i_s_fu_600_p2);

assign brmerge_i_i_i_i_fu_556_p2 = (p_39_demorgan_i_not_i_fu_551_p2 | neg_src_not_i_i_i_i_fu_541_p2);

assign brmerge_i_i_not_i_i2_fu_605_p2 = (p_39_demorgan_i_i_i17_reg_816 & neg_src_not_i_i19_i_s_fu_600_p2);

assign brmerge_i_i_not_i_i_s_fu_546_p2 = (p_39_demorgan_i_i_i_i_reg_792 & neg_src_not_i_i_i_i_fu_541_p2);

assign carry_1_fu_479_p2 = (tmp_71_fu_452_p3 & tmp_24_i_i9_i_i_fu_473_p2);

assign carry_fu_375_p2 = (tmp_67_fu_348_p3 & tmp_24_i_i_i_i_fu_369_p2);

assign cols_1_fu_199_p1 = cols[8:0];

assign deleted_zeros_1_fu_506_p3 = ((carry_1_fu_479_p2[0:0] === 1'b1) ? Range1_all_ones_1_fu_494_p2 : Range1_all_zeros_1_fu_500_p2);

assign deleted_zeros_fu_402_p3 = ((carry_fu_375_p2[0:0] === 1'b1) ? Range1_all_ones_fu_390_p2 : Range1_all_zeros_fu_396_p2);

assign exitcond1_i_fu_203_p2 = ((i_i_reg_173 == rows_1_fu_195_p1) ? 1'b1 : 1'b0);

assign exitcond_i_fu_214_p2 = ((j_i_reg_184 == cols_1_fu_199_p1) ? 1'b1 : 1'b0);

assign grp_fu_650_p0 = grp_fu_650_p00;

assign grp_fu_650_p00 = ap_reg_pp0_iter2_tmp_77_reg_728;

assign grp_fu_650_p1 = 30'd2462056;

assign grp_fu_650_p2 = grp_fu_650_p20;

assign grp_fu_650_p20 = grp_fu_660_p3;

assign grp_fu_660_p0 = grp_fu_660_p00;

assign grp_fu_660_p00 = ap_reg_pp0_iter2_tmp_78_reg_733;

assign grp_fu_660_p1 = 28'd478150;

assign grp_fu_668_p1 = 32'd2990538;

assign grp_fu_668_p2 = 32'd536870912;

assign grp_fu_681_p1 = 32'd2365587;

assign grp_fu_681_p2 = 32'd536870912;

assign i_fu_208_p2 = (i_i_reg_173 + 10'd1);

assign i_op_assign_3_i_fu_303_p2 = (tmp_30_cast_i_i_fu_296_p1 - tmp_31_cast_i_i_fu_299_p1);

assign i_op_assign_4_i_fu_312_p2 = (tmp_33_cast_i_i_fu_309_p1 - tmp_31_cast_i_i_fu_299_p1);

assign j_fu_219_p2 = (j_i_reg_184 + 9'd1);

assign neg_src_4_fu_590_p2 = (tmp_25_i_i15_i_i_fu_585_p2 & signbit_1_reg_798);

assign neg_src_fu_531_p2 = (tmp_25_i_i_i_i_fu_526_p2 & signbit_reg_774);

assign neg_src_not_i_i19_i_s_fu_600_p2 = (signbit_not_i18_i_i_fu_595_p2 | p_38_i_i_i14_i_i_reg_810);

assign neg_src_not_i_i_i_i_fu_541_p2 = (signbit_not_i_i_i_fu_536_p2 | p_38_i_i_i_i_i_reg_786);

assign not_carry_i_i_fu_282_p2 = (tmp_64_fu_268_p3 | p_Result_9_i_i_not_fu_276_p2);

assign p_38_i_i_i14_i_i_fu_514_p2 = (carry_1_fu_479_p2 & Range1_all_ones_1_fu_494_p2);

assign p_38_i_i_i_i_i_fu_410_p2 = (carry_fu_375_p2 & Range1_all_ones_fu_390_p2);

assign p_39_demorgan_i_i_i17_fu_520_p2 = (signbit_1_fu_425_p3 | deleted_zeros_1_fu_506_p3);

assign p_39_demorgan_i_i_i_i_fu_416_p2 = (signbit_fu_321_p3 | deleted_zeros_fu_402_p3);

assign p_39_demorgan_i_not_i_1_fu_610_p2 = (p_39_demorgan_i_i_i17_reg_816 ^ 1'd1);

assign p_39_demorgan_i_not_i_fu_551_p2 = (p_39_demorgan_i_i_i_i_reg_792 ^ 1'd1);

assign p_Result_9_i_i_not_fu_276_p2 = (tmp_63_fu_256_p3 ^ 1'd1);

assign p_Val2_13_fu_328_p4 = {{grp_fu_668_p3[29:22]}};

assign p_Val2_14_fu_355_p2 = (p_Val2_13_fu_328_p4 + tmp_23_i_i_i_i_fu_344_p1);

assign p_Val2_18_fu_432_p4 = {{grp_fu_681_p3[29:22]}};

assign p_Val2_19_fu_459_p2 = (p_Val2_18_fu_432_p4 + tmp_23_i_i5_i_i_fu_448_p1);

assign p_Val2_9_fu_263_p2 = (p_Val2_8_reg_749 + tmp_26_i_i_i_i_fu_253_p1);

assign p_Val2_s_fu_288_p3 = ((not_carry_i_i_fu_282_p2[0:0] === 1'b1) ? p_Val2_9_fu_263_p2 : 8'd255);

assign p_i_i24_i_i_fu_628_p3 = ((neg_src_4_fu_590_p2[0:0] === 1'b1) ? 8'd0 : p_Val2_19_reg_804);

assign p_i_i_i_i_fu_569_p3 = ((neg_src_fu_531_p2[0:0] === 1'b1) ? 8'd0 : p_Val2_14_reg_780);

assign p_mux_i_i1_i_i_fu_562_p3 = ((brmerge_i_i_not_i_i_s_fu_546_p2[0:0] === 1'b1) ? p_Val2_14_reg_780 : 8'd255);

assign p_mux_i_i23_i_i_fu_621_p3 = ((brmerge_i_i_not_i_i2_fu_605_p2[0:0] === 1'b1) ? p_Val2_19_reg_804 : 8'd255);

assign r_V_4_i_i_fu_644_p0 = r_V_4_i_i_fu_644_p00;

assign r_V_4_i_i_fu_644_p00 = tmp_76_reg_722;

assign r_V_4_i_i_fu_644_p1 = 29'd1254096;

assign rows_1_fu_195_p1 = rows[9:0];

assign signbit_1_fu_425_p3 = grp_fu_681_p3[32'd31];

assign signbit_fu_321_p3 = grp_fu_668_p3[32'd31];

assign signbit_not_i18_i_i_fu_595_p2 = (signbit_1_reg_798 ^ 1'd1);

assign signbit_not_i_i_i_fu_536_p2 = (signbit_reg_774 ^ 1'd1);

assign start_out = real_start;

assign tmp_23_i_i5_i_i_fu_448_p1 = tmp_70_fu_441_p3;

assign tmp_23_i_i_i_i_fu_344_p1 = tmp_66_fu_337_p3;

assign tmp_24_i_i9_i_i_fu_473_p2 = (tmp_72_fu_465_p3 ^ 1'd1);

assign tmp_24_i_i_i_i_fu_369_p2 = (tmp_68_fu_361_p3 ^ 1'd1);

assign tmp_25_i_i15_i_i_fu_585_p2 = (p_38_i_i_i14_i_i_reg_810 ^ 1'd1);

assign tmp_25_i_i_i_i_fu_526_p2 = (p_38_i_i_i_i_i_reg_786 ^ 1'd1);

assign tmp_26_i_i_i_i_fu_253_p1 = tmp_reg_754;

assign tmp_30_cast_i_i_fu_296_p1 = ap_reg_pp0_iter3_tmp_76_reg_722;

assign tmp_31_cast_i_i_fu_299_p1 = p_Val2_s_fu_288_p3;

assign tmp_33_cast_i_i_fu_309_p1 = ap_reg_pp0_iter3_tmp_78_reg_733;

assign tmp_45_i_fu_485_p4 = {{grp_fu_681_p3[31:30]}};

assign tmp_63_fu_256_p3 = r_V_1_reg_744[32'd29];

assign tmp_64_fu_268_p3 = p_Val2_9_fu_263_p2[32'd7];

assign tmp_66_fu_337_p3 = grp_fu_668_p3[32'd21];

assign tmp_67_fu_348_p3 = grp_fu_668_p3[32'd29];

assign tmp_68_fu_361_p3 = p_Val2_14_fu_355_p2[32'd7];

assign tmp_70_fu_441_p3 = grp_fu_681_p3[32'd21];

assign tmp_71_fu_452_p3 = grp_fu_681_p3[32'd29];

assign tmp_72_fu_465_p3 = p_Val2_19_fu_459_p2[32'd7];

assign tmp_i_125_fu_381_p4 = {{grp_fu_668_p3[31:30]}};

endmodule //CvtColor
