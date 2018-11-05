// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="buf_app_input_data_forwarder_0,hls_ip_2017_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.422500,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=532,HLS_SYN_LUT=186}" *)

module buf_app_input_data_forwarder_0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
ap_continue,
        ap_idle,
        ap_ready,
        buf_app_input_data_V_data_V_dout,
        buf_app_input_data_V_data_V_empty_n,
        buf_app_input_data_V_data_V_read,
        buf_app_input_data_V_len_dout,
        buf_app_input_data_V_len_empty_n,
        buf_app_input_data_V_len_read,
        buf_app_input_data_V_eop_dout,
        buf_app_input_data_V_eop_empty_n,
        buf_app_input_data_V_eop_read,
        buf_read_sig_app_input_data_V_din,
        buf_read_sig_app_input_data_V_full_n,
        buf_read_sig_app_input_data_V_write,
        app_input_data_V_data_V_din,
        app_input_data_V_data_V_full_n,
        app_input_data_V_data_V_write,
        app_input_data_V_len_din,
        app_input_data_V_len_full_n,
        app_input_data_V_len_write,
        app_input_data_V_eop_din,
        app_input_data_V_eop_full_n,
        app_input_data_V_eop_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output ap_ready; output ap_continue;
input  [511:0] buf_app_input_data_V_data_V_dout;
input   buf_app_input_data_V_data_V_empty_n;
output   buf_app_input_data_V_data_V_read;
input  [15:0] buf_app_input_data_V_len_dout;
input   buf_app_input_data_V_len_empty_n;
output   buf_app_input_data_V_len_read;
input   buf_app_input_data_V_eop_dout;
input   buf_app_input_data_V_eop_empty_n;
output   buf_app_input_data_V_eop_read;
output   buf_read_sig_app_input_data_V_din;
input   buf_read_sig_app_input_data_V_full_n;
output   buf_read_sig_app_input_data_V_write;
output  [511:0] app_input_data_V_data_V_din;
input   app_input_data_V_data_V_full_n;
output   app_input_data_V_data_V_write;
output  [15:0] app_input_data_V_len_din;
input   app_input_data_V_len_full_n;
output   app_input_data_V_len_write;
output   app_input_data_V_eop_din;
input   app_input_data_V_eop_full_n;
output   app_input_data_V_eop_write;

reg ap_idle;
reg buf_read_sig_app_input_data_V_write;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] app_data_2_2_phi_fu_266_p6;
reg   [0:0] app_data_2_s_reg_175;
wire    ap_CS_fsm_state2;
reg   [15:0] app_data_1_2_phi_fu_281_p6;
reg   [15:0] app_data_1_s_reg_186;
reg   [511:0] app_data_0_2_phi_fu_296_p6;
reg   [511:0] app_data_0_s_reg_197;
wire   [0:0] valid_app_data_phi_fu_212_p4;
reg   [0:0] valid_app_data_reg_208;
reg   [0:0] valid_app_data_3_phi_fu_311_p6;
reg   [0:0] tmp_eop_phi_fu_222_p4;
wire   [0:0] empty_n_2_fu_322_p1;
reg   [15:0] tmp_len_phi_fu_233_p4;
reg   [511:0] tmp_data_V_phi_fu_244_p4;
reg   [0:0] valid_app_data_1_phi_fu_255_p4;
wire   [0:0] full_n_nbwrite_fu_154_p7;
reg    buf_app_input_data_V_len0_update;
wire   [0:0] empty_n_nbread_fu_144_p4_0;
reg    app_input_data_V_len1_update;
reg   [1:0] ap_NS_fsm;
reg    ap_condition_94;
reg    ap_condition_99;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        valid_app_data_reg_208 <= valid_app_data_3_phi_fu_311_p6;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        valid_app_data_reg_208 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        app_data_0_s_reg_197 <= app_data_0_2_phi_fu_296_p6;
        app_data_1_s_reg_186 <= app_data_1_2_phi_fu_281_p6;
        app_data_2_s_reg_175 <= app_data_2_2_phi_fu_266_p6;
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
    if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == valid_app_data_phi_fu_212_p4) & (1'd0 == empty_n_2_fu_322_p1))) begin
        app_data_0_2_phi_fu_296_p6 = buf_app_input_data_V_data_V_dout;
    end else if ((((1'b1 == ap_CS_fsm_state2) & (((valid_app_data_phi_fu_212_p4 == 1'd1) & (1'd1 == full_n_nbwrite_fu_154_p7)) | ((1'd1 == empty_n_2_fu_322_p1) & (1'd1 == full_n_nbwrite_fu_154_p7)))) | ((1'b1 == ap_CS_fsm_state2) & (((valid_app_data_phi_fu_212_p4 == 1'd1) & (1'd0 == full_n_nbwrite_fu_154_p7)) | ((1'd1 == empty_n_2_fu_322_p1) & (1'd0 == full_n_nbwrite_fu_154_p7)))))) begin
        app_data_0_2_phi_fu_296_p6 = tmp_data_V_phi_fu_244_p4;
    end else begin
        app_data_0_2_phi_fu_296_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == valid_app_data_phi_fu_212_p4) & (1'd0 == empty_n_2_fu_322_p1))) begin
        app_data_1_2_phi_fu_281_p6 = buf_app_input_data_V_len_dout;
    end else if ((((1'b1 == ap_CS_fsm_state2) & (((valid_app_data_phi_fu_212_p4 == 1'd1) & (1'd1 == full_n_nbwrite_fu_154_p7)) | ((1'd1 == empty_n_2_fu_322_p1) & (1'd1 == full_n_nbwrite_fu_154_p7)))) | ((1'b1 == ap_CS_fsm_state2) & (((valid_app_data_phi_fu_212_p4 == 1'd1) & (1'd0 == full_n_nbwrite_fu_154_p7)) | ((1'd1 == empty_n_2_fu_322_p1) & (1'd0 == full_n_nbwrite_fu_154_p7)))))) begin
        app_data_1_2_phi_fu_281_p6 = tmp_len_phi_fu_233_p4;
    end else begin
        app_data_1_2_phi_fu_281_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == valid_app_data_phi_fu_212_p4) & (1'd0 == empty_n_2_fu_322_p1))) begin
        app_data_2_2_phi_fu_266_p6 = buf_app_input_data_V_eop_dout;
    end else if ((((1'b1 == ap_CS_fsm_state2) & (((valid_app_data_phi_fu_212_p4 == 1'd1) & (1'd1 == full_n_nbwrite_fu_154_p7)) | ((1'd1 == empty_n_2_fu_322_p1) & (1'd1 == full_n_nbwrite_fu_154_p7)))) | ((1'b1 == ap_CS_fsm_state2) & (((valid_app_data_phi_fu_212_p4 == 1'd1) & (1'd0 == full_n_nbwrite_fu_154_p7)) | ((1'd1 == empty_n_2_fu_322_p1) & (1'd0 == full_n_nbwrite_fu_154_p7)))))) begin
        app_data_2_2_phi_fu_266_p6 = tmp_eop_phi_fu_222_p4;
    end else begin
        app_data_2_2_phi_fu_266_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((valid_app_data_phi_fu_212_p4 == 1'd1) | (1'd1 == empty_n_2_fu_322_p1)) & (1'b1 == (app_input_data_V_data_V_full_n & app_input_data_V_len_full_n & app_input_data_V_eop_full_n)))) begin
        app_input_data_V_len1_update = 1'b1;
    end else begin
        app_input_data_V_len1_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == valid_app_data_phi_fu_212_p4) & (1'b1 == (buf_app_input_data_V_data_V_empty_n & buf_app_input_data_V_len_empty_n & buf_app_input_data_V_eop_empty_n)))) begin
        buf_app_input_data_V_len0_update = 1'b1;
    end else begin
        buf_app_input_data_V_len0_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (((valid_app_data_phi_fu_212_p4 == 1'd1) & (1'd1 == full_n_nbwrite_fu_154_p7)) | ((1'd1 == empty_n_2_fu_322_p1) & (1'd1 == full_n_nbwrite_fu_154_p7))) & (1'b1 == buf_read_sig_app_input_data_V_full_n))) begin
        buf_read_sig_app_input_data_V_write = 1'b1;
    end else begin
        buf_read_sig_app_input_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if (((1'd1 == empty_n_2_fu_322_p1) & (1'd0 == valid_app_data_phi_fu_212_p4))) begin
            tmp_data_V_phi_fu_244_p4 = buf_app_input_data_V_data_V_dout;
        end else if ((valid_app_data_phi_fu_212_p4 == 1'd1)) begin
            tmp_data_V_phi_fu_244_p4 = app_data_0_s_reg_197;
        end else begin
            tmp_data_V_phi_fu_244_p4 = 'bx;
        end
    end else begin
        tmp_data_V_phi_fu_244_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if (((1'd1 == empty_n_2_fu_322_p1) & (1'd0 == valid_app_data_phi_fu_212_p4))) begin
            tmp_eop_phi_fu_222_p4 = buf_app_input_data_V_eop_dout;
        end else if ((valid_app_data_phi_fu_212_p4 == 1'd1)) begin
            tmp_eop_phi_fu_222_p4 = app_data_2_s_reg_175;
        end else begin
            tmp_eop_phi_fu_222_p4 = 'bx;
        end
    end else begin
        tmp_eop_phi_fu_222_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if (((1'd1 == empty_n_2_fu_322_p1) & (1'd0 == valid_app_data_phi_fu_212_p4))) begin
            tmp_len_phi_fu_233_p4 = buf_app_input_data_V_len_dout;
        end else if ((valid_app_data_phi_fu_212_p4 == 1'd1)) begin
            tmp_len_phi_fu_233_p4 = app_data_1_s_reg_186;
        end else begin
            tmp_len_phi_fu_233_p4 = 'bx;
        end
    end else begin
        tmp_len_phi_fu_233_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if (((1'd1 == empty_n_2_fu_322_p1) & (1'd0 == valid_app_data_phi_fu_212_p4))) begin
            valid_app_data_1_phi_fu_255_p4 = empty_n_nbread_fu_144_p4_0;
        end else if ((valid_app_data_phi_fu_212_p4 == 1'd1)) begin
            valid_app_data_1_phi_fu_255_p4 = valid_app_data_reg_208;
        end else begin
            valid_app_data_1_phi_fu_255_p4 = 'bx;
        end
    end else begin
        valid_app_data_1_phi_fu_255_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if (((1'd0 == valid_app_data_phi_fu_212_p4) & (1'd0 == empty_n_2_fu_322_p1))) begin
            valid_app_data_3_phi_fu_311_p6 = empty_n_nbread_fu_144_p4_0;
        end else if ((ap_condition_99 == 1'b1)) begin
            valid_app_data_3_phi_fu_311_p6 = valid_app_data_1_phi_fu_255_p4;
        end else if ((ap_condition_94 == 1'b1)) begin
            valid_app_data_3_phi_fu_311_p6 = 1'd0;
        end else begin
            valid_app_data_3_phi_fu_311_p6 = 'bx;
        end
    end else begin
        valid_app_data_3_phi_fu_311_p6 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_condition_94 = (((valid_app_data_phi_fu_212_p4 == 1'd1) & (1'd1 == full_n_nbwrite_fu_154_p7)) | ((1'd1 == empty_n_2_fu_322_p1) & (1'd1 == full_n_nbwrite_fu_154_p7)));
end

always @ (*) begin
    ap_condition_99 = (((valid_app_data_phi_fu_212_p4 == 1'd1) & (1'd0 == full_n_nbwrite_fu_154_p7)) | ((1'd1 == empty_n_2_fu_322_p1) & (1'd0 == full_n_nbwrite_fu_154_p7)));
end

assign ap_done = 1'b0;

assign ap_ready = 1'b0;

assign app_input_data_V_data_V_din = tmp_data_V_phi_fu_244_p4;

assign app_input_data_V_data_V_write = app_input_data_V_len1_update;

assign app_input_data_V_eop_din = tmp_eop_phi_fu_222_p4;

assign app_input_data_V_eop_write = app_input_data_V_len1_update;

assign app_input_data_V_len_din = tmp_len_phi_fu_233_p4;

assign app_input_data_V_len_write = app_input_data_V_len1_update;

assign buf_app_input_data_V_data_V_read = buf_app_input_data_V_len0_update;

assign buf_app_input_data_V_eop_read = buf_app_input_data_V_len0_update;

assign buf_app_input_data_V_len_read = buf_app_input_data_V_len0_update;

assign buf_read_sig_app_input_data_V_din = 1'd1;

assign empty_n_2_fu_322_p1 = empty_n_nbread_fu_144_p4_0;

assign empty_n_nbread_fu_144_p4_0 = (buf_app_input_data_V_data_V_empty_n & buf_app_input_data_V_len_empty_n & buf_app_input_data_V_eop_empty_n);

assign full_n_nbwrite_fu_154_p7 = (app_input_data_V_data_V_full_n & app_input_data_V_len_full_n & app_input_data_V_eop_full_n);

assign valid_app_data_phi_fu_212_p4 = valid_app_data_reg_208;

endmodule //buf_app_input_data_forwarder_0
