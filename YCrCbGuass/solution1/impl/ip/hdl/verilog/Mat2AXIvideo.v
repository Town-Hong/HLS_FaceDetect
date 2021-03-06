// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Mat2AXIvideo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rows,
        cols,
        nor_mat_data_stream_s_dout,
        nor_mat_data_stream_s_empty_n,
        nor_mat_data_stream_s_read,
        nor_output_TDATA,
        nor_output_TVALID,
        nor_output_TREADY,
        nor_output_TKEEP,
        nor_output_TSTRB,
        nor_output_TUSER,
        nor_output_TLAST,
        nor_output_TID,
        nor_output_TDEST
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] rows;
input  [31:0] cols;
input  [31:0] nor_mat_data_stream_s_dout;
input   nor_mat_data_stream_s_empty_n;
output   nor_mat_data_stream_s_read;
output  [31:0] nor_output_TDATA;
output   nor_output_TVALID;
input   nor_output_TREADY;
output  [3:0] nor_output_TKEEP;
output  [3:0] nor_output_TSTRB;
output  [0:0] nor_output_TUSER;
output  [0:0] nor_output_TLAST;
output  [0:0] nor_output_TID;
output  [0:0] nor_output_TDEST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg nor_mat_data_stream_s_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] nor_output_V_data_V_1_data_out;
reg    nor_output_V_data_V_1_vld_in;
wire    nor_output_V_data_V_1_vld_out;
wire    nor_output_V_data_V_1_ack_in;
wire    nor_output_V_data_V_1_ack_out;
reg   [31:0] nor_output_V_data_V_1_payload_A;
reg   [31:0] nor_output_V_data_V_1_payload_B;
reg    nor_output_V_data_V_1_sel_rd;
reg    nor_output_V_data_V_1_sel_wr;
wire    nor_output_V_data_V_1_sel;
wire    nor_output_V_data_V_1_load_A;
wire    nor_output_V_data_V_1_load_B;
reg   [1:0] nor_output_V_data_V_1_state;
wire    nor_output_V_data_V_1_state_cmp_full;
wire   [3:0] nor_output_V_keep_V_1_data_out;
reg    nor_output_V_keep_V_1_vld_in;
wire    nor_output_V_keep_V_1_vld_out;
wire    nor_output_V_keep_V_1_ack_in;
wire    nor_output_V_keep_V_1_ack_out;
reg    nor_output_V_keep_V_1_sel_rd;
wire    nor_output_V_keep_V_1_sel;
reg   [1:0] nor_output_V_keep_V_1_state;
wire   [3:0] nor_output_V_strb_V_1_data_out;
reg    nor_output_V_strb_V_1_vld_in;
wire    nor_output_V_strb_V_1_vld_out;
wire    nor_output_V_strb_V_1_ack_in;
wire    nor_output_V_strb_V_1_ack_out;
reg    nor_output_V_strb_V_1_sel_rd;
wire    nor_output_V_strb_V_1_sel;
reg   [1:0] nor_output_V_strb_V_1_state;
reg   [0:0] nor_output_V_user_V_1_data_out;
reg    nor_output_V_user_V_1_vld_in;
wire    nor_output_V_user_V_1_vld_out;
wire    nor_output_V_user_V_1_ack_in;
wire    nor_output_V_user_V_1_ack_out;
reg   [0:0] nor_output_V_user_V_1_payload_A;
reg   [0:0] nor_output_V_user_V_1_payload_B;
reg    nor_output_V_user_V_1_sel_rd;
reg    nor_output_V_user_V_1_sel_wr;
wire    nor_output_V_user_V_1_sel;
wire    nor_output_V_user_V_1_load_A;
wire    nor_output_V_user_V_1_load_B;
reg   [1:0] nor_output_V_user_V_1_state;
wire    nor_output_V_user_V_1_state_cmp_full;
reg   [0:0] nor_output_V_last_V_1_data_out;
reg    nor_output_V_last_V_1_vld_in;
wire    nor_output_V_last_V_1_vld_out;
wire    nor_output_V_last_V_1_ack_in;
wire    nor_output_V_last_V_1_ack_out;
reg   [0:0] nor_output_V_last_V_1_payload_A;
reg   [0:0] nor_output_V_last_V_1_payload_B;
reg    nor_output_V_last_V_1_sel_rd;
reg    nor_output_V_last_V_1_sel_wr;
wire    nor_output_V_last_V_1_sel;
wire    nor_output_V_last_V_1_load_A;
wire    nor_output_V_last_V_1_load_B;
reg   [1:0] nor_output_V_last_V_1_state;
wire    nor_output_V_last_V_1_state_cmp_full;
wire   [0:0] nor_output_V_id_V_1_data_out;
reg    nor_output_V_id_V_1_vld_in;
wire    nor_output_V_id_V_1_vld_out;
wire    nor_output_V_id_V_1_ack_in;
wire    nor_output_V_id_V_1_ack_out;
reg    nor_output_V_id_V_1_sel_rd;
wire    nor_output_V_id_V_1_sel;
reg   [1:0] nor_output_V_id_V_1_state;
wire   [0:0] nor_output_V_dest_V_1_data_out;
reg    nor_output_V_dest_V_1_vld_in;
wire    nor_output_V_dest_V_1_vld_out;
wire    nor_output_V_dest_V_1_ack_in;
wire    nor_output_V_dest_V_1_ack_out;
reg    nor_output_V_dest_V_1_sel_rd;
wire    nor_output_V_dest_V_1_sel;
reg   [1:0] nor_output_V_dest_V_1_state;
reg    nor_mat_data_stream_s_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_i_reg_260;
reg    nor_output_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] ap_reg_pp0_iter1_exitcond_i_reg_260;
reg   [8:0] t_V_13_reg_158;
wire   [9:0] rows_V_fu_169_p1;
reg    ap_block_state1;
wire   [8:0] cols_V_fu_173_p1;
wire   [8:0] r_V_fu_177_p2;
wire   [0:0] exitcond2_i_fu_188_p2;
wire    ap_CS_fsm_state2;
reg    ap_block_state2;
wire   [9:0] i_V_fu_193_p2;
reg   [9:0] i_V_reg_255;
wire   [0:0] exitcond_i_fu_199_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state4_io;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state5_io;
reg    ap_block_pp0_stage0_11001;
wire   [8:0] j_V_fu_204_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] axi_last_V_fu_210_p2;
reg   [0:0] axi_last_V_reg_269;
wire   [31:0] tmp_data_V_fu_219_p1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [9:0] t_V_reg_147;
wire    ap_CS_fsm_state6;
reg   [0:0] tmp_user_V_fu_96;
reg    ap_block_pp0_stage0_01001;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 nor_output_V_data_V_1_sel_rd = 1'b0;
#0 nor_output_V_data_V_1_sel_wr = 1'b0;
#0 nor_output_V_data_V_1_state = 2'd0;
#0 nor_output_V_keep_V_1_sel_rd = 1'b0;
#0 nor_output_V_keep_V_1_state = 2'd0;
#0 nor_output_V_strb_V_1_sel_rd = 1'b0;
#0 nor_output_V_strb_V_1_state = 2'd0;
#0 nor_output_V_user_V_1_sel_rd = 1'b0;
#0 nor_output_V_user_V_1_sel_wr = 1'b0;
#0 nor_output_V_user_V_1_state = 2'd0;
#0 nor_output_V_last_V_1_sel_rd = 1'b0;
#0 nor_output_V_last_V_1_sel_wr = 1'b0;
#0 nor_output_V_last_V_1_state = 2'd0;
#0 nor_output_V_id_V_1_sel_rd = 1'b0;
#0 nor_output_V_id_V_1_state = 2'd0;
#0 nor_output_V_dest_V_1_sel_rd = 1'b0;
#0 nor_output_V_dest_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

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
        end else if ((~((nor_output_V_data_V_1_ack_in == 1'b0) | (nor_output_V_dest_V_1_ack_in == 1'b0) | (nor_output_V_id_V_1_ack_in == 1'b0) | (nor_output_V_last_V_1_ack_in == 1'b0) | (nor_output_V_user_V_1_ack_in == 1'b0) | (nor_output_V_strb_V_1_ack_in == 1'b0) | (nor_output_V_keep_V_1_ack_in == 1'b0)) & (exitcond2_i_fu_188_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((nor_output_V_data_V_1_ack_in == 1'b0) | (nor_output_V_dest_V_1_ack_in == 1'b0) | (nor_output_V_id_V_1_ack_in == 1'b0) | (nor_output_V_last_V_1_ack_in == 1'b0) | (nor_output_V_user_V_1_ack_in == 1'b0) | (nor_output_V_strb_V_1_ack_in == 1'b0) | (nor_output_V_keep_V_1_ack_in == 1'b0)) & (exitcond2_i_fu_188_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
        end else if ((~((nor_output_V_data_V_1_ack_in == 1'b0) | (nor_output_V_dest_V_1_ack_in == 1'b0) | (nor_output_V_id_V_1_ack_in == 1'b0) | (nor_output_V_last_V_1_ack_in == 1'b0) | (nor_output_V_user_V_1_ack_in == 1'b0) | (nor_output_V_strb_V_1_ack_in == 1'b0) | (nor_output_V_keep_V_1_ack_in == 1'b0)) & (exitcond2_i_fu_188_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((nor_output_V_data_V_1_ack_out == 1'b1) & (nor_output_V_data_V_1_vld_out == 1'b1))) begin
            nor_output_V_data_V_1_sel_rd <= ~nor_output_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((nor_output_V_data_V_1_ack_in == 1'b1) & (nor_output_V_data_V_1_vld_in == 1'b1))) begin
            nor_output_V_data_V_1_sel_wr <= ~nor_output_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((nor_output_V_data_V_1_state == 2'd2) & (nor_output_V_data_V_1_vld_in == 1'b0)) | ((nor_output_V_data_V_1_state == 2'd3) & (nor_output_V_data_V_1_vld_in == 1'b0) & (nor_output_V_data_V_1_ack_out == 1'b1)))) begin
            nor_output_V_data_V_1_state <= 2'd2;
        end else if ((((nor_output_V_data_V_1_state == 2'd1) & (nor_output_V_data_V_1_ack_out == 1'b0)) | ((nor_output_V_data_V_1_state == 2'd3) & (nor_output_V_data_V_1_ack_out == 1'b0) & (nor_output_V_data_V_1_vld_in == 1'b1)))) begin
            nor_output_V_data_V_1_state <= 2'd1;
        end else if (((~((nor_output_V_data_V_1_vld_in == 1'b0) & (nor_output_V_data_V_1_ack_out == 1'b1)) & ~((nor_output_V_data_V_1_ack_out == 1'b0) & (nor_output_V_data_V_1_vld_in == 1'b1)) & (nor_output_V_data_V_1_state == 2'd3)) | ((nor_output_V_data_V_1_state == 2'd1) & (nor_output_V_data_V_1_ack_out == 1'b1)) | ((nor_output_V_data_V_1_state == 2'd2) & (nor_output_V_data_V_1_vld_in == 1'b1)))) begin
            nor_output_V_data_V_1_state <= 2'd3;
        end else begin
            nor_output_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_dest_V_1_sel_rd <= 1'b0;
    end else begin
        if (((nor_output_V_dest_V_1_ack_out == 1'b1) & (nor_output_V_dest_V_1_vld_out == 1'b1))) begin
            nor_output_V_dest_V_1_sel_rd <= ~nor_output_V_dest_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_dest_V_1_state <= 2'd0;
    end else begin
        if ((((nor_output_V_dest_V_1_state == 2'd2) & (nor_output_V_dest_V_1_vld_in == 1'b0)) | ((nor_output_V_dest_V_1_state == 2'd3) & (nor_output_V_dest_V_1_vld_in == 1'b0) & (nor_output_V_dest_V_1_ack_out == 1'b1)))) begin
            nor_output_V_dest_V_1_state <= 2'd2;
        end else if ((((nor_output_V_dest_V_1_state == 2'd1) & (nor_output_V_dest_V_1_ack_out == 1'b0)) | ((nor_output_V_dest_V_1_state == 2'd3) & (nor_output_V_dest_V_1_ack_out == 1'b0) & (nor_output_V_dest_V_1_vld_in == 1'b1)))) begin
            nor_output_V_dest_V_1_state <= 2'd1;
        end else if (((~((nor_output_V_dest_V_1_vld_in == 1'b0) & (nor_output_V_dest_V_1_ack_out == 1'b1)) & ~((nor_output_V_dest_V_1_ack_out == 1'b0) & (nor_output_V_dest_V_1_vld_in == 1'b1)) & (nor_output_V_dest_V_1_state == 2'd3)) | ((nor_output_V_dest_V_1_state == 2'd1) & (nor_output_V_dest_V_1_ack_out == 1'b1)) | ((nor_output_V_dest_V_1_state == 2'd2) & (nor_output_V_dest_V_1_vld_in == 1'b1)))) begin
            nor_output_V_dest_V_1_state <= 2'd3;
        end else begin
            nor_output_V_dest_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_id_V_1_sel_rd <= 1'b0;
    end else begin
        if (((nor_output_V_id_V_1_ack_out == 1'b1) & (nor_output_V_id_V_1_vld_out == 1'b1))) begin
            nor_output_V_id_V_1_sel_rd <= ~nor_output_V_id_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_id_V_1_state <= 2'd0;
    end else begin
        if ((((nor_output_V_id_V_1_state == 2'd2) & (nor_output_V_id_V_1_vld_in == 1'b0)) | ((nor_output_V_id_V_1_state == 2'd3) & (nor_output_V_id_V_1_vld_in == 1'b0) & (nor_output_V_id_V_1_ack_out == 1'b1)))) begin
            nor_output_V_id_V_1_state <= 2'd2;
        end else if ((((nor_output_V_id_V_1_state == 2'd1) & (nor_output_V_id_V_1_ack_out == 1'b0)) | ((nor_output_V_id_V_1_state == 2'd3) & (nor_output_V_id_V_1_ack_out == 1'b0) & (nor_output_V_id_V_1_vld_in == 1'b1)))) begin
            nor_output_V_id_V_1_state <= 2'd1;
        end else if (((~((nor_output_V_id_V_1_vld_in == 1'b0) & (nor_output_V_id_V_1_ack_out == 1'b1)) & ~((nor_output_V_id_V_1_ack_out == 1'b0) & (nor_output_V_id_V_1_vld_in == 1'b1)) & (nor_output_V_id_V_1_state == 2'd3)) | ((nor_output_V_id_V_1_state == 2'd1) & (nor_output_V_id_V_1_ack_out == 1'b1)) | ((nor_output_V_id_V_1_state == 2'd2) & (nor_output_V_id_V_1_vld_in == 1'b1)))) begin
            nor_output_V_id_V_1_state <= 2'd3;
        end else begin
            nor_output_V_id_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_keep_V_1_sel_rd <= 1'b0;
    end else begin
        if (((nor_output_V_keep_V_1_ack_out == 1'b1) & (nor_output_V_keep_V_1_vld_out == 1'b1))) begin
            nor_output_V_keep_V_1_sel_rd <= ~nor_output_V_keep_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_keep_V_1_state <= 2'd0;
    end else begin
        if ((((nor_output_V_keep_V_1_state == 2'd2) & (nor_output_V_keep_V_1_vld_in == 1'b0)) | ((nor_output_V_keep_V_1_state == 2'd3) & (nor_output_V_keep_V_1_vld_in == 1'b0) & (nor_output_V_keep_V_1_ack_out == 1'b1)))) begin
            nor_output_V_keep_V_1_state <= 2'd2;
        end else if ((((nor_output_V_keep_V_1_state == 2'd1) & (nor_output_V_keep_V_1_ack_out == 1'b0)) | ((nor_output_V_keep_V_1_state == 2'd3) & (nor_output_V_keep_V_1_ack_out == 1'b0) & (nor_output_V_keep_V_1_vld_in == 1'b1)))) begin
            nor_output_V_keep_V_1_state <= 2'd1;
        end else if (((~((nor_output_V_keep_V_1_vld_in == 1'b0) & (nor_output_V_keep_V_1_ack_out == 1'b1)) & ~((nor_output_V_keep_V_1_ack_out == 1'b0) & (nor_output_V_keep_V_1_vld_in == 1'b1)) & (nor_output_V_keep_V_1_state == 2'd3)) | ((nor_output_V_keep_V_1_state == 2'd1) & (nor_output_V_keep_V_1_ack_out == 1'b1)) | ((nor_output_V_keep_V_1_state == 2'd2) & (nor_output_V_keep_V_1_vld_in == 1'b1)))) begin
            nor_output_V_keep_V_1_state <= 2'd3;
        end else begin
            nor_output_V_keep_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((nor_output_V_last_V_1_ack_out == 1'b1) & (nor_output_V_last_V_1_vld_out == 1'b1))) begin
            nor_output_V_last_V_1_sel_rd <= ~nor_output_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((nor_output_V_last_V_1_ack_in == 1'b1) & (nor_output_V_last_V_1_vld_in == 1'b1))) begin
            nor_output_V_last_V_1_sel_wr <= ~nor_output_V_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((nor_output_V_last_V_1_state == 2'd2) & (nor_output_V_last_V_1_vld_in == 1'b0)) | ((nor_output_V_last_V_1_state == 2'd3) & (nor_output_V_last_V_1_vld_in == 1'b0) & (nor_output_V_last_V_1_ack_out == 1'b1)))) begin
            nor_output_V_last_V_1_state <= 2'd2;
        end else if ((((nor_output_V_last_V_1_state == 2'd1) & (nor_output_V_last_V_1_ack_out == 1'b0)) | ((nor_output_V_last_V_1_state == 2'd3) & (nor_output_V_last_V_1_ack_out == 1'b0) & (nor_output_V_last_V_1_vld_in == 1'b1)))) begin
            nor_output_V_last_V_1_state <= 2'd1;
        end else if (((~((nor_output_V_last_V_1_vld_in == 1'b0) & (nor_output_V_last_V_1_ack_out == 1'b1)) & ~((nor_output_V_last_V_1_ack_out == 1'b0) & (nor_output_V_last_V_1_vld_in == 1'b1)) & (nor_output_V_last_V_1_state == 2'd3)) | ((nor_output_V_last_V_1_state == 2'd1) & (nor_output_V_last_V_1_ack_out == 1'b1)) | ((nor_output_V_last_V_1_state == 2'd2) & (nor_output_V_last_V_1_vld_in == 1'b1)))) begin
            nor_output_V_last_V_1_state <= 2'd3;
        end else begin
            nor_output_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_strb_V_1_sel_rd <= 1'b0;
    end else begin
        if (((nor_output_V_strb_V_1_ack_out == 1'b1) & (nor_output_V_strb_V_1_vld_out == 1'b1))) begin
            nor_output_V_strb_V_1_sel_rd <= ~nor_output_V_strb_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_strb_V_1_state <= 2'd0;
    end else begin
        if ((((nor_output_V_strb_V_1_state == 2'd2) & (nor_output_V_strb_V_1_vld_in == 1'b0)) | ((nor_output_V_strb_V_1_state == 2'd3) & (nor_output_V_strb_V_1_vld_in == 1'b0) & (nor_output_V_strb_V_1_ack_out == 1'b1)))) begin
            nor_output_V_strb_V_1_state <= 2'd2;
        end else if ((((nor_output_V_strb_V_1_state == 2'd1) & (nor_output_V_strb_V_1_ack_out == 1'b0)) | ((nor_output_V_strb_V_1_state == 2'd3) & (nor_output_V_strb_V_1_ack_out == 1'b0) & (nor_output_V_strb_V_1_vld_in == 1'b1)))) begin
            nor_output_V_strb_V_1_state <= 2'd1;
        end else if (((~((nor_output_V_strb_V_1_vld_in == 1'b0) & (nor_output_V_strb_V_1_ack_out == 1'b1)) & ~((nor_output_V_strb_V_1_ack_out == 1'b0) & (nor_output_V_strb_V_1_vld_in == 1'b1)) & (nor_output_V_strb_V_1_state == 2'd3)) | ((nor_output_V_strb_V_1_state == 2'd1) & (nor_output_V_strb_V_1_ack_out == 1'b1)) | ((nor_output_V_strb_V_1_state == 2'd2) & (nor_output_V_strb_V_1_vld_in == 1'b1)))) begin
            nor_output_V_strb_V_1_state <= 2'd3;
        end else begin
            nor_output_V_strb_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_user_V_1_sel_rd <= 1'b0;
    end else begin
        if (((nor_output_V_user_V_1_ack_out == 1'b1) & (nor_output_V_user_V_1_vld_out == 1'b1))) begin
            nor_output_V_user_V_1_sel_rd <= ~nor_output_V_user_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_user_V_1_sel_wr <= 1'b0;
    end else begin
        if (((nor_output_V_user_V_1_ack_in == 1'b1) & (nor_output_V_user_V_1_vld_in == 1'b1))) begin
            nor_output_V_user_V_1_sel_wr <= ~nor_output_V_user_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        nor_output_V_user_V_1_state <= 2'd0;
    end else begin
        if ((((nor_output_V_user_V_1_state == 2'd2) & (nor_output_V_user_V_1_vld_in == 1'b0)) | ((nor_output_V_user_V_1_state == 2'd3) & (nor_output_V_user_V_1_vld_in == 1'b0) & (nor_output_V_user_V_1_ack_out == 1'b1)))) begin
            nor_output_V_user_V_1_state <= 2'd2;
        end else if ((((nor_output_V_user_V_1_state == 2'd1) & (nor_output_V_user_V_1_ack_out == 1'b0)) | ((nor_output_V_user_V_1_state == 2'd3) & (nor_output_V_user_V_1_ack_out == 1'b0) & (nor_output_V_user_V_1_vld_in == 1'b1)))) begin
            nor_output_V_user_V_1_state <= 2'd1;
        end else if (((~((nor_output_V_user_V_1_vld_in == 1'b0) & (nor_output_V_user_V_1_ack_out == 1'b1)) & ~((nor_output_V_user_V_1_ack_out == 1'b0) & (nor_output_V_user_V_1_vld_in == 1'b1)) & (nor_output_V_user_V_1_state == 2'd3)) | ((nor_output_V_user_V_1_state == 2'd1) & (nor_output_V_user_V_1_ack_out == 1'b1)) | ((nor_output_V_user_V_1_state == 2'd2) & (nor_output_V_user_V_1_vld_in == 1'b1)))) begin
            nor_output_V_user_V_1_state <= 2'd3;
        end else begin
            nor_output_V_user_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_199_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_V_13_reg_158 <= j_V_fu_204_p2;
    end else if ((~((nor_output_V_data_V_1_ack_in == 1'b0) | (nor_output_V_dest_V_1_ack_in == 1'b0) | (nor_output_V_id_V_1_ack_in == 1'b0) | (nor_output_V_last_V_1_ack_in == 1'b0) | (nor_output_V_user_V_1_ack_in == 1'b0) | (nor_output_V_strb_V_1_ack_in == 1'b0) | (nor_output_V_keep_V_1_ack_in == 1'b0)) & (exitcond2_i_fu_188_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_13_reg_158 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_V_reg_147 <= i_V_reg_255;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_147 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_user_V_fu_96 <= 1'd0;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_user_V_fu_96 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_reg_pp0_iter1_exitcond_i_reg_260 <= exitcond_i_reg_260;
        exitcond_i_reg_260 <= exitcond_i_fu_199_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_199_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        axi_last_V_reg_269 <= axi_last_V_fu_210_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((nor_output_V_data_V_1_ack_in == 1'b0) | (nor_output_V_dest_V_1_ack_in == 1'b0) | (nor_output_V_id_V_1_ack_in == 1'b0) | (nor_output_V_last_V_1_ack_in == 1'b0) | (nor_output_V_user_V_1_ack_in == 1'b0) | (nor_output_V_strb_V_1_ack_in == 1'b0) | (nor_output_V_keep_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        i_V_reg_255 <= i_V_fu_193_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((nor_output_V_data_V_1_load_A == 1'b1)) begin
        nor_output_V_data_V_1_payload_A <= tmp_data_V_fu_219_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((nor_output_V_data_V_1_load_B == 1'b1)) begin
        nor_output_V_data_V_1_payload_B <= tmp_data_V_fu_219_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((nor_output_V_last_V_1_load_A == 1'b1)) begin
        nor_output_V_last_V_1_payload_A <= axi_last_V_reg_269;
    end
end

always @ (posedge ap_clk) begin
    if ((nor_output_V_last_V_1_load_B == 1'b1)) begin
        nor_output_V_last_V_1_payload_B <= axi_last_V_reg_269;
    end
end

always @ (posedge ap_clk) begin
    if ((nor_output_V_user_V_1_load_A == 1'b1)) begin
        nor_output_V_user_V_1_payload_A <= tmp_user_V_fu_96;
    end
end

always @ (posedge ap_clk) begin
    if ((nor_output_V_user_V_1_load_B == 1'b1)) begin
        nor_output_V_user_V_1_payload_B <= tmp_user_V_fu_96;
    end
end

always @ (*) begin
    if ((exitcond_i_fu_199_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((~((nor_output_V_data_V_1_ack_in == 1'b0) | (nor_output_V_dest_V_1_ack_in == 1'b0) | (nor_output_V_id_V_1_ack_in == 1'b0) | (nor_output_V_last_V_1_ack_in == 1'b0) | (nor_output_V_user_V_1_ack_in == 1'b0) | (nor_output_V_strb_V_1_ack_in == 1'b0) | (nor_output_V_keep_V_1_ack_in == 1'b0)) & (exitcond2_i_fu_188_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((nor_output_V_data_V_1_ack_in == 1'b0) | (nor_output_V_dest_V_1_ack_in == 1'b0) | (nor_output_V_id_V_1_ack_in == 1'b0) | (nor_output_V_last_V_1_ack_in == 1'b0) | (nor_output_V_user_V_1_ack_in == 1'b0) | (nor_output_V_strb_V_1_ack_in == 1'b0) | (nor_output_V_keep_V_1_ack_in == 1'b0)) & (exitcond2_i_fu_188_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nor_mat_data_stream_s_blk_n = nor_mat_data_stream_s_empty_n;
    end else begin
        nor_mat_data_stream_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nor_mat_data_stream_s_read = 1'b1;
    end else begin
        nor_mat_data_stream_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_reg_pp0_iter1_exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        nor_output_TDATA_blk_n = nor_output_V_data_V_1_state[1'd1];
    end else begin
        nor_output_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((nor_output_V_data_V_1_sel == 1'b1)) begin
        nor_output_V_data_V_1_data_out = nor_output_V_data_V_1_payload_B;
    end else begin
        nor_output_V_data_V_1_data_out = nor_output_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nor_output_V_data_V_1_vld_in = 1'b1;
    end else begin
        nor_output_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nor_output_V_dest_V_1_vld_in = 1'b1;
    end else begin
        nor_output_V_dest_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nor_output_V_id_V_1_vld_in = 1'b1;
    end else begin
        nor_output_V_id_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nor_output_V_keep_V_1_vld_in = 1'b1;
    end else begin
        nor_output_V_keep_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((nor_output_V_last_V_1_sel == 1'b1)) begin
        nor_output_V_last_V_1_data_out = nor_output_V_last_V_1_payload_B;
    end else begin
        nor_output_V_last_V_1_data_out = nor_output_V_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nor_output_V_last_V_1_vld_in = 1'b1;
    end else begin
        nor_output_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nor_output_V_strb_V_1_vld_in = 1'b1;
    end else begin
        nor_output_V_strb_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((nor_output_V_user_V_1_sel == 1'b1)) begin
        nor_output_V_user_V_1_data_out = nor_output_V_user_V_1_payload_B;
    end else begin
        nor_output_V_user_V_1_data_out = nor_output_V_user_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_260 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nor_output_V_user_V_1_vld_in = 1'b1;
    end else begin
        nor_output_V_user_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((nor_output_V_data_V_1_ack_in == 1'b0) | (nor_output_V_dest_V_1_ack_in == 1'b0) | (nor_output_V_id_V_1_ack_in == 1'b0) | (nor_output_V_last_V_1_ack_in == 1'b0) | (nor_output_V_user_V_1_ack_in == 1'b0) | (nor_output_V_strb_V_1_ack_in == 1'b0) | (nor_output_V_keep_V_1_ack_in == 1'b0)) & (exitcond2_i_fu_188_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((nor_output_V_data_V_1_ack_in == 1'b0) | (nor_output_V_dest_V_1_ack_in == 1'b0) | (nor_output_V_id_V_1_ack_in == 1'b0) | (nor_output_V_last_V_1_ack_in == 1'b0) | (nor_output_V_user_V_1_ack_in == 1'b0) | (nor_output_V_strb_V_1_ack_in == 1'b0) | (nor_output_V_keep_V_1_ack_in == 1'b0)) & (exitcond2_i_fu_188_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_i_fu_199_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((exitcond_i_fu_199_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((exitcond_i_reg_260 == 1'd0) & (nor_mat_data_stream_s_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state5_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((exitcond_i_reg_260 == 1'd0) & (nor_mat_data_stream_s_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state5_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((exitcond_i_reg_260 == 1'd0) & (nor_mat_data_stream_s_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((nor_output_V_data_V_1_ack_in == 1'b0) | (nor_output_V_dest_V_1_ack_in == 1'b0) | (nor_output_V_id_V_1_ack_in == 1'b0) | (nor_output_V_last_V_1_ack_in == 1'b0) | (nor_output_V_user_V_1_ack_in == 1'b0) | (nor_output_V_strb_V_1_ack_in == 1'b0) | (nor_output_V_keep_V_1_ack_in == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = ((exitcond_i_reg_260 == 1'd0) & (nor_output_V_data_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((exitcond_i_reg_260 == 1'd0) & (nor_mat_data_stream_s_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_io = ((ap_reg_pp0_iter1_exitcond_i_reg_260 == 1'd0) & (nor_output_V_data_V_1_ack_in == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign axi_last_V_fu_210_p2 = ((t_V_13_reg_158 == r_V_fu_177_p2) ? 1'b1 : 1'b0);

assign cols_V_fu_173_p1 = cols[8:0];

assign exitcond2_i_fu_188_p2 = ((t_V_reg_147 == rows_V_fu_169_p1) ? 1'b1 : 1'b0);

assign exitcond_i_fu_199_p2 = ((t_V_13_reg_158 == cols_V_fu_173_p1) ? 1'b1 : 1'b0);

assign i_V_fu_193_p2 = (t_V_reg_147 + 10'd1);

assign j_V_fu_204_p2 = (t_V_13_reg_158 + 9'd1);

assign nor_output_TDATA = nor_output_V_data_V_1_data_out;

assign nor_output_TDEST = nor_output_V_dest_V_1_data_out;

assign nor_output_TID = nor_output_V_id_V_1_data_out;

assign nor_output_TKEEP = nor_output_V_keep_V_1_data_out;

assign nor_output_TLAST = nor_output_V_last_V_1_data_out;

assign nor_output_TSTRB = nor_output_V_strb_V_1_data_out;

assign nor_output_TUSER = nor_output_V_user_V_1_data_out;

assign nor_output_TVALID = nor_output_V_dest_V_1_state[1'd0];

assign nor_output_V_data_V_1_ack_in = nor_output_V_data_V_1_state[1'd1];

assign nor_output_V_data_V_1_ack_out = nor_output_TREADY;

assign nor_output_V_data_V_1_load_A = (nor_output_V_data_V_1_state_cmp_full & ~nor_output_V_data_V_1_sel_wr);

assign nor_output_V_data_V_1_load_B = (nor_output_V_data_V_1_state_cmp_full & nor_output_V_data_V_1_sel_wr);

assign nor_output_V_data_V_1_sel = nor_output_V_data_V_1_sel_rd;

assign nor_output_V_data_V_1_state_cmp_full = ((nor_output_V_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign nor_output_V_data_V_1_vld_out = nor_output_V_data_V_1_state[1'd0];

assign nor_output_V_dest_V_1_ack_in = nor_output_V_dest_V_1_state[1'd1];

assign nor_output_V_dest_V_1_ack_out = nor_output_TREADY;

assign nor_output_V_dest_V_1_data_out = 1'd0;

assign nor_output_V_dest_V_1_sel = nor_output_V_dest_V_1_sel_rd;

assign nor_output_V_dest_V_1_vld_out = nor_output_V_dest_V_1_state[1'd0];

assign nor_output_V_id_V_1_ack_in = nor_output_V_id_V_1_state[1'd1];

assign nor_output_V_id_V_1_ack_out = nor_output_TREADY;

assign nor_output_V_id_V_1_data_out = 1'd0;

assign nor_output_V_id_V_1_sel = nor_output_V_id_V_1_sel_rd;

assign nor_output_V_id_V_1_vld_out = nor_output_V_id_V_1_state[1'd0];

assign nor_output_V_keep_V_1_ack_in = nor_output_V_keep_V_1_state[1'd1];

assign nor_output_V_keep_V_1_ack_out = nor_output_TREADY;

assign nor_output_V_keep_V_1_data_out = 4'd15;

assign nor_output_V_keep_V_1_sel = nor_output_V_keep_V_1_sel_rd;

assign nor_output_V_keep_V_1_vld_out = nor_output_V_keep_V_1_state[1'd0];

assign nor_output_V_last_V_1_ack_in = nor_output_V_last_V_1_state[1'd1];

assign nor_output_V_last_V_1_ack_out = nor_output_TREADY;

assign nor_output_V_last_V_1_load_A = (nor_output_V_last_V_1_state_cmp_full & ~nor_output_V_last_V_1_sel_wr);

assign nor_output_V_last_V_1_load_B = (nor_output_V_last_V_1_state_cmp_full & nor_output_V_last_V_1_sel_wr);

assign nor_output_V_last_V_1_sel = nor_output_V_last_V_1_sel_rd;

assign nor_output_V_last_V_1_state_cmp_full = ((nor_output_V_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign nor_output_V_last_V_1_vld_out = nor_output_V_last_V_1_state[1'd0];

assign nor_output_V_strb_V_1_ack_in = nor_output_V_strb_V_1_state[1'd1];

assign nor_output_V_strb_V_1_ack_out = nor_output_TREADY;

assign nor_output_V_strb_V_1_data_out = 4'd0;

assign nor_output_V_strb_V_1_sel = nor_output_V_strb_V_1_sel_rd;

assign nor_output_V_strb_V_1_vld_out = nor_output_V_strb_V_1_state[1'd0];

assign nor_output_V_user_V_1_ack_in = nor_output_V_user_V_1_state[1'd1];

assign nor_output_V_user_V_1_ack_out = nor_output_TREADY;

assign nor_output_V_user_V_1_load_A = (nor_output_V_user_V_1_state_cmp_full & ~nor_output_V_user_V_1_sel_wr);

assign nor_output_V_user_V_1_load_B = (nor_output_V_user_V_1_state_cmp_full & nor_output_V_user_V_1_sel_wr);

assign nor_output_V_user_V_1_sel = nor_output_V_user_V_1_sel_rd;

assign nor_output_V_user_V_1_state_cmp_full = ((nor_output_V_user_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign nor_output_V_user_V_1_vld_out = nor_output_V_user_V_1_state[1'd0];

assign r_V_fu_177_p2 = ($signed(9'd511) + $signed(cols_V_fu_173_p1));

assign rows_V_fu_169_p1 = rows[9:0];

assign tmp_data_V_fu_219_p1 = nor_mat_data_stream_s_dout;

endmodule //Mat2AXIvideo
