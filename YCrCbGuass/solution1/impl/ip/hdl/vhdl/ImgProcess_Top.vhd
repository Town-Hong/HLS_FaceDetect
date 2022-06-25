-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ImgProcess_Top is
port (
    input_r_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    input_r_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    input_r_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    input_r_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    input_r_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    input_r_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    input_r_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    output_r_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    output_r_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    output_r_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    output_r_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    output_r_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    output_r_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    output_r_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    nor_output_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    nor_output_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    nor_output_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    nor_output_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    nor_output_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    nor_output_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    nor_output_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    rows : IN STD_LOGIC_VECTOR (31 downto 0);
    cols : IN STD_LOGIC_VECTOR (31 downto 0);
    threshold : OUT STD_LOGIC_VECTOR (63 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    input_r_TVALID : IN STD_LOGIC;
    input_r_TREADY : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    threshold_ap_vld : OUT STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    output_r_TVALID : OUT STD_LOGIC;
    output_r_TREADY : IN STD_LOGIC;
    nor_output_TVALID : OUT STD_LOGIC;
    nor_output_TREADY : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of ImgProcess_Top is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "ImgProcess_Top,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=10.596000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=10,HLS_SYN_DSP=158,HLS_SYN_FF=32417,HLS_SYN_LUT=41391}";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_start : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_done : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_continue : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_idle : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_ready : STD_LOGIC;
    signal AXIvideo2Mat_U0_input_r_TREADY : STD_LOGIC;
    signal AXIvideo2Mat_U0_src_mat_data_stream_s_din : STD_LOGIC_VECTOR (7 downto 0);
    signal AXIvideo2Mat_U0_src_mat_data_stream_s_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_src_mat_data_stream_1_din : STD_LOGIC_VECTOR (7 downto 0);
    signal AXIvideo2Mat_U0_src_mat_data_stream_1_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_src_mat_data_stream_2_din : STD_LOGIC_VECTOR (7 downto 0);
    signal AXIvideo2Mat_U0_src_mat_data_stream_2_write : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_src_data_stream_0_V_read : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_src_data_stream_1_V_read : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_src_data_stream_2_V_read : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_res_data_stream_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal YCrCb_GUASSIAN_U0_res_data_stream_V_write : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_nor_data_stream_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal YCrCb_GUASSIAN_U0_nor_data_stream_V_write : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_threshold : STD_LOGIC_VECTOR (63 downto 0);
    signal YCrCb_GUASSIAN_U0_ap_start : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_ap_done : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_threshold_ap_vld : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_ap_ready : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_ap_idle : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_ap_continue : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal Mat2AXIvideo_1_U0_ap_start : STD_LOGIC;
    signal Mat2AXIvideo_1_U0_ap_done : STD_LOGIC;
    signal Mat2AXIvideo_1_U0_ap_continue : STD_LOGIC;
    signal Mat2AXIvideo_1_U0_ap_idle : STD_LOGIC;
    signal Mat2AXIvideo_1_U0_ap_ready : STD_LOGIC;
    signal Mat2AXIvideo_1_U0_dst_mat_data_stream_s_read : STD_LOGIC;
    signal Mat2AXIvideo_1_U0_output_r_TDATA : STD_LOGIC_VECTOR (31 downto 0);
    signal Mat2AXIvideo_1_U0_output_r_TVALID : STD_LOGIC;
    signal Mat2AXIvideo_1_U0_output_r_TKEEP : STD_LOGIC_VECTOR (3 downto 0);
    signal Mat2AXIvideo_1_U0_output_r_TSTRB : STD_LOGIC_VECTOR (3 downto 0);
    signal Mat2AXIvideo_1_U0_output_r_TUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_1_U0_output_r_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_1_U0_output_r_TID : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_1_U0_output_r_TDEST : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_ap_start : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_done : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_continue : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_idle : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_ready : STD_LOGIC;
    signal Mat2AXIvideo_U0_nor_mat_data_stream_s_read : STD_LOGIC;
    signal Mat2AXIvideo_U0_nor_output_TDATA : STD_LOGIC_VECTOR (31 downto 0);
    signal Mat2AXIvideo_U0_nor_output_TVALID : STD_LOGIC;
    signal Mat2AXIvideo_U0_nor_output_TKEEP : STD_LOGIC_VECTOR (3 downto 0);
    signal Mat2AXIvideo_U0_nor_output_TSTRB : STD_LOGIC_VECTOR (3 downto 0);
    signal Mat2AXIvideo_U0_nor_output_TUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_nor_output_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_nor_output_TID : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_nor_output_TDEST : STD_LOGIC_VECTOR (0 downto 0);
    signal src_mat_data_stream_s_full_n : STD_LOGIC;
    signal src_mat_data_stream_s_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal src_mat_data_stream_s_empty_n : STD_LOGIC;
    signal src_mat_data_stream_1_full_n : STD_LOGIC;
    signal src_mat_data_stream_1_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal src_mat_data_stream_1_empty_n : STD_LOGIC;
    signal src_mat_data_stream_2_full_n : STD_LOGIC;
    signal src_mat_data_stream_2_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal src_mat_data_stream_2_empty_n : STD_LOGIC;
    signal dst_mat_data_stream_s_full_n : STD_LOGIC;
    signal dst_mat_data_stream_s_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal dst_mat_data_stream_s_empty_n : STD_LOGIC;
    signal nor_mat_data_stream_s_full_n : STD_LOGIC;
    signal nor_mat_data_stream_s_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal nor_mat_data_stream_s_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal AXIvideo2Mat_U0_start_full_n : STD_LOGIC;
    signal AXIvideo2Mat_U0_start_write : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_start_full_n : STD_LOGIC;
    signal YCrCb_GUASSIAN_U0_start_write : STD_LOGIC;
    signal Mat2AXIvideo_1_U0_start_full_n : STD_LOGIC;
    signal Mat2AXIvideo_1_U0_start_write : STD_LOGIC;
    signal Mat2AXIvideo_U0_start_full_n : STD_LOGIC;
    signal Mat2AXIvideo_U0_start_write : STD_LOGIC;

    component AXIvideo2Mat IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        input_r_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        input_r_TVALID : IN STD_LOGIC;
        input_r_TREADY : OUT STD_LOGIC;
        input_r_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
        input_r_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
        input_r_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        input_r_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        input_r_TID : IN STD_LOGIC_VECTOR (0 downto 0);
        input_r_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
        rows : IN STD_LOGIC_VECTOR (31 downto 0);
        cols : IN STD_LOGIC_VECTOR (31 downto 0);
        src_mat_data_stream_s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        src_mat_data_stream_s_full_n : IN STD_LOGIC;
        src_mat_data_stream_s_write : OUT STD_LOGIC;
        src_mat_data_stream_1_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        src_mat_data_stream_1_full_n : IN STD_LOGIC;
        src_mat_data_stream_1_write : OUT STD_LOGIC;
        src_mat_data_stream_2_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        src_mat_data_stream_2_full_n : IN STD_LOGIC;
        src_mat_data_stream_2_write : OUT STD_LOGIC );
    end component;


    component YCrCb_GUASSIAN IS
    port (
        rows : IN STD_LOGIC_VECTOR (31 downto 0);
        cols : IN STD_LOGIC_VECTOR (31 downto 0);
        src_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        src_data_stream_0_V_empty_n : IN STD_LOGIC;
        src_data_stream_0_V_read : OUT STD_LOGIC;
        src_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        src_data_stream_1_V_empty_n : IN STD_LOGIC;
        src_data_stream_1_V_read : OUT STD_LOGIC;
        src_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        src_data_stream_2_V_empty_n : IN STD_LOGIC;
        src_data_stream_2_V_read : OUT STD_LOGIC;
        res_data_stream_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        res_data_stream_V_full_n : IN STD_LOGIC;
        res_data_stream_V_write : OUT STD_LOGIC;
        nor_data_stream_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        nor_data_stream_V_full_n : IN STD_LOGIC;
        nor_data_stream_V_write : OUT STD_LOGIC;
        threshold : OUT STD_LOGIC_VECTOR (63 downto 0);
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        rows_ap_vld : IN STD_LOGIC;
        cols_ap_vld : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        threshold_ap_vld : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component Mat2AXIvideo_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        rows : IN STD_LOGIC_VECTOR (31 downto 0);
        cols : IN STD_LOGIC_VECTOR (31 downto 0);
        dst_mat_data_stream_s_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        dst_mat_data_stream_s_empty_n : IN STD_LOGIC;
        dst_mat_data_stream_s_read : OUT STD_LOGIC;
        output_r_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
        output_r_TVALID : OUT STD_LOGIC;
        output_r_TREADY : IN STD_LOGIC;
        output_r_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
        output_r_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
        output_r_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        output_r_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        output_r_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
        output_r_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component Mat2AXIvideo IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        rows : IN STD_LOGIC_VECTOR (31 downto 0);
        cols : IN STD_LOGIC_VECTOR (31 downto 0);
        nor_mat_data_stream_s_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        nor_mat_data_stream_s_empty_n : IN STD_LOGIC;
        nor_mat_data_stream_s_read : OUT STD_LOGIC;
        nor_output_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
        nor_output_TVALID : OUT STD_LOGIC;
        nor_output_TREADY : IN STD_LOGIC;
        nor_output_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
        nor_output_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
        nor_output_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        nor_output_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        nor_output_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
        nor_output_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component fifo_w8_d1_A_x_x IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w32_d1_A_x IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    AXIvideo2Mat_U0 : component AXIvideo2Mat
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => AXIvideo2Mat_U0_ap_start,
        ap_done => AXIvideo2Mat_U0_ap_done,
        ap_continue => AXIvideo2Mat_U0_ap_continue,
        ap_idle => AXIvideo2Mat_U0_ap_idle,
        ap_ready => AXIvideo2Mat_U0_ap_ready,
        input_r_TDATA => input_r_TDATA,
        input_r_TVALID => input_r_TVALID,
        input_r_TREADY => AXIvideo2Mat_U0_input_r_TREADY,
        input_r_TKEEP => input_r_TKEEP,
        input_r_TSTRB => input_r_TSTRB,
        input_r_TUSER => input_r_TUSER,
        input_r_TLAST => input_r_TLAST,
        input_r_TID => input_r_TID,
        input_r_TDEST => input_r_TDEST,
        rows => rows,
        cols => cols,
        src_mat_data_stream_s_din => AXIvideo2Mat_U0_src_mat_data_stream_s_din,
        src_mat_data_stream_s_full_n => src_mat_data_stream_s_full_n,
        src_mat_data_stream_s_write => AXIvideo2Mat_U0_src_mat_data_stream_s_write,
        src_mat_data_stream_1_din => AXIvideo2Mat_U0_src_mat_data_stream_1_din,
        src_mat_data_stream_1_full_n => src_mat_data_stream_1_full_n,
        src_mat_data_stream_1_write => AXIvideo2Mat_U0_src_mat_data_stream_1_write,
        src_mat_data_stream_2_din => AXIvideo2Mat_U0_src_mat_data_stream_2_din,
        src_mat_data_stream_2_full_n => src_mat_data_stream_2_full_n,
        src_mat_data_stream_2_write => AXIvideo2Mat_U0_src_mat_data_stream_2_write);

    YCrCb_GUASSIAN_U0 : component YCrCb_GUASSIAN
    port map (
        rows => rows,
        cols => cols,
        src_data_stream_0_V_dout => src_mat_data_stream_s_dout,
        src_data_stream_0_V_empty_n => src_mat_data_stream_s_empty_n,
        src_data_stream_0_V_read => YCrCb_GUASSIAN_U0_src_data_stream_0_V_read,
        src_data_stream_1_V_dout => src_mat_data_stream_1_dout,
        src_data_stream_1_V_empty_n => src_mat_data_stream_1_empty_n,
        src_data_stream_1_V_read => YCrCb_GUASSIAN_U0_src_data_stream_1_V_read,
        src_data_stream_2_V_dout => src_mat_data_stream_2_dout,
        src_data_stream_2_V_empty_n => src_mat_data_stream_2_empty_n,
        src_data_stream_2_V_read => YCrCb_GUASSIAN_U0_src_data_stream_2_V_read,
        res_data_stream_V_din => YCrCb_GUASSIAN_U0_res_data_stream_V_din,
        res_data_stream_V_full_n => dst_mat_data_stream_s_full_n,
        res_data_stream_V_write => YCrCb_GUASSIAN_U0_res_data_stream_V_write,
        nor_data_stream_V_din => YCrCb_GUASSIAN_U0_nor_data_stream_V_din,
        nor_data_stream_V_full_n => nor_mat_data_stream_s_full_n,
        nor_data_stream_V_write => YCrCb_GUASSIAN_U0_nor_data_stream_V_write,
        threshold => YCrCb_GUASSIAN_U0_threshold,
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => YCrCb_GUASSIAN_U0_ap_start,
        rows_ap_vld => ap_const_logic_1,
        cols_ap_vld => ap_const_logic_1,
        ap_done => YCrCb_GUASSIAN_U0_ap_done,
        threshold_ap_vld => YCrCb_GUASSIAN_U0_threshold_ap_vld,
        ap_ready => YCrCb_GUASSIAN_U0_ap_ready,
        ap_idle => YCrCb_GUASSIAN_U0_ap_idle,
        ap_continue => YCrCb_GUASSIAN_U0_ap_continue);

    Mat2AXIvideo_1_U0 : component Mat2AXIvideo_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Mat2AXIvideo_1_U0_ap_start,
        ap_done => Mat2AXIvideo_1_U0_ap_done,
        ap_continue => Mat2AXIvideo_1_U0_ap_continue,
        ap_idle => Mat2AXIvideo_1_U0_ap_idle,
        ap_ready => Mat2AXIvideo_1_U0_ap_ready,
        rows => rows,
        cols => cols,
        dst_mat_data_stream_s_dout => dst_mat_data_stream_s_dout,
        dst_mat_data_stream_s_empty_n => dst_mat_data_stream_s_empty_n,
        dst_mat_data_stream_s_read => Mat2AXIvideo_1_U0_dst_mat_data_stream_s_read,
        output_r_TDATA => Mat2AXIvideo_1_U0_output_r_TDATA,
        output_r_TVALID => Mat2AXIvideo_1_U0_output_r_TVALID,
        output_r_TREADY => output_r_TREADY,
        output_r_TKEEP => Mat2AXIvideo_1_U0_output_r_TKEEP,
        output_r_TSTRB => Mat2AXIvideo_1_U0_output_r_TSTRB,
        output_r_TUSER => Mat2AXIvideo_1_U0_output_r_TUSER,
        output_r_TLAST => Mat2AXIvideo_1_U0_output_r_TLAST,
        output_r_TID => Mat2AXIvideo_1_U0_output_r_TID,
        output_r_TDEST => Mat2AXIvideo_1_U0_output_r_TDEST);

    Mat2AXIvideo_U0 : component Mat2AXIvideo
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Mat2AXIvideo_U0_ap_start,
        ap_done => Mat2AXIvideo_U0_ap_done,
        ap_continue => Mat2AXIvideo_U0_ap_continue,
        ap_idle => Mat2AXIvideo_U0_ap_idle,
        ap_ready => Mat2AXIvideo_U0_ap_ready,
        rows => rows,
        cols => cols,
        nor_mat_data_stream_s_dout => nor_mat_data_stream_s_dout,
        nor_mat_data_stream_s_empty_n => nor_mat_data_stream_s_empty_n,
        nor_mat_data_stream_s_read => Mat2AXIvideo_U0_nor_mat_data_stream_s_read,
        nor_output_TDATA => Mat2AXIvideo_U0_nor_output_TDATA,
        nor_output_TVALID => Mat2AXIvideo_U0_nor_output_TVALID,
        nor_output_TREADY => nor_output_TREADY,
        nor_output_TKEEP => Mat2AXIvideo_U0_nor_output_TKEEP,
        nor_output_TSTRB => Mat2AXIvideo_U0_nor_output_TSTRB,
        nor_output_TUSER => Mat2AXIvideo_U0_nor_output_TUSER,
        nor_output_TLAST => Mat2AXIvideo_U0_nor_output_TLAST,
        nor_output_TID => Mat2AXIvideo_U0_nor_output_TID,
        nor_output_TDEST => Mat2AXIvideo_U0_nor_output_TDEST);

    src_mat_data_stream_s_U : component fifo_w8_d1_A_x_x
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_src_mat_data_stream_s_din,
        if_full_n => src_mat_data_stream_s_full_n,
        if_write => AXIvideo2Mat_U0_src_mat_data_stream_s_write,
        if_dout => src_mat_data_stream_s_dout,
        if_empty_n => src_mat_data_stream_s_empty_n,
        if_read => YCrCb_GUASSIAN_U0_src_data_stream_0_V_read);

    src_mat_data_stream_1_U : component fifo_w8_d1_A_x_x
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_src_mat_data_stream_1_din,
        if_full_n => src_mat_data_stream_1_full_n,
        if_write => AXIvideo2Mat_U0_src_mat_data_stream_1_write,
        if_dout => src_mat_data_stream_1_dout,
        if_empty_n => src_mat_data_stream_1_empty_n,
        if_read => YCrCb_GUASSIAN_U0_src_data_stream_1_V_read);

    src_mat_data_stream_2_U : component fifo_w8_d1_A_x_x
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_src_mat_data_stream_2_din,
        if_full_n => src_mat_data_stream_2_full_n,
        if_write => AXIvideo2Mat_U0_src_mat_data_stream_2_write,
        if_dout => src_mat_data_stream_2_dout,
        if_empty_n => src_mat_data_stream_2_empty_n,
        if_read => YCrCb_GUASSIAN_U0_src_data_stream_2_V_read);

    dst_mat_data_stream_s_U : component fifo_w8_d1_A_x_x
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => YCrCb_GUASSIAN_U0_res_data_stream_V_din,
        if_full_n => dst_mat_data_stream_s_full_n,
        if_write => YCrCb_GUASSIAN_U0_res_data_stream_V_write,
        if_dout => dst_mat_data_stream_s_dout,
        if_empty_n => dst_mat_data_stream_s_empty_n,
        if_read => Mat2AXIvideo_1_U0_dst_mat_data_stream_s_read);

    nor_mat_data_stream_s_U : component fifo_w32_d1_A_x
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => YCrCb_GUASSIAN_U0_nor_data_stream_V_din,
        if_full_n => nor_mat_data_stream_s_full_n,
        if_write => YCrCb_GUASSIAN_U0_nor_data_stream_V_write,
        if_dout => nor_mat_data_stream_s_dout,
        if_empty_n => nor_mat_data_stream_s_empty_n,
        if_read => Mat2AXIvideo_U0_nor_mat_data_stream_s_read);




    AXIvideo2Mat_U0_ap_continue <= ap_const_logic_1;
    AXIvideo2Mat_U0_ap_start <= (ap_start);
    AXIvideo2Mat_U0_start_full_n <= ap_const_logic_1;
    AXIvideo2Mat_U0_start_write <= ap_const_logic_0;
    Mat2AXIvideo_1_U0_ap_continue <= ap_sync_done;
    Mat2AXIvideo_1_U0_ap_start <= ap_start;
    Mat2AXIvideo_1_U0_start_full_n <= ap_const_logic_1;
    Mat2AXIvideo_1_U0_start_write <= ap_const_logic_0;
    Mat2AXIvideo_U0_ap_continue <= ap_sync_done;
    Mat2AXIvideo_U0_ap_start <= ap_start;
    Mat2AXIvideo_U0_start_full_n <= ap_const_logic_1;
    Mat2AXIvideo_U0_start_write <= ap_const_logic_0;
    YCrCb_GUASSIAN_U0_ap_continue <= ap_sync_done;
    YCrCb_GUASSIAN_U0_ap_start <= ap_start;
    YCrCb_GUASSIAN_U0_start_full_n <= ap_const_logic_1;
    YCrCb_GUASSIAN_U0_start_write <= ap_const_logic_0;
    ap_done <= ap_sync_done;
    ap_idle <= (YCrCb_GUASSIAN_U0_ap_idle and Mat2AXIvideo_U0_ap_idle and Mat2AXIvideo_1_U0_ap_idle and AXIvideo2Mat_U0_ap_idle);
    ap_ready <= AXIvideo2Mat_U0_ap_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_continue <= ap_sync_done;
    ap_sync_done <= (Mat2AXIvideo_U0_ap_done and Mat2AXIvideo_1_U0_ap_done);
    ap_sync_ready <= AXIvideo2Mat_U0_ap_ready;
    input_r_TREADY <= AXIvideo2Mat_U0_input_r_TREADY;
    nor_output_TDATA <= Mat2AXIvideo_U0_nor_output_TDATA;
    nor_output_TDEST <= Mat2AXIvideo_U0_nor_output_TDEST;
    nor_output_TID <= Mat2AXIvideo_U0_nor_output_TID;
    nor_output_TKEEP <= Mat2AXIvideo_U0_nor_output_TKEEP;
    nor_output_TLAST <= Mat2AXIvideo_U0_nor_output_TLAST;
    nor_output_TSTRB <= Mat2AXIvideo_U0_nor_output_TSTRB;
    nor_output_TUSER <= Mat2AXIvideo_U0_nor_output_TUSER;
    nor_output_TVALID <= Mat2AXIvideo_U0_nor_output_TVALID;
    output_r_TDATA <= Mat2AXIvideo_1_U0_output_r_TDATA;
    output_r_TDEST <= Mat2AXIvideo_1_U0_output_r_TDEST;
    output_r_TID <= Mat2AXIvideo_1_U0_output_r_TID;
    output_r_TKEEP <= Mat2AXIvideo_1_U0_output_r_TKEEP;
    output_r_TLAST <= Mat2AXIvideo_1_U0_output_r_TLAST;
    output_r_TSTRB <= Mat2AXIvideo_1_U0_output_r_TSTRB;
    output_r_TUSER <= Mat2AXIvideo_1_U0_output_r_TUSER;
    output_r_TVALID <= Mat2AXIvideo_1_U0_output_r_TVALID;
    threshold <= YCrCb_GUASSIAN_U0_threshold;
    threshold_ap_vld <= YCrCb_GUASSIAN_U0_threshold_ap_vld;
end behav;