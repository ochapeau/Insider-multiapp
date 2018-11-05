// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="pipe1_data_handler,hls_ip_2017_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.211250,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1230,HLS_SYN_LUT=312}" *)

module pipe1_data_handler (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
ap_continue,
        ap_idle,
        ap_ready,
        reqs_pipe1_read_V_sector_off_dout,
        reqs_pipe1_read_V_sector_off_empty_n,
        reqs_pipe1_read_V_sector_off_read,
        reqs_pipe1_read_V_sector_num_dout,
        reqs_pipe1_read_V_sector_num_empty_n,
        reqs_pipe1_read_V_sector_num_read,
        reqs_pipe1_read_V_tag_dout,
        reqs_pipe1_read_V_tag_empty_n,
        reqs_pipe1_read_V_tag_read,
        reqs_pipe1_read_V_rw_dout,
        reqs_pipe1_read_V_rw_empty_n,
        reqs_pipe1_read_V_rw_read,
        host_dram_read_resp_V_last_dout,
        host_dram_read_resp_V_last_empty_n,
        host_dram_read_resp_V_last_read,
        host_dram_read_resp_V_data_V_dout,
        host_dram_read_resp_V_data_V_empty_n,
        host_dram_read_resp_V_data_V_read,
        buffered_pcie_read_resp_V_last_dout,
        buffered_pcie_read_resp_V_last_empty_n,
        buffered_pcie_read_resp_V_last_read,
        buffered_pcie_read_resp_V_data_V_dout,
        buffered_pcie_read_resp_V_data_V_empty_n,
        buffered_pcie_read_resp_V_data_V_read,
        reqs_pipe1_write_V_sector_off_din,
        reqs_pipe1_write_V_sector_off_full_n,
        reqs_pipe1_write_V_sector_off_write,
        reqs_pipe1_write_V_sector_num_din,
        reqs_pipe1_write_V_sector_num_full_n,
        reqs_pipe1_write_V_sector_num_write,
        reqs_pipe1_write_V_tag_din,
        reqs_pipe1_write_V_tag_full_n,
        reqs_pipe1_write_V_tag_write,
        reqs_pipe1_write_V_rw_din,
        reqs_pipe1_write_V_rw_full_n,
        reqs_pipe1_write_V_rw_write,
        data_valid_pipe1_write_V_din,
        data_valid_pipe1_write_V_full_n,
        data_valid_pipe1_write_V_write,
        data_pipe1_write_V_last_din,
        data_pipe1_write_V_last_full_n,
        data_pipe1_write_V_last_write,
        data_pipe1_write_V_data_V_din,
        data_pipe1_write_V_data_V_full_n,
        data_pipe1_write_V_data_V_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output ap_ready; output ap_continue;
input  [31:0] reqs_pipe1_read_V_sector_off_dout;
input   reqs_pipe1_read_V_sector_off_empty_n;
output   reqs_pipe1_read_V_sector_off_read;
input  [31:0] reqs_pipe1_read_V_sector_num_dout;
input   reqs_pipe1_read_V_sector_num_empty_n;
output   reqs_pipe1_read_V_sector_num_read;
input  [31:0] reqs_pipe1_read_V_tag_dout;
input   reqs_pipe1_read_V_tag_empty_n;
output   reqs_pipe1_read_V_tag_read;
input   reqs_pipe1_read_V_rw_dout;
input   reqs_pipe1_read_V_rw_empty_n;
output   reqs_pipe1_read_V_rw_read;
input   host_dram_read_resp_V_last_dout;
input   host_dram_read_resp_V_last_empty_n;
output   host_dram_read_resp_V_last_read;
input  [511:0] host_dram_read_resp_V_data_V_dout;
input   host_dram_read_resp_V_data_V_empty_n;
output   host_dram_read_resp_V_data_V_read;
input   buffered_pcie_read_resp_V_last_dout;
input   buffered_pcie_read_resp_V_last_empty_n;
output   buffered_pcie_read_resp_V_last_read;
input  [511:0] buffered_pcie_read_resp_V_data_V_dout;
input   buffered_pcie_read_resp_V_data_V_empty_n;
output   buffered_pcie_read_resp_V_data_V_read;
output  [31:0] reqs_pipe1_write_V_sector_off_din;
input   reqs_pipe1_write_V_sector_off_full_n;
output   reqs_pipe1_write_V_sector_off_write;
output  [31:0] reqs_pipe1_write_V_sector_num_din;
input   reqs_pipe1_write_V_sector_num_full_n;
output   reqs_pipe1_write_V_sector_num_write;
output  [31:0] reqs_pipe1_write_V_tag_din;
input   reqs_pipe1_write_V_tag_full_n;
output   reqs_pipe1_write_V_tag_write;
output   reqs_pipe1_write_V_rw_din;
input   reqs_pipe1_write_V_rw_full_n;
output   reqs_pipe1_write_V_rw_write;
output   data_valid_pipe1_write_V_din;
input   data_valid_pipe1_write_V_full_n;
output   data_valid_pipe1_write_V_write;
output   data_pipe1_write_V_last_din;
input   data_pipe1_write_V_last_full_n;
output   data_pipe1_write_V_last_write;
output  [511:0] data_pipe1_write_V_data_V_din;
input   data_pipe1_write_V_data_V_full_n;
output   data_pipe1_write_V_data_V_write;

reg ap_idle;
reg reqs_pipe1_write_V_rw_din;
reg data_valid_pipe1_write_V_write;
reg data_pipe1_write_V_last_din;
reg[511:0] data_pipe1_write_V_data_V_din;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    reqs_pipe1_write_V_sector_off_blk_n;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] has_inflight_1_reg_346;
reg   [0:0] tmp_rw_load_reg_505;
reg   [0:0] empty_n_5_reg_509;
reg   [0:0] tmp_last_1_reg_513;
reg   [0:0] empty_n_4_reg_523;
reg   [0:0] tmp_last_reg_527;
reg    reqs_pipe1_write_V_sector_num_blk_n;
reg    reqs_pipe1_write_V_tag_blk_n;
reg    reqs_pipe1_write_V_rw_blk_n;
reg    data_valid_pipe1_write_V_blk_n;
reg    data_pipe1_write_V_last_blk_n;
reg    data_pipe1_write_V_data_V_blk_n;
reg   [0:0] has_inflight_reg_334;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    data_pipe1_write_V_last1_status;
reg    ap_predicate_op75_write_state4;
wire    reqs_pipe1_write_V_rw1_status;
reg    ap_predicate_op79_write_state4;
reg    ap_predicate_op81_write_state4;
reg    ap_predicate_op85_write_state4;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] has_inflight_phi_fu_338_p4;
reg   [31:0] tmp_sector_off_3_reg_490;
reg   [31:0] tmp_sector_num_3_reg_495;
reg   [31:0] tmp_tag_3_reg_500;
wire   [0:0] tmp_rw_load_load_fu_434_p1;
wire   [0:0] has_inflight_1_phi_fu_349_p4;
wire   [0:0] empty_n_5_fu_437_p1;
wire   [0:0] tmp_last_1_fu_441_p1;
reg   [511:0] tmp_data_V_1_reg_518;
wire   [0:0] empty_n_4_fu_449_p1;
wire   [0:0] tmp_last_fu_453_p1;
reg   [511:0] tmp_data_V_reg_532;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] has_inflight_8_phi_fu_361_p14;
wire   [0:0] ap_phi_precharge_reg_pp0_iter0_has_inflight_1_reg_346;
reg   [0:0] ap_phi_precharge_reg_pp0_iter1_has_inflight_1_reg_346;
wire   [0:0] ap_phi_precharge_reg_pp0_iter1_has_inflight_8_reg_357;
reg    reqs_pipe1_read_V_rw0_update;
reg    ap_condition_263;
wire   [0:0] empty_n_3_nbread_fu_270_p5_0;
reg    host_dram_read_resp_V_last0_update;
wire   [0:0] empty_n_1_nbread_fu_282_p3_0;
reg    buffered_pcie_read_resp_V_last0_update;
wire   [0:0] empty_n_nbread_fu_290_p3_0;
reg    data_pipe1_write_V_last1_update;
reg    ap_block_pp0_stage0_01001;
reg    reqs_pipe1_write_V_rw1_update;
reg   [31:0] tmp_sector_off_fu_254;
reg   [31:0] tmp_sector_num_fu_258;
reg   [31:0] tmp_tag_fu_262;
reg   [0:0] tmp_rw_fu_266;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_211;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_subdone == 1'b0)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((ap_condition_211 == 1'b1)) begin
        if ((1'd1 == has_inflight_phi_fu_338_p4)) begin
            ap_phi_precharge_reg_pp0_iter1_has_inflight_1_reg_346 <= has_inflight_phi_fu_338_p4;
        end else if ((1'd0 == has_inflight_phi_fu_338_p4)) begin
            ap_phi_precharge_reg_pp0_iter1_has_inflight_1_reg_346 <= empty_n_3_nbread_fu_270_p5_0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_precharge_reg_pp0_iter1_has_inflight_1_reg_346 <= ap_phi_precharge_reg_pp0_iter0_has_inflight_1_reg_346;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        has_inflight_reg_334 <= has_inflight_8_phi_fu_361_p14;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        has_inflight_reg_334 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd1 == has_inflight_1_phi_fu_349_p4) & (1'd1 == tmp_rw_load_load_fu_434_p1))) begin
        empty_n_4_reg_523 <= empty_n_nbread_fu_290_p3_0;
        tmp_data_V_reg_532 <= buffered_pcie_read_resp_V_data_V_dout;
        tmp_last_reg_527 <= buffered_pcie_read_resp_V_last_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd1 == has_inflight_1_phi_fu_349_p4) & (1'd0 == tmp_rw_load_load_fu_434_p1))) begin
        empty_n_5_reg_509 <= empty_n_1_nbread_fu_282_p3_0;
        tmp_data_V_1_reg_518 <= host_dram_read_resp_V_data_V_dout;
        tmp_last_1_reg_513 <= host_dram_read_resp_V_last_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        has_inflight_1_reg_346 <= ap_phi_precharge_reg_pp0_iter1_has_inflight_1_reg_346;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd0 == has_inflight_phi_fu_338_p4) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        tmp_rw_fu_266 <= reqs_pipe1_read_V_rw_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd1 == has_inflight_1_phi_fu_349_p4))) begin
        tmp_rw_load_reg_505 <= tmp_rw_fu_266;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd0 == has_inflight_phi_fu_338_p4))) begin
        tmp_sector_num_3_reg_495 <= reqs_pipe1_read_V_sector_num_dout;
        tmp_sector_off_3_reg_490 <= reqs_pipe1_read_V_sector_off_dout;
        tmp_tag_3_reg_500 <= reqs_pipe1_read_V_tag_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == has_inflight_reg_334))) begin
        tmp_sector_num_fu_258 <= tmp_sector_num_3_reg_495;
        tmp_sector_off_fu_254 <= tmp_sector_off_3_reg_490;
        tmp_tag_fu_262 <= tmp_tag_3_reg_500;
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
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd1 == has_inflight_1_phi_fu_349_p4) & (1'd1 == tmp_rw_load_load_fu_434_p1) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == (buffered_pcie_read_resp_V_last_empty_n & buffered_pcie_read_resp_V_data_V_empty_n)))) begin
        buffered_pcie_read_resp_V_last0_update = 1'b1;
    end else begin
        buffered_pcie_read_resp_V_last0_update = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (tmp_rw_load_reg_505 == 1'd0) & (1'd1 == empty_n_5_reg_509)) | ((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (1'd1 == tmp_rw_load_reg_505) & (1'd1 == empty_n_4_reg_523)))) begin
        data_pipe1_write_V_data_V_blk_n = data_pipe1_write_V_data_V_full_n;
    end else begin
        data_pipe1_write_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0_01001 == 1'b0))) begin
        if ((1'b1 == ap_predicate_op81_write_state4)) begin
            data_pipe1_write_V_data_V_din = tmp_data_V_reg_532;
        end else if ((1'b1 == ap_predicate_op75_write_state4)) begin
            data_pipe1_write_V_data_V_din = tmp_data_V_1_reg_518;
        end else begin
            data_pipe1_write_V_data_V_din = 'bx;
        end
    end else begin
        data_pipe1_write_V_data_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter2) & (1'b1 == ap_predicate_op75_write_state4) & (ap_block_pp0_stage0_11001 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter2) & (1'b1 == ap_predicate_op81_write_state4) & (ap_block_pp0_stage0_11001 == 1'b0)))) begin
        data_pipe1_write_V_last1_update = 1'b1;
    end else begin
        data_pipe1_write_V_last1_update = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (tmp_rw_load_reg_505 == 1'd0) & (1'd1 == empty_n_5_reg_509)) | ((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (1'd1 == tmp_rw_load_reg_505) & (1'd1 == empty_n_4_reg_523)))) begin
        data_pipe1_write_V_last_blk_n = data_pipe1_write_V_last_full_n;
    end else begin
        data_pipe1_write_V_last_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0_01001 == 1'b0))) begin
        if ((1'b1 == ap_predicate_op81_write_state4)) begin
            data_pipe1_write_V_last_din = tmp_last_reg_527;
        end else if ((1'b1 == ap_predicate_op75_write_state4)) begin
            data_pipe1_write_V_last_din = tmp_last_1_reg_513;
        end else begin
            data_pipe1_write_V_last_din = 'bx;
        end
    end else begin
        data_pipe1_write_V_last_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (tmp_rw_load_reg_505 == 1'd0) & (1'd1 == empty_n_5_reg_509) & (1'd1 == tmp_last_1_reg_513)) | ((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (1'd1 == tmp_rw_load_reg_505) & (1'd1 == empty_n_4_reg_523) & (1'd1 == tmp_last_reg_527)))) begin
        data_valid_pipe1_write_V_blk_n = data_valid_pipe1_write_V_full_n;
    end else begin
        data_valid_pipe1_write_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter2) & (1'b1 == ap_predicate_op79_write_state4) & (ap_block_pp0_stage0_11001 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter2) & (1'b1 == ap_predicate_op85_write_state4) & (ap_block_pp0_stage0_11001 == 1'b0)))) begin
        data_valid_pipe1_write_V_write = 1'b1;
    end else begin
        data_valid_pipe1_write_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd1 == has_inflight_1_phi_fu_349_p4) & (1'd0 == tmp_rw_load_load_fu_434_p1) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == empty_n_5_fu_437_p1)) | ((ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd1 == has_inflight_1_phi_fu_349_p4) & (1'd0 == tmp_rw_load_load_fu_434_p1) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd1 == empty_n_5_fu_437_p1) & (1'd0 == tmp_last_1_fu_441_p1)) | ((ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd1 == has_inflight_1_phi_fu_349_p4) & (1'd1 == tmp_rw_load_load_fu_434_p1) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == empty_n_4_fu_449_p1)) | ((ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd1 == has_inflight_1_phi_fu_349_p4) & (1'd1 == tmp_rw_load_load_fu_434_p1) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd1 == empty_n_4_fu_449_p1) & (1'd0 == tmp_last_fu_453_p1)))) begin
        has_inflight_8_phi_fu_361_p14 = 1'd1;
    end else if (((ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == has_inflight_1_phi_fu_349_p4))) begin
        has_inflight_8_phi_fu_361_p14 = ap_phi_precharge_reg_pp0_iter1_has_inflight_1_reg_346;
    end else if ((((ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd1 == has_inflight_1_phi_fu_349_p4) & (1'd0 == tmp_rw_load_load_fu_434_p1) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd1 == empty_n_5_fu_437_p1) & (1'd1 == tmp_last_1_fu_441_p1)) | ((ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd1 == has_inflight_1_phi_fu_349_p4) & (1'd1 == tmp_rw_load_load_fu_434_p1) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd1 == empty_n_4_fu_449_p1) & (1'd1 == tmp_last_fu_453_p1)))) begin
        has_inflight_8_phi_fu_361_p14 = 1'd0;
    end else begin
        has_inflight_8_phi_fu_361_p14 = ap_phi_precharge_reg_pp0_iter1_has_inflight_8_reg_357;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        has_inflight_phi_fu_338_p4 = has_inflight_8_phi_fu_361_p14;
    end else begin
        has_inflight_phi_fu_338_p4 = has_inflight_reg_334;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd1 == has_inflight_1_phi_fu_349_p4) & (1'd0 == tmp_rw_load_load_fu_434_p1) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == (host_dram_read_resp_V_last_empty_n & host_dram_read_resp_V_data_V_empty_n)))) begin
        host_dram_read_resp_V_last0_update = 1'b1;
    end else begin
        host_dram_read_resp_V_last0_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'd0 == has_inflight_phi_fu_338_p4) & (1'b1 == ap_enable_reg_pp0_iter0) & (ap_condition_263 == 1'b1))) begin
        reqs_pipe1_read_V_rw0_update = 1'b1;
    end else begin
        reqs_pipe1_read_V_rw0_update = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter2) & (1'b1 == ap_predicate_op79_write_state4) & (ap_block_pp0_stage0_11001 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter2) & (1'b1 == ap_predicate_op85_write_state4) & (ap_block_pp0_stage0_11001 == 1'b0)))) begin
        reqs_pipe1_write_V_rw1_update = 1'b1;
    end else begin
        reqs_pipe1_write_V_rw1_update = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (tmp_rw_load_reg_505 == 1'd0) & (1'd1 == empty_n_5_reg_509) & (1'd1 == tmp_last_1_reg_513)) | ((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (1'd1 == tmp_rw_load_reg_505) & (1'd1 == empty_n_4_reg_523) & (1'd1 == tmp_last_reg_527)))) begin
        reqs_pipe1_write_V_rw_blk_n = reqs_pipe1_write_V_rw_full_n;
    end else begin
        reqs_pipe1_write_V_rw_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0_01001 == 1'b0))) begin
        if ((1'b1 == ap_predicate_op85_write_state4)) begin
            reqs_pipe1_write_V_rw_din = 1'd1;
        end else if ((1'b1 == ap_predicate_op79_write_state4)) begin
            reqs_pipe1_write_V_rw_din = 1'd0;
        end else begin
            reqs_pipe1_write_V_rw_din = 'bx;
        end
    end else begin
        reqs_pipe1_write_V_rw_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (tmp_rw_load_reg_505 == 1'd0) & (1'd1 == empty_n_5_reg_509) & (1'd1 == tmp_last_1_reg_513)) | ((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (1'd1 == tmp_rw_load_reg_505) & (1'd1 == empty_n_4_reg_523) & (1'd1 == tmp_last_reg_527)))) begin
        reqs_pipe1_write_V_sector_num_blk_n = reqs_pipe1_write_V_sector_num_full_n;
    end else begin
        reqs_pipe1_write_V_sector_num_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (tmp_rw_load_reg_505 == 1'd0) & (1'd1 == empty_n_5_reg_509) & (1'd1 == tmp_last_1_reg_513)) | ((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (1'd1 == tmp_rw_load_reg_505) & (1'd1 == empty_n_4_reg_523) & (1'd1 == tmp_last_reg_527)))) begin
        reqs_pipe1_write_V_sector_off_blk_n = reqs_pipe1_write_V_sector_off_full_n;
    end else begin
        reqs_pipe1_write_V_sector_off_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (tmp_rw_load_reg_505 == 1'd0) & (1'd1 == empty_n_5_reg_509) & (1'd1 == tmp_last_1_reg_513)) | ((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (has_inflight_1_reg_346 == 1'd1) & (1'd1 == tmp_rw_load_reg_505) & (1'd1 == empty_n_4_reg_523) & (1'd1 == tmp_last_reg_527)))) begin
        reqs_pipe1_write_V_tag_blk_n = reqs_pipe1_write_V_tag_full_n;
    end else begin
        reqs_pipe1_write_V_tag_blk_n = 1'b1;
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
    ap_block_pp0_stage0_01001 = ((1'b1 == ap_enable_reg_pp0_iter2) & (((1'b0 == data_pipe1_write_V_last1_status) & (1'b1 == ap_predicate_op75_write_state4)) | ((1'b0 == reqs_pipe1_write_V_rw1_status) & (1'b1 == ap_predicate_op79_write_state4)) | ((1'b1 == ap_predicate_op79_write_state4) & (1'b0 == data_valid_pipe1_write_V_full_n)) | ((1'b0 == data_pipe1_write_V_last1_status) & (1'b1 == ap_predicate_op81_write_state4)) | ((1'b0 == reqs_pipe1_write_V_rw1_status) & (1'b1 == ap_predicate_op85_write_state4)) | ((1'b0 == data_valid_pipe1_write_V_full_n) & (1'b1 == ap_predicate_op85_write_state4))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((1'b1 == ap_enable_reg_pp0_iter2) & (((1'b0 == data_pipe1_write_V_last1_status) & (1'b1 == ap_predicate_op75_write_state4)) | ((1'b0 == reqs_pipe1_write_V_rw1_status) & (1'b1 == ap_predicate_op79_write_state4)) | ((1'b1 == ap_predicate_op79_write_state4) & (1'b0 == data_valid_pipe1_write_V_full_n)) | ((1'b0 == data_pipe1_write_V_last1_status) & (1'b1 == ap_predicate_op81_write_state4)) | ((1'b0 == reqs_pipe1_write_V_rw1_status) & (1'b1 == ap_predicate_op85_write_state4)) | ((1'b0 == data_valid_pipe1_write_V_full_n) & (1'b1 == ap_predicate_op85_write_state4))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b1 == ap_enable_reg_pp0_iter2) & (((1'b0 == data_pipe1_write_V_last1_status) & (1'b1 == ap_predicate_op75_write_state4)) | ((1'b0 == reqs_pipe1_write_V_rw1_status) & (1'b1 == ap_predicate_op79_write_state4)) | ((1'b1 == ap_predicate_op79_write_state4) & (1'b0 == data_valid_pipe1_write_V_full_n)) | ((1'b0 == data_pipe1_write_V_last1_status) & (1'b1 == ap_predicate_op81_write_state4)) | ((1'b0 == reqs_pipe1_write_V_rw1_status) & (1'b1 == ap_predicate_op85_write_state4)) | ((1'b0 == data_valid_pipe1_write_V_full_n) & (1'b1 == ap_predicate_op85_write_state4))));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = (((1'b0 == data_pipe1_write_V_last1_status) & (1'b1 == ap_predicate_op75_write_state4)) | ((1'b0 == reqs_pipe1_write_V_rw1_status) & (1'b1 == ap_predicate_op79_write_state4)) | ((1'b1 == ap_predicate_op79_write_state4) & (1'b0 == data_valid_pipe1_write_V_full_n)) | ((1'b0 == data_pipe1_write_V_last1_status) & (1'b1 == ap_predicate_op81_write_state4)) | ((1'b0 == reqs_pipe1_write_V_rw1_status) & (1'b1 == ap_predicate_op85_write_state4)) | ((1'b0 == data_valid_pipe1_write_V_full_n) & (1'b1 == ap_predicate_op85_write_state4)));
end

always @ (*) begin
    ap_condition_211 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0));
end

always @ (*) begin
    ap_condition_263 = (1'b1 == (reqs_pipe1_read_V_sector_off_empty_n & reqs_pipe1_read_V_sector_num_empty_n & reqs_pipe1_read_V_tag_empty_n & reqs_pipe1_read_V_rw_empty_n));
end

assign ap_done = 1'b0;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_precharge_reg_pp0_iter0_has_inflight_1_reg_346 = 'bx;

assign ap_phi_precharge_reg_pp0_iter1_has_inflight_8_reg_357 = 'bx;

always @ (*) begin
    ap_predicate_op75_write_state4 = ((has_inflight_1_reg_346 == 1'd1) & (tmp_rw_load_reg_505 == 1'd0) & (1'd1 == empty_n_5_reg_509));
end

always @ (*) begin
    ap_predicate_op79_write_state4 = ((has_inflight_1_reg_346 == 1'd1) & (tmp_rw_load_reg_505 == 1'd0) & (1'd1 == empty_n_5_reg_509) & (1'd1 == tmp_last_1_reg_513));
end

always @ (*) begin
    ap_predicate_op81_write_state4 = ((has_inflight_1_reg_346 == 1'd1) & (1'd1 == tmp_rw_load_reg_505) & (1'd1 == empty_n_4_reg_523));
end

always @ (*) begin
    ap_predicate_op85_write_state4 = ((has_inflight_1_reg_346 == 1'd1) & (1'd1 == tmp_rw_load_reg_505) & (1'd1 == empty_n_4_reg_523) & (1'd1 == tmp_last_reg_527));
end

assign ap_ready = 1'b0;

assign buffered_pcie_read_resp_V_data_V_read = buffered_pcie_read_resp_V_last0_update;

assign buffered_pcie_read_resp_V_last_read = buffered_pcie_read_resp_V_last0_update;

assign data_pipe1_write_V_data_V_write = data_pipe1_write_V_last1_update;

assign data_pipe1_write_V_last1_status = (data_pipe1_write_V_last_full_n & data_pipe1_write_V_data_V_full_n);

assign data_pipe1_write_V_last_write = data_pipe1_write_V_last1_update;

assign data_valid_pipe1_write_V_din = 1'd1;

assign empty_n_1_nbread_fu_282_p3_0 = (host_dram_read_resp_V_last_empty_n & host_dram_read_resp_V_data_V_empty_n);

assign empty_n_3_nbread_fu_270_p5_0 = (reqs_pipe1_read_V_sector_off_empty_n & reqs_pipe1_read_V_sector_num_empty_n & reqs_pipe1_read_V_tag_empty_n & reqs_pipe1_read_V_rw_empty_n);

assign empty_n_4_fu_449_p1 = empty_n_nbread_fu_290_p3_0;

assign empty_n_5_fu_437_p1 = empty_n_1_nbread_fu_282_p3_0;

assign empty_n_nbread_fu_290_p3_0 = (buffered_pcie_read_resp_V_last_empty_n & buffered_pcie_read_resp_V_data_V_empty_n);

assign has_inflight_1_phi_fu_349_p4 = ap_phi_precharge_reg_pp0_iter1_has_inflight_1_reg_346;

assign host_dram_read_resp_V_data_V_read = host_dram_read_resp_V_last0_update;

assign host_dram_read_resp_V_last_read = host_dram_read_resp_V_last0_update;

assign reqs_pipe1_read_V_rw_read = reqs_pipe1_read_V_rw0_update;

assign reqs_pipe1_read_V_sector_num_read = reqs_pipe1_read_V_rw0_update;

assign reqs_pipe1_read_V_sector_off_read = reqs_pipe1_read_V_rw0_update;

assign reqs_pipe1_read_V_tag_read = reqs_pipe1_read_V_rw0_update;

assign reqs_pipe1_write_V_rw1_status = (reqs_pipe1_write_V_sector_off_full_n & reqs_pipe1_write_V_sector_num_full_n & reqs_pipe1_write_V_tag_full_n & reqs_pipe1_write_V_rw_full_n);

assign reqs_pipe1_write_V_rw_write = reqs_pipe1_write_V_rw1_update;

assign reqs_pipe1_write_V_sector_num_din = tmp_sector_num_fu_258;

assign reqs_pipe1_write_V_sector_num_write = reqs_pipe1_write_V_rw1_update;

assign reqs_pipe1_write_V_sector_off_din = tmp_sector_off_fu_254;

assign reqs_pipe1_write_V_sector_off_write = reqs_pipe1_write_V_rw1_update;

assign reqs_pipe1_write_V_tag_din = tmp_tag_fu_262;

assign reqs_pipe1_write_V_tag_write = reqs_pipe1_write_V_rw1_update;

assign tmp_last_1_fu_441_p1 = host_dram_read_resp_V_last_dout;

assign tmp_last_fu_453_p1 = buffered_pcie_read_resp_V_last_dout;

assign tmp_rw_load_load_fu_434_p1 = tmp_rw_fu_266;

endmodule //pipe1_data_handler
