// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="ImgProcess_Top,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=10.596000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=10,HLS_SYN_DSP=158,HLS_SYN_FF=32417,HLS_SYN_LUT=41391}" *)

module ImgProcess_Top (
        input_r_TDATA,
        input_r_TKEEP,
        input_r_TSTRB,
        input_r_TUSER,
        input_r_TLAST,
        input_r_TID,
        input_r_TDEST,
        output_r_TDATA,
        output_r_TKEEP,
        output_r_TSTRB,
        output_r_TUSER,
        output_r_TLAST,
        output_r_TID,
        output_r_TDEST,
        nor_output_TDATA,
        nor_output_TKEEP,
        nor_output_TSTRB,
        nor_output_TUSER,
        nor_output_TLAST,
        nor_output_TID,
        nor_output_TDEST,
        rows,
        cols,
        threshold,
        ap_clk,
        ap_rst_n,
        input_r_TVALID,
        input_r_TREADY,
        ap_start,
        threshold_ap_vld,
        ap_done,
        output_r_TVALID,
        output_r_TREADY,
        nor_output_TVALID,
        nor_output_TREADY,
        ap_ready,
        ap_idle
);


input  [31:0] input_r_TDATA;
input  [3:0] input_r_TKEEP;
input  [3:0] input_r_TSTRB;
input  [0:0] input_r_TUSER;
input  [0:0] input_r_TLAST;
input  [0:0] input_r_TID;
input  [0:0] input_r_TDEST;
output  [31:0] output_r_TDATA;
output  [3:0] output_r_TKEEP;
output  [3:0] output_r_TSTRB;
output  [0:0] output_r_TUSER;
output  [0:0] output_r_TLAST;
output  [0:0] output_r_TID;
output  [0:0] output_r_TDEST;
output  [31:0] nor_output_TDATA;
output  [3:0] nor_output_TKEEP;
output  [3:0] nor_output_TSTRB;
output  [0:0] nor_output_TUSER;
output  [0:0] nor_output_TLAST;
output  [0:0] nor_output_TID;
output  [0:0] nor_output_TDEST;
input  [31:0] rows;
input  [31:0] cols;
output  [63:0] threshold;
input   ap_clk;
input   ap_rst_n;
input   input_r_TVALID;
output   input_r_TREADY;
input   ap_start;
output   threshold_ap_vld;
output   ap_done;
output   output_r_TVALID;
input   output_r_TREADY;
output   nor_output_TVALID;
input   nor_output_TREADY;
output   ap_ready;
output   ap_idle;

reg    ap_rst_n_inv;
wire    AXIvideo2Mat_U0_ap_start;
wire    AXIvideo2Mat_U0_ap_done;
wire    AXIvideo2Mat_U0_ap_continue;
wire    AXIvideo2Mat_U0_ap_idle;
wire    AXIvideo2Mat_U0_ap_ready;
wire    AXIvideo2Mat_U0_input_r_TREADY;
wire   [7:0] AXIvideo2Mat_U0_src_mat_data_stream_s_din;
wire    AXIvideo2Mat_U0_src_mat_data_stream_s_write;
wire   [7:0] AXIvideo2Mat_U0_src_mat_data_stream_1_din;
wire    AXIvideo2Mat_U0_src_mat_data_stream_1_write;
wire   [7:0] AXIvideo2Mat_U0_src_mat_data_stream_2_din;
wire    AXIvideo2Mat_U0_src_mat_data_stream_2_write;
wire    YCrCb_GUASSIAN_U0_src_data_stream_0_V_read;
wire    YCrCb_GUASSIAN_U0_src_data_stream_1_V_read;
wire    YCrCb_GUASSIAN_U0_src_data_stream_2_V_read;
wire   [7:0] YCrCb_GUASSIAN_U0_res_data_stream_V_din;
wire    YCrCb_GUASSIAN_U0_res_data_stream_V_write;
wire   [31:0] YCrCb_GUASSIAN_U0_nor_data_stream_V_din;
wire    YCrCb_GUASSIAN_U0_nor_data_stream_V_write;
wire   [63:0] YCrCb_GUASSIAN_U0_threshold;
wire    YCrCb_GUASSIAN_U0_ap_start;
wire    YCrCb_GUASSIAN_U0_ap_done;
wire    YCrCb_GUASSIAN_U0_threshold_ap_vld;
wire    YCrCb_GUASSIAN_U0_ap_ready;
wire    YCrCb_GUASSIAN_U0_ap_idle;
wire    YCrCb_GUASSIAN_U0_ap_continue;
wire    ap_sync_continue;
wire    Mat2AXIvideo_1_U0_ap_start;
wire    Mat2AXIvideo_1_U0_ap_done;
wire    Mat2AXIvideo_1_U0_ap_continue;
wire    Mat2AXIvideo_1_U0_ap_idle;
wire    Mat2AXIvideo_1_U0_ap_ready;
wire    Mat2AXIvideo_1_U0_dst_mat_data_stream_s_read;
wire   [31:0] Mat2AXIvideo_1_U0_output_r_TDATA;
wire    Mat2AXIvideo_1_U0_output_r_TVALID;
wire   [3:0] Mat2AXIvideo_1_U0_output_r_TKEEP;
wire   [3:0] Mat2AXIvideo_1_U0_output_r_TSTRB;
wire   [0:0] Mat2AXIvideo_1_U0_output_r_TUSER;
wire   [0:0] Mat2AXIvideo_1_U0_output_r_TLAST;
wire   [0:0] Mat2AXIvideo_1_U0_output_r_TID;
wire   [0:0] Mat2AXIvideo_1_U0_output_r_TDEST;
wire    Mat2AXIvideo_U0_ap_start;
wire    Mat2AXIvideo_U0_ap_done;
wire    Mat2AXIvideo_U0_ap_continue;
wire    Mat2AXIvideo_U0_ap_idle;
wire    Mat2AXIvideo_U0_ap_ready;
wire    Mat2AXIvideo_U0_nor_mat_data_stream_s_read;
wire   [31:0] Mat2AXIvideo_U0_nor_output_TDATA;
wire    Mat2AXIvideo_U0_nor_output_TVALID;
wire   [3:0] Mat2AXIvideo_U0_nor_output_TKEEP;
wire   [3:0] Mat2AXIvideo_U0_nor_output_TSTRB;
wire   [0:0] Mat2AXIvideo_U0_nor_output_TUSER;
wire   [0:0] Mat2AXIvideo_U0_nor_output_TLAST;
wire   [0:0] Mat2AXIvideo_U0_nor_output_TID;
wire   [0:0] Mat2AXIvideo_U0_nor_output_TDEST;
wire    src_mat_data_stream_s_full_n;
wire   [7:0] src_mat_data_stream_s_dout;
wire    src_mat_data_stream_s_empty_n;
wire    src_mat_data_stream_1_full_n;
wire   [7:0] src_mat_data_stream_1_dout;
wire    src_mat_data_stream_1_empty_n;
wire    src_mat_data_stream_2_full_n;
wire   [7:0] src_mat_data_stream_2_dout;
wire    src_mat_data_stream_2_empty_n;
wire    dst_mat_data_stream_s_full_n;
wire   [7:0] dst_mat_data_stream_s_dout;
wire    dst_mat_data_stream_s_empty_n;
wire    nor_mat_data_stream_s_full_n;
wire   [31:0] nor_mat_data_stream_s_dout;
wire    nor_mat_data_stream_s_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    AXIvideo2Mat_U0_start_full_n;
wire    AXIvideo2Mat_U0_start_write;
wire    YCrCb_GUASSIAN_U0_start_full_n;
wire    YCrCb_GUASSIAN_U0_start_write;
wire    Mat2AXIvideo_1_U0_start_full_n;
wire    Mat2AXIvideo_1_U0_start_write;
wire    Mat2AXIvideo_U0_start_full_n;
wire    Mat2AXIvideo_U0_start_write;

AXIvideo2Mat AXIvideo2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2Mat_U0_ap_start),
    .ap_done(AXIvideo2Mat_U0_ap_done),
    .ap_continue(AXIvideo2Mat_U0_ap_continue),
    .ap_idle(AXIvideo2Mat_U0_ap_idle),
    .ap_ready(AXIvideo2Mat_U0_ap_ready),
    .input_r_TDATA(input_r_TDATA),
    .input_r_TVALID(input_r_TVALID),
    .input_r_TREADY(AXIvideo2Mat_U0_input_r_TREADY),
    .input_r_TKEEP(input_r_TKEEP),
    .input_r_TSTRB(input_r_TSTRB),
    .input_r_TUSER(input_r_TUSER),
    .input_r_TLAST(input_r_TLAST),
    .input_r_TID(input_r_TID),
    .input_r_TDEST(input_r_TDEST),
    .rows(rows),
    .cols(cols),
    .src_mat_data_stream_s_din(AXIvideo2Mat_U0_src_mat_data_stream_s_din),
    .src_mat_data_stream_s_full_n(src_mat_data_stream_s_full_n),
    .src_mat_data_stream_s_write(AXIvideo2Mat_U0_src_mat_data_stream_s_write),
    .src_mat_data_stream_1_din(AXIvideo2Mat_U0_src_mat_data_stream_1_din),
    .src_mat_data_stream_1_full_n(src_mat_data_stream_1_full_n),
    .src_mat_data_stream_1_write(AXIvideo2Mat_U0_src_mat_data_stream_1_write),
    .src_mat_data_stream_2_din(AXIvideo2Mat_U0_src_mat_data_stream_2_din),
    .src_mat_data_stream_2_full_n(src_mat_data_stream_2_full_n),
    .src_mat_data_stream_2_write(AXIvideo2Mat_U0_src_mat_data_stream_2_write)
);

YCrCb_GUASSIAN YCrCb_GUASSIAN_U0(
    .rows(rows),
    .cols(cols),
    .src_data_stream_0_V_dout(src_mat_data_stream_s_dout),
    .src_data_stream_0_V_empty_n(src_mat_data_stream_s_empty_n),
    .src_data_stream_0_V_read(YCrCb_GUASSIAN_U0_src_data_stream_0_V_read),
    .src_data_stream_1_V_dout(src_mat_data_stream_1_dout),
    .src_data_stream_1_V_empty_n(src_mat_data_stream_1_empty_n),
    .src_data_stream_1_V_read(YCrCb_GUASSIAN_U0_src_data_stream_1_V_read),
    .src_data_stream_2_V_dout(src_mat_data_stream_2_dout),
    .src_data_stream_2_V_empty_n(src_mat_data_stream_2_empty_n),
    .src_data_stream_2_V_read(YCrCb_GUASSIAN_U0_src_data_stream_2_V_read),
    .res_data_stream_V_din(YCrCb_GUASSIAN_U0_res_data_stream_V_din),
    .res_data_stream_V_full_n(dst_mat_data_stream_s_full_n),
    .res_data_stream_V_write(YCrCb_GUASSIAN_U0_res_data_stream_V_write),
    .nor_data_stream_V_din(YCrCb_GUASSIAN_U0_nor_data_stream_V_din),
    .nor_data_stream_V_full_n(nor_mat_data_stream_s_full_n),
    .nor_data_stream_V_write(YCrCb_GUASSIAN_U0_nor_data_stream_V_write),
    .threshold(YCrCb_GUASSIAN_U0_threshold),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(YCrCb_GUASSIAN_U0_ap_start),
    .rows_ap_vld(1'b1),
    .cols_ap_vld(1'b1),
    .ap_done(YCrCb_GUASSIAN_U0_ap_done),
    .threshold_ap_vld(YCrCb_GUASSIAN_U0_threshold_ap_vld),
    .ap_ready(YCrCb_GUASSIAN_U0_ap_ready),
    .ap_idle(YCrCb_GUASSIAN_U0_ap_idle),
    .ap_continue(YCrCb_GUASSIAN_U0_ap_continue)
);

Mat2AXIvideo_1 Mat2AXIvideo_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Mat2AXIvideo_1_U0_ap_start),
    .ap_done(Mat2AXIvideo_1_U0_ap_done),
    .ap_continue(Mat2AXIvideo_1_U0_ap_continue),
    .ap_idle(Mat2AXIvideo_1_U0_ap_idle),
    .ap_ready(Mat2AXIvideo_1_U0_ap_ready),
    .rows(rows),
    .cols(cols),
    .dst_mat_data_stream_s_dout(dst_mat_data_stream_s_dout),
    .dst_mat_data_stream_s_empty_n(dst_mat_data_stream_s_empty_n),
    .dst_mat_data_stream_s_read(Mat2AXIvideo_1_U0_dst_mat_data_stream_s_read),
    .output_r_TDATA(Mat2AXIvideo_1_U0_output_r_TDATA),
    .output_r_TVALID(Mat2AXIvideo_1_U0_output_r_TVALID),
    .output_r_TREADY(output_r_TREADY),
    .output_r_TKEEP(Mat2AXIvideo_1_U0_output_r_TKEEP),
    .output_r_TSTRB(Mat2AXIvideo_1_U0_output_r_TSTRB),
    .output_r_TUSER(Mat2AXIvideo_1_U0_output_r_TUSER),
    .output_r_TLAST(Mat2AXIvideo_1_U0_output_r_TLAST),
    .output_r_TID(Mat2AXIvideo_1_U0_output_r_TID),
    .output_r_TDEST(Mat2AXIvideo_1_U0_output_r_TDEST)
);

Mat2AXIvideo Mat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Mat2AXIvideo_U0_ap_start),
    .ap_done(Mat2AXIvideo_U0_ap_done),
    .ap_continue(Mat2AXIvideo_U0_ap_continue),
    .ap_idle(Mat2AXIvideo_U0_ap_idle),
    .ap_ready(Mat2AXIvideo_U0_ap_ready),
    .rows(rows),
    .cols(cols),
    .nor_mat_data_stream_s_dout(nor_mat_data_stream_s_dout),
    .nor_mat_data_stream_s_empty_n(nor_mat_data_stream_s_empty_n),
    .nor_mat_data_stream_s_read(Mat2AXIvideo_U0_nor_mat_data_stream_s_read),
    .nor_output_TDATA(Mat2AXIvideo_U0_nor_output_TDATA),
    .nor_output_TVALID(Mat2AXIvideo_U0_nor_output_TVALID),
    .nor_output_TREADY(nor_output_TREADY),
    .nor_output_TKEEP(Mat2AXIvideo_U0_nor_output_TKEEP),
    .nor_output_TSTRB(Mat2AXIvideo_U0_nor_output_TSTRB),
    .nor_output_TUSER(Mat2AXIvideo_U0_nor_output_TUSER),
    .nor_output_TLAST(Mat2AXIvideo_U0_nor_output_TLAST),
    .nor_output_TID(Mat2AXIvideo_U0_nor_output_TID),
    .nor_output_TDEST(Mat2AXIvideo_U0_nor_output_TDEST)
);

fifo_w8_d1_A_x_x src_mat_data_stream_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_src_mat_data_stream_s_din),
    .if_full_n(src_mat_data_stream_s_full_n),
    .if_write(AXIvideo2Mat_U0_src_mat_data_stream_s_write),
    .if_dout(src_mat_data_stream_s_dout),
    .if_empty_n(src_mat_data_stream_s_empty_n),
    .if_read(YCrCb_GUASSIAN_U0_src_data_stream_0_V_read)
);

fifo_w8_d1_A_x_x src_mat_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_src_mat_data_stream_1_din),
    .if_full_n(src_mat_data_stream_1_full_n),
    .if_write(AXIvideo2Mat_U0_src_mat_data_stream_1_write),
    .if_dout(src_mat_data_stream_1_dout),
    .if_empty_n(src_mat_data_stream_1_empty_n),
    .if_read(YCrCb_GUASSIAN_U0_src_data_stream_1_V_read)
);

fifo_w8_d1_A_x_x src_mat_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_src_mat_data_stream_2_din),
    .if_full_n(src_mat_data_stream_2_full_n),
    .if_write(AXIvideo2Mat_U0_src_mat_data_stream_2_write),
    .if_dout(src_mat_data_stream_2_dout),
    .if_empty_n(src_mat_data_stream_2_empty_n),
    .if_read(YCrCb_GUASSIAN_U0_src_data_stream_2_V_read)
);

fifo_w8_d1_A_x_x dst_mat_data_stream_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(YCrCb_GUASSIAN_U0_res_data_stream_V_din),
    .if_full_n(dst_mat_data_stream_s_full_n),
    .if_write(YCrCb_GUASSIAN_U0_res_data_stream_V_write),
    .if_dout(dst_mat_data_stream_s_dout),
    .if_empty_n(dst_mat_data_stream_s_empty_n),
    .if_read(Mat2AXIvideo_1_U0_dst_mat_data_stream_s_read)
);

fifo_w32_d1_A_x nor_mat_data_stream_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(YCrCb_GUASSIAN_U0_nor_data_stream_V_din),
    .if_full_n(nor_mat_data_stream_s_full_n),
    .if_write(YCrCb_GUASSIAN_U0_nor_data_stream_V_write),
    .if_dout(nor_mat_data_stream_s_dout),
    .if_empty_n(nor_mat_data_stream_s_empty_n),
    .if_read(Mat2AXIvideo_U0_nor_mat_data_stream_s_read)
);

assign AXIvideo2Mat_U0_ap_continue = 1'b1;

assign AXIvideo2Mat_U0_ap_start = ap_start;

assign AXIvideo2Mat_U0_start_full_n = 1'b1;

assign AXIvideo2Mat_U0_start_write = 1'b0;

assign Mat2AXIvideo_1_U0_ap_continue = ap_sync_done;

assign Mat2AXIvideo_1_U0_ap_start = ap_start;

assign Mat2AXIvideo_1_U0_start_full_n = 1'b1;

assign Mat2AXIvideo_1_U0_start_write = 1'b0;

assign Mat2AXIvideo_U0_ap_continue = ap_sync_done;

assign Mat2AXIvideo_U0_ap_start = ap_start;

assign Mat2AXIvideo_U0_start_full_n = 1'b1;

assign Mat2AXIvideo_U0_start_write = 1'b0;

assign YCrCb_GUASSIAN_U0_ap_continue = ap_sync_done;

assign YCrCb_GUASSIAN_U0_ap_start = ap_start;

assign YCrCb_GUASSIAN_U0_start_full_n = 1'b1;

assign YCrCb_GUASSIAN_U0_start_write = 1'b0;

assign ap_done = ap_sync_done;

assign ap_idle = (YCrCb_GUASSIAN_U0_ap_idle & Mat2AXIvideo_U0_ap_idle & Mat2AXIvideo_1_U0_ap_idle & AXIvideo2Mat_U0_ap_idle);

assign ap_ready = AXIvideo2Mat_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = ap_sync_done;

assign ap_sync_done = (Mat2AXIvideo_U0_ap_done & Mat2AXIvideo_1_U0_ap_done);

assign ap_sync_ready = AXIvideo2Mat_U0_ap_ready;

assign input_r_TREADY = AXIvideo2Mat_U0_input_r_TREADY;

assign nor_output_TDATA = Mat2AXIvideo_U0_nor_output_TDATA;

assign nor_output_TDEST = Mat2AXIvideo_U0_nor_output_TDEST;

assign nor_output_TID = Mat2AXIvideo_U0_nor_output_TID;

assign nor_output_TKEEP = Mat2AXIvideo_U0_nor_output_TKEEP;

assign nor_output_TLAST = Mat2AXIvideo_U0_nor_output_TLAST;

assign nor_output_TSTRB = Mat2AXIvideo_U0_nor_output_TSTRB;

assign nor_output_TUSER = Mat2AXIvideo_U0_nor_output_TUSER;

assign nor_output_TVALID = Mat2AXIvideo_U0_nor_output_TVALID;

assign output_r_TDATA = Mat2AXIvideo_1_U0_output_r_TDATA;

assign output_r_TDEST = Mat2AXIvideo_1_U0_output_r_TDEST;

assign output_r_TID = Mat2AXIvideo_1_U0_output_r_TID;

assign output_r_TKEEP = Mat2AXIvideo_1_U0_output_r_TKEEP;

assign output_r_TLAST = Mat2AXIvideo_1_U0_output_r_TLAST;

assign output_r_TSTRB = Mat2AXIvideo_1_U0_output_r_TSTRB;

assign output_r_TUSER = Mat2AXIvideo_1_U0_output_r_TUSER;

assign output_r_TVALID = Mat2AXIvideo_1_U0_output_r_TVALID;

assign threshold = YCrCb_GUASSIAN_U0_threshold;

assign threshold_ap_vld = YCrCb_GUASSIAN_U0_threshold_ap_vld;

endmodule //ImgProcess_Top
