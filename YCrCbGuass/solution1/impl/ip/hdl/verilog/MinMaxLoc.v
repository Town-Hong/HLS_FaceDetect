// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module MinMaxLoc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_data_stream_V_dout,
        src_data_stream_V_empty_n,
        src_data_stream_V_read,
        min_val_out_din,
        min_val_out_full_n,
        min_val_out_write,
        max_val_out_din,
        max_val_out_full_n,
        max_val_out_write
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_pp0_stage0 = 5'd4;
parameter    ap_ST_fsm_state6 = 5'd8;
parameter    ap_ST_fsm_state7 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] src_data_stream_V_dout;
input   src_data_stream_V_empty_n;
output   src_data_stream_V_read;
output  [63:0] min_val_out_din;
input   min_val_out_full_n;
output   min_val_out_write;
output  [63:0] max_val_out_din;
input   max_val_out_full_n;
output   max_val_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_data_stream_V_read;
reg min_val_out_write;
reg max_val_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    src_data_stream_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_i_i_reg_362;
reg    min_val_out_blk_n;
wire    ap_CS_fsm_state7;
reg    max_val_out_blk_n;
reg   [8:0] t_V_10_reg_109;
wire   [0:0] exitcond139_i_i_fu_144_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] i_V_fu_150_p2;
reg   [9:0] i_V_reg_347;
wire   [63:0] min_val_dc_fu_120_p1;
reg   [63:0] min_val_dc_reg_352;
wire   [63:0] max_val_dc_fu_123_p1;
reg   [63:0] max_val_dc_reg_357;
wire   [0:0] exitcond_i_i_fu_156_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_reg_pp0_iter1_exitcond_i_i_reg_362;
wire   [8:0] j_V_fu_162_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [31:0] tmp_43_reg_371;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter2;
reg   [9:0] t_V_reg_98;
reg    ap_block_state1;
wire    ap_CS_fsm_state6;
reg    ap_block_state7;
reg   [31:0] v_assign_1_fu_70;
wire   [31:0] p_max_val_4_i_i_fu_311_p3;
reg   [31:0] v_assign_fu_74;
wire   [31:0] p_min_val_4_i_i_fu_259_p3;
wire   [31:0] t_V_5_fu_168_p1;
wire   [31:0] t_V_9_fu_180_p1;
wire   [31:0] t_V_8_fu_192_p1;
wire   [0:0] p_Result_2_fu_172_p3;
wire   [0:0] p_Result_s_fu_195_p3;
wire   [30:0] tmp_fu_209_p1;
wire   [30:0] tmp_41_fu_221_p1;
wire   [31:0] p_Result_9_fu_213_p3;
wire   [31:0] p_Result_10_fu_225_p3;
wire   [0:0] tmp_38_i_fu_233_p2;
wire   [0:0] tmp_41_i_fu_246_p2;
wire   [0:0] brmerge_demorgan_i_fu_203_p2;
wire   [31:0] s_val_0_i_f_assign_s_fu_239_p3;
wire   [31:0] s_val_0_i_f_assign_1_fu_252_p3;
wire   [0:0] p_Result_7_fu_184_p3;
wire   [30:0] tmp_42_fu_273_p1;
wire   [31:0] p_Result_11_fu_277_p3;
wire   [0:0] tmp_44_i_fu_285_p2;
wire   [0:0] tmp_47_i_fu_298_p2;
wire   [0:0] brmerge35_demorgan_i_fu_267_p2;
wire   [31:0] s_val_0_i_f_assign_2_fu_291_p3;
wire   [31:0] s_val_0_i_f_assign_3_fu_304_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

ImgProcess_Top_fpkbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
ImgProcess_Top_fpkbM_U69(
    .din0(v_assign_fu_74),
    .dout(min_val_dc_fu_120_p1)
);

ImgProcess_Top_fpkbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
ImgProcess_Top_fpkbM_U70(
    .din0(v_assign_1_fu_70),
    .dout(max_val_dc_fu_123_p1)
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
        end else if ((~((max_val_out_full_n == 1'b0) | (min_val_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((exitcond139_i_i_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
        end else if (((exitcond139_i_i_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_i_fu_156_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_V_10_reg_109 <= j_V_fu_162_p2;
    end else if (((exitcond139_i_i_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_10_reg_109 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_V_reg_98 <= i_V_reg_347;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_98 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter1_exitcond_i_i_reg_362 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v_assign_1_fu_70 <= p_max_val_4_i_i_fu_311_p3;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        v_assign_1_fu_70 <= 32'd3472883712;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter1_exitcond_i_i_reg_362 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v_assign_fu_74 <= p_min_val_4_i_i_fu_259_p3;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        v_assign_fu_74 <= 32'd1325400064;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_reg_pp0_iter1_exitcond_i_i_reg_362 <= exitcond_i_i_reg_362;
        exitcond_i_i_reg_362 <= exitcond_i_i_fu_156_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_reg_347 <= i_V_fu_150_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond139_i_i_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        max_val_dc_reg_357 <= max_val_dc_fu_123_p1;
        min_val_dc_reg_352 <= min_val_dc_fu_120_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_i_reg_362 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_43_reg_371 <= src_data_stream_V_dout;
    end
end

always @ (*) begin
    if ((exitcond_i_i_fu_156_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((~((max_val_out_full_n == 1'b0) | (min_val_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((max_val_out_full_n == 1'b0) | (min_val_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        max_val_out_blk_n = max_val_out_full_n;
    end else begin
        max_val_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((max_val_out_full_n == 1'b0) | (min_val_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
        max_val_out_write = 1'b1;
    end else begin
        max_val_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        min_val_out_blk_n = min_val_out_full_n;
    end else begin
        min_val_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((max_val_out_full_n == 1'b0) | (min_val_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
        min_val_out_write = 1'b1;
    end else begin
        min_val_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_362 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_data_stream_V_blk_n = src_data_stream_V_empty_n;
    end else begin
        src_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_i_reg_362 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_data_stream_V_read = 1'b1;
    end else begin
        src_data_stream_V_read = 1'b0;
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
            if (((exitcond139_i_i_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_i_i_fu_156_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((exitcond_i_i_fu_156_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state7 : begin
            if ((~((max_val_out_full_n == 1'b0) | (min_val_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
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

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((exitcond_i_i_reg_362 == 1'd0) & (src_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((exitcond_i_i_reg_362 == 1'd0) & (src_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((exitcond_i_i_reg_362 == 1'd0) & (src_data_stream_V_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state7 = ((max_val_out_full_n == 1'b0) | (min_val_out_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign brmerge35_demorgan_i_fu_267_p2 = (p_Result_s_fu_195_p3 & p_Result_7_fu_184_p3);

assign brmerge_demorgan_i_fu_203_p2 = (p_Result_s_fu_195_p3 & p_Result_2_fu_172_p3);

assign exitcond139_i_i_fu_144_p2 = ((t_V_reg_98 == 10'd720) ? 1'b1 : 1'b0);

assign exitcond_i_i_fu_156_p2 = ((t_V_10_reg_109 == 9'd480) ? 1'b1 : 1'b0);

assign i_V_fu_150_p2 = (t_V_reg_98 + 10'd1);

assign j_V_fu_162_p2 = (t_V_10_reg_109 + 9'd1);

assign max_val_out_din = max_val_dc_reg_357;

assign min_val_out_din = min_val_dc_reg_352;

assign p_Result_10_fu_225_p3 = {{1'd1}, {tmp_41_fu_221_p1}};

assign p_Result_11_fu_277_p3 = {{1'd1}, {tmp_42_fu_273_p1}};

assign p_Result_2_fu_172_p3 = t_V_5_fu_168_p1[32'd31];

assign p_Result_7_fu_184_p3 = t_V_9_fu_180_p1[32'd31];

assign p_Result_9_fu_213_p3 = {{1'd1}, {tmp_fu_209_p1}};

assign p_Result_s_fu_195_p3 = t_V_8_fu_192_p1[32'd31];

assign p_max_val_4_i_i_fu_311_p3 = ((brmerge35_demorgan_i_fu_267_p2[0:0] === 1'b1) ? s_val_0_i_f_assign_2_fu_291_p3 : s_val_0_i_f_assign_3_fu_304_p3);

assign p_min_val_4_i_i_fu_259_p3 = ((brmerge_demorgan_i_fu_203_p2[0:0] === 1'b1) ? s_val_0_i_f_assign_s_fu_239_p3 : s_val_0_i_f_assign_1_fu_252_p3);

assign s_val_0_i_f_assign_1_fu_252_p3 = ((tmp_41_i_fu_246_p2[0:0] === 1'b1) ? tmp_43_reg_371 : v_assign_fu_74);

assign s_val_0_i_f_assign_2_fu_291_p3 = ((tmp_44_i_fu_285_p2[0:0] === 1'b1) ? tmp_43_reg_371 : v_assign_1_fu_70);

assign s_val_0_i_f_assign_3_fu_304_p3 = ((tmp_47_i_fu_298_p2[0:0] === 1'b1) ? tmp_43_reg_371 : v_assign_1_fu_70);

assign s_val_0_i_f_assign_s_fu_239_p3 = ((tmp_38_i_fu_233_p2[0:0] === 1'b1) ? tmp_43_reg_371 : v_assign_fu_74);

assign t_V_5_fu_168_p1 = v_assign_fu_74;

assign t_V_8_fu_192_p1 = tmp_43_reg_371;

assign t_V_9_fu_180_p1 = v_assign_1_fu_70;

assign tmp_38_i_fu_233_p2 = (($signed(p_Result_9_fu_213_p3) > $signed(p_Result_10_fu_225_p3)) ? 1'b1 : 1'b0);

assign tmp_41_fu_221_p1 = t_V_5_fu_168_p1[30:0];

assign tmp_41_i_fu_246_p2 = (($signed(t_V_8_fu_192_p1) < $signed(t_V_5_fu_168_p1)) ? 1'b1 : 1'b0);

assign tmp_42_fu_273_p1 = t_V_9_fu_180_p1[30:0];

assign tmp_44_i_fu_285_p2 = (($signed(p_Result_9_fu_213_p3) < $signed(p_Result_11_fu_277_p3)) ? 1'b1 : 1'b0);

assign tmp_47_i_fu_298_p2 = (($signed(t_V_8_fu_192_p1) > $signed(t_V_9_fu_180_p1)) ? 1'b1 : 1'b0);

assign tmp_fu_209_p1 = t_V_8_fu_192_p1[30:0];

endmodule //MinMaxLoc
