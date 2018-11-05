// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="app_pt_2,hls_ip_2017_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.776250,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=72,HLS_SYN_LUT=413}" *)

module app_pt_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
ap_continue,
        ap_idle,
        ap_ready,
        reset_app_pt_2_V_dout,
        reset_app_pt_2_V_empty_n,
        reset_app_pt_2_V_read,
        app_input_data_V_data_V_dout,
        app_input_data_V_data_V_empty_n,
        app_input_data_V_data_V_read,
        app_input_data_V_len_dout,
        app_input_data_V_len_empty_n,
        app_input_data_V_len_read,
        app_input_data_V_eop_dout,
        app_input_data_V_eop_empty_n,
        app_input_data_V_eop_read,
        app_output_data_V_data_V_din,
        app_output_data_V_data_V_full_n,
        app_output_data_V_data_V_write,
        app_output_data_V_len_din,
        app_output_data_V_len_full_n,
        app_output_data_V_len_write,
        app_output_data_V_eop_din,
        app_output_data_V_eop_full_n,
        app_output_data_V_eop_write,
        app_input_params_V_dout,
        app_input_params_V_empty_n,
        app_input_params_V_read
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output ap_ready; output ap_continue;
input   reset_app_pt_2_V_dout;
input   reset_app_pt_2_V_empty_n;
output   reset_app_pt_2_V_read;
input  [511:0] app_input_data_V_data_V_dout;
input   app_input_data_V_data_V_empty_n;
output   app_input_data_V_data_V_read;
input  [15:0] app_input_data_V_len_dout;
input   app_input_data_V_len_empty_n;
output   app_input_data_V_len_read;
input   app_input_data_V_eop_dout;
input   app_input_data_V_eop_empty_n;
output   app_input_data_V_eop_read;
output  [511:0] app_output_data_V_data_V_din;
input   app_output_data_V_data_V_full_n;
output   app_output_data_V_data_V_write;
output  [15:0] app_output_data_V_len_din;
input   app_output_data_V_len_full_n;
output   app_output_data_V_len_write;
output   app_output_data_V_eop_din;
input   app_output_data_V_eop_full_n;
output   app_output_data_V_eop_write;
input  [31:0] app_input_params_V_dout;
input   app_input_params_V_empty_n;
output   app_input_params_V_read;

reg ap_idle;
reg reset_app_pt_2_V_read;
reg app_input_params_V_read;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    app_input_data_V_data_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] reset_reg_213;
reg   [0:0] empty_n_reg_369;
reg   [0:0] tmp_7_reg_373;
reg    app_input_data_V_len_blk_n;
reg    app_input_data_V_eop_blk_n;
reg    app_output_data_V_data_V_blk_n;
reg    app_output_data_V_len_blk_n;
reg    app_output_data_V_eop_blk_n;
reg   [0:0] reset_3_reg_235;
wire   [0:0] empty_n_fu_263_p1;
wire    ap_block_state2_pp0_stage0_iter0;
wire    app_input_data_V_len0_status;
reg    ap_predicate_op55_read_state3;
wire    app_output_data_V_len1_status;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] reset_phi_fu_217_p4;
wire   [0:0] tmp_7_fu_274_p2;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] ap_phi_precharge_reg_pp0_iter0_reset_1_reg_225;
reg   [0:0] reset_1_phi_fu_228_p4;
wire   [0:0] p_reset_1_fu_306_p2;
wire   [0:0] ap_phi_precharge_reg_pp0_iter0_reset_3_reg_235;
reg    app_input_data_V_len0_update;
reg    app_output_data_V_len1_update;
reg    ap_block_pp0_stage0_01001;
reg   [31:0] state_fu_160;
wire   [31:0] state_1_fu_268_p2;
wire   [31:0] p_state_fu_321_p3;
reg   [31:0] reset_cnt_fu_164;
wire   [31:0] p_s_fu_313_p3;
wire   [31:0] reset_cnt_1_fu_288_p2;
wire   [0:0] tmp_4_fu_294_p2;
wire   [0:0] not_s_fu_300_p2;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_127;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_subdone == 1'b0)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd0 == reset_phi_fu_217_p4) & (1'd0 == empty_n_fu_263_p1) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd1 == tmp_7_fu_274_p2)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd0 == reset_phi_fu_217_p4) & (1'd0 == empty_n_fu_263_p1) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == tmp_7_fu_274_p2)))) begin
        reset_3_reg_235 <= 1'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & ((1'd1 == reset_phi_fu_217_p4) | (1'd1 == empty_n_fu_263_p1)))) begin
        reset_3_reg_235 <= p_reset_1_fu_306_p2;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        reset_3_reg_235 <= ap_phi_precharge_reg_pp0_iter0_reset_3_reg_235;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & ((1'd1 == reset_phi_fu_217_p4) | (1'd1 == empty_n_fu_263_p1)))) begin
        reset_cnt_fu_164 <= p_s_fu_313_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        reset_cnt_fu_164 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        reset_reg_213 <= reset_3_reg_235;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        reset_reg_213 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & ((1'd1 == reset_phi_fu_217_p4) | (1'd1 == empty_n_fu_263_p1)))) begin
        state_fu_160 <= p_state_fu_321_p3;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd0 == reset_phi_fu_217_p4) & (1'd0 == empty_n_fu_263_p1) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == tmp_7_fu_274_p2))) begin
        state_fu_160 <= state_1_fu_268_p2;
    end else if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd0 == reset_phi_fu_217_p4) & (1'd0 == empty_n_fu_263_p1) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd1 == tmp_7_fu_274_p2)))) begin
        state_fu_160 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd0 == reset_phi_fu_217_p4))) begin
        empty_n_reg_369 <= reset_app_pt_2_V_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd0 == reset_phi_fu_217_p4) & (1'd0 == empty_n_fu_263_p1))) begin
        tmp_7_reg_373 <= tmp_7_fu_274_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0 == 1'b0) & (reset_reg_213 == 1'd0) & (1'd0 == empty_n_reg_369) & (tmp_7_reg_373 == 1'd1))) begin
        app_input_data_V_data_V_blk_n = app_input_data_V_data_V_empty_n;
    end else begin
        app_input_data_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0 == 1'b0) & (reset_reg_213 == 1'd0) & (1'd0 == empty_n_reg_369) & (tmp_7_reg_373 == 1'd1))) begin
        app_input_data_V_eop_blk_n = app_input_data_V_eop_empty_n;
    end else begin
        app_input_data_V_eop_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_11001 == 1'b0) & ((reset_reg_213 == 1'd1) | (empty_n_reg_369 == 1'd1))) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_predicate_op55_read_state3) & (ap_block_pp0_stage0_11001 == 1'b0))) & (1'b1 == (app_input_data_V_data_V_empty_n & app_input_data_V_len_empty_n & app_input_data_V_eop_empty_n)))) begin
        app_input_data_V_len0_update = 1'b1;
    end else begin
        app_input_data_V_len0_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0 == 1'b0) & (reset_reg_213 == 1'd0) & (1'd0 == empty_n_reg_369) & (tmp_7_reg_373 == 1'd1))) begin
        app_input_data_V_len_blk_n = app_input_data_V_len_empty_n;
    end else begin
        app_input_data_V_len_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == app_input_params_V_empty_n) & (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (reset_reg_213 == 1'd0) & (1'd0 == empty_n_reg_369) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == app_input_params_V_empty_n)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_11001 == 1'b0) & ((reset_reg_213 == 1'd1) | (empty_n_reg_369 == 1'd1)))))) begin
        app_input_params_V_read = 1'b1;
    end else begin
        app_input_params_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0 == 1'b0) & (reset_reg_213 == 1'd0) & (1'd0 == empty_n_reg_369) & (tmp_7_reg_373 == 1'd1))) begin
        app_output_data_V_data_V_blk_n = app_output_data_V_data_V_full_n;
    end else begin
        app_output_data_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0 == 1'b0) & (reset_reg_213 == 1'd0) & (1'd0 == empty_n_reg_369) & (tmp_7_reg_373 == 1'd1))) begin
        app_output_data_V_eop_blk_n = app_output_data_V_eop_full_n;
    end else begin
        app_output_data_V_eop_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_predicate_op55_read_state3) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        app_output_data_V_len1_update = 1'b1;
    end else begin
        app_output_data_V_len1_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0 == 1'b0) & (reset_reg_213 == 1'd0) & (1'd0 == empty_n_reg_369) & (tmp_7_reg_373 == 1'd1))) begin
        app_output_data_V_len_blk_n = app_output_data_V_len_full_n;
    end else begin
        app_output_data_V_len_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((ap_condition_127 == 1'b1)) begin
        if (((1'd0 == reset_phi_fu_217_p4) & (1'd1 == empty_n_fu_263_p1))) begin
            reset_1_phi_fu_228_p4 = reset_app_pt_2_V_empty_n;
        end else if ((1'd1 == reset_phi_fu_217_p4)) begin
            reset_1_phi_fu_228_p4 = reset_phi_fu_217_p4;
        end else begin
            reset_1_phi_fu_228_p4 = ap_phi_precharge_reg_pp0_iter0_reset_1_reg_225;
        end
    end else begin
        reset_1_phi_fu_228_p4 = ap_phi_precharge_reg_pp0_iter0_reset_1_reg_225;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd0 == reset_phi_fu_217_p4) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == reset_app_pt_2_V_empty_n))) begin
        reset_app_pt_2_V_read = 1'b1;
    end else begin
        reset_app_pt_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0 == 1'b0))) begin
        reset_phi_fu_217_p4 = reset_3_reg_235;
    end else begin
        reset_phi_fu_217_p4 = reset_reg_213;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((1'b1 == ap_enable_reg_pp0_iter1) & (((1'b0 == app_input_data_V_len0_status) & (1'b1 == ap_predicate_op55_read_state3)) | ((1'b1 == ap_predicate_op55_read_state3) & (1'b0 == app_output_data_V_len1_status))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((1'b1 == ap_enable_reg_pp0_iter1) & (((1'b0 == app_input_data_V_len0_status) & (1'b1 == ap_predicate_op55_read_state3)) | ((1'b1 == ap_predicate_op55_read_state3) & (1'b0 == app_output_data_V_len1_status))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b1 == ap_enable_reg_pp0_iter1) & (((1'b0 == app_input_data_V_len0_status) & (1'b1 == ap_predicate_op55_read_state3)) | ((1'b1 == ap_predicate_op55_read_state3) & (1'b0 == app_output_data_V_len1_status))));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((1'b0 == app_input_data_V_len0_status) & (1'b1 == ap_predicate_op55_read_state3)) | ((1'b1 == ap_predicate_op55_read_state3) & (1'b0 == app_output_data_V_len1_status)));
end

always @ (*) begin
    ap_condition_127 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0));
end

assign ap_done = 1'b0;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_precharge_reg_pp0_iter0_reset_1_reg_225 = 'bx;

assign ap_phi_precharge_reg_pp0_iter0_reset_3_reg_235 = 'bx;

always @ (*) begin
    ap_predicate_op55_read_state3 = ((reset_reg_213 == 1'd0) & (1'd0 == empty_n_reg_369) & (tmp_7_reg_373 == 1'd1));
end

assign ap_ready = 1'b0;

assign app_input_data_V_data_V_read = app_input_data_V_len0_update;

assign app_input_data_V_eop_read = app_input_data_V_len0_update;

assign app_input_data_V_len0_status = (app_input_data_V_data_V_empty_n & app_input_data_V_len_empty_n & app_input_data_V_eop_empty_n);

assign app_input_data_V_len_read = app_input_data_V_len0_update;

assign app_output_data_V_data_V_din = app_input_data_V_data_V_dout;

assign app_output_data_V_data_V_write = app_output_data_V_len1_update;

assign app_output_data_V_eop_din = app_input_data_V_eop_dout;

assign app_output_data_V_eop_write = app_output_data_V_len1_update;

assign app_output_data_V_len1_status = (app_output_data_V_data_V_full_n & app_output_data_V_len_full_n & app_output_data_V_eop_full_n);

assign app_output_data_V_len_din = app_input_data_V_len_dout;

assign app_output_data_V_len_write = app_output_data_V_len1_update;

assign empty_n_fu_263_p1 = reset_app_pt_2_V_empty_n;

assign not_s_fu_300_p2 = (tmp_4_fu_294_p2 ^ 1'd1);

assign p_reset_1_fu_306_p2 = (reset_1_phi_fu_228_p4 & not_s_fu_300_p2);

assign p_s_fu_313_p3 = ((tmp_4_fu_294_p2[0:0] === 1'b1) ? 32'd0 : reset_cnt_1_fu_288_p2);

assign p_state_fu_321_p3 = ((tmp_4_fu_294_p2[0:0] === 1'b1) ? 32'd0 : state_fu_160);

assign reset_cnt_1_fu_288_p2 = (reset_cnt_fu_164 + 32'd1);

assign state_1_fu_268_p2 = (state_fu_160 + 32'd1);

assign tmp_4_fu_294_p2 = ((reset_cnt_1_fu_288_p2 == 32'd2048) ? 1'b1 : 1'b0);

assign tmp_7_fu_274_p2 = ((state_1_fu_268_p2 == 32'd4) ? 1'b1 : 1'b0);

endmodule //app_pt_2
