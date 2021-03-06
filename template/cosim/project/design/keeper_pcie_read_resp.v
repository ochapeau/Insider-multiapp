// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.op
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="keeper_pcie_read_resp,hls_ip_2017_4_op,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.458000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=518,HLS_SYN_LUT=87}" *)

module keeper_pcie_read_resp (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
ap_continue,
        ap_idle,
        ap_ready,
        pcie_read_resp_V_last_dout,
        pcie_read_resp_V_last_empty_n,
        pcie_read_resp_V_last_read,
        pcie_read_resp_V_data_V_dout,
        pcie_read_resp_V_data_V_empty_n,
        pcie_read_resp_V_data_V_read,
        buffered_pcie_read_resp_V_last_din,
        buffered_pcie_read_resp_V_last_full_n,
        buffered_pcie_read_resp_V_last_write,
        buffered_pcie_read_resp_V_data_V_din,
        buffered_pcie_read_resp_V_data_V_full_n,
        buffered_pcie_read_resp_V_data_V_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output ap_ready; output ap_continue;
input   pcie_read_resp_V_last_dout;
input   pcie_read_resp_V_last_empty_n;
output   pcie_read_resp_V_last_read;
input  [511:0] pcie_read_resp_V_data_V_dout;
input   pcie_read_resp_V_data_V_empty_n;
output   pcie_read_resp_V_data_V_read;
output   buffered_pcie_read_resp_V_last_din;
input   buffered_pcie_read_resp_V_last_full_n;
output   buffered_pcie_read_resp_V_last_write;
output  [511:0] buffered_pcie_read_resp_V_data_V_din;
input   buffered_pcie_read_resp_V_data_V_full_n;
output   buffered_pcie_read_resp_V_data_V_write;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    buffered_pcie_read_resp_V_last_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] empty_n_1_reg_120;
reg    buffered_pcie_read_resp_V_data_V_blk_n;
wire    ap_block_state2_pp0_stage0_iter0;
wire    buffered_pcie_read_resp_V_last1_status;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_last_reg_124;
reg   [511:0] tmp_data_V_reg_129;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg    pcie_read_resp_V_last0_update;
wire   [0:0] empty_n_nbread_fu_90_p3_0;
reg    buffered_pcie_read_resp_V_last1_update;
reg    ap_block_pp0_stage0_01001;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

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
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_n_1_reg_120 <= empty_n_nbread_fu_90_p3_0;
        tmp_data_V_reg_129 <= pcie_read_resp_V_data_V_dout;
        tmp_last_reg_124 <= pcie_read_resp_V_last_dout;
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((empty_n_1_reg_120 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffered_pcie_read_resp_V_data_V_blk_n = buffered_pcie_read_resp_V_data_V_full_n;
    end else begin
        buffered_pcie_read_resp_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (empty_n_1_reg_120 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffered_pcie_read_resp_V_last1_update = 1'b1;
    end else begin
        buffered_pcie_read_resp_V_last1_update = 1'b0;
    end
end

always @ (*) begin
    if (((empty_n_1_reg_120 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffered_pcie_read_resp_V_last_blk_n = buffered_pcie_read_resp_V_last_full_n;
    end else begin
        buffered_pcie_read_resp_V_last_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & ((pcie_read_resp_V_last_empty_n & pcie_read_resp_V_data_V_empty_n) == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pcie_read_resp_V_last0_update = 1'b1;
    end else begin
        pcie_read_resp_V_last0_update = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
    ap_block_pp0_stage0_01001 = ((empty_n_1_reg_120 == 1'd1) & (buffered_pcie_read_resp_V_last1_status == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((empty_n_1_reg_120 == 1'd1) & (buffered_pcie_read_resp_V_last1_status == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((empty_n_1_reg_120 == 1'd1) & (buffered_pcie_read_resp_V_last1_status == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((empty_n_1_reg_120 == 1'd1) & (buffered_pcie_read_resp_V_last1_status == 1'b0));
end

assign ap_done = 1'b0;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = 1'b0;

assign buffered_pcie_read_resp_V_data_V_din = tmp_data_V_reg_129;

assign buffered_pcie_read_resp_V_data_V_write = buffered_pcie_read_resp_V_last1_update;

assign buffered_pcie_read_resp_V_last1_status = (buffered_pcie_read_resp_V_last_full_n & buffered_pcie_read_resp_V_data_V_full_n);

assign buffered_pcie_read_resp_V_last_din = tmp_last_reg_124;

assign buffered_pcie_read_resp_V_last_write = buffered_pcie_read_resp_V_last1_update;

assign empty_n_nbread_fu_90_p3_0 = (pcie_read_resp_V_last_empty_n & pcie_read_resp_V_data_V_empty_n);

assign pcie_read_resp_V_data_V_read = pcie_read_resp_V_last0_update;

assign pcie_read_resp_V_last_read = pcie_read_resp_V_last0_update;

endmodule //keeper_pcie_read_resp
