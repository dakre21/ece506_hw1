// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sun Feb  4 22:38:53 2018
// Host        : dakre-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/dakre/ece506_hw1/sort/sort.sim/sim_1/synth/func/sort_TB_func_synth.v
// Design      : sort_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DataMemory
   (ReadData0,
    t_clk_IBUF_BUFG,
    WriteData,
    wen,
    Address);
  output [7:0]ReadData0;
  input t_clk_IBUF_BUFG;
  input [7:0]WriteData;
  input wen;
  input [4:0]Address;

  wire [4:0]Address;
  wire [7:0]ReadData0;
  wire [7:0]WriteData;
  wire t_clk_IBUF_BUFG;
  wire wen;

  RAM32X1S #(
    .INIT(32'h5C84A02A)) 
    Memory_reg_0_31_0_0
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .D(WriteData[0]),
        .O(ReadData0[0]),
        .WCLK(t_clk_IBUF_BUFG),
        .WE(wen));
  RAM32X1S #(
    .INIT(32'h1A572004)) 
    Memory_reg_0_31_1_1
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .D(WriteData[1]),
        .O(ReadData0[1]),
        .WCLK(t_clk_IBUF_BUFG),
        .WE(wen));
  RAM32X1S #(
    .INIT(32'h3233D032)) 
    Memory_reg_0_31_2_2
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .D(WriteData[2]),
        .O(ReadData0[2]),
        .WCLK(t_clk_IBUF_BUFG),
        .WE(wen));
  RAM32X1S #(
    .INIT(32'hF15A1AC1)) 
    Memory_reg_0_31_3_3
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .D(WriteData[3]),
        .O(ReadData0[3]),
        .WCLK(t_clk_IBUF_BUFG),
        .WE(wen));
  RAM32X1S #(
    .INIT(32'hC89A1CC0)) 
    Memory_reg_0_31_4_4
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .D(WriteData[4]),
        .O(ReadData0[4]),
        .WCLK(t_clk_IBUF_BUFG),
        .WE(wen));
  RAM32X1S #(
    .INIT(32'h05E40080)) 
    Memory_reg_0_31_5_5
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .D(WriteData[5]),
        .O(ReadData0[5]),
        .WCLK(t_clk_IBUF_BUFG),
        .WE(wen));
  RAM32X1S #(
    .INIT(32'h00000F00)) 
    Memory_reg_0_31_6_6
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .D(WriteData[6]),
        .O(ReadData0[6]),
        .WCLK(t_clk_IBUF_BUFG),
        .WE(wen));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    Memory_reg_0_31_7_7
       (.A0(Address[0]),
        .A1(Address[1]),
        .A2(Address[2]),
        .A3(Address[3]),
        .A4(Address[4]),
        .D(WriteData[7]),
        .O(ReadData0[7]),
        .WCLK(t_clk_IBUF_BUFG),
        .WE(wen));
endmodule

module sort_controller
   (D,
    a,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    \FSM_sequential_state_reg[1]_2 ,
    sel_add,
    sel_data,
    c_clr,
    c_ld,
    d_clr,
    d_ld,
    t2_clr,
    t1_ld,
    t2_ld,
    wen,
    ReadData0,
    t_n_IBUF,
    in1,
    t_clk_IBUF_BUFG,
    t_go_IBUF,
    CO,
    t1_gt_t2,
    \b_reg[6] );
  output [7:0]D;
  output [6:0]a;
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[1]_1 ;
  output \FSM_sequential_state_reg[1]_2 ;
  output sel_add;
  output sel_data;
  output c_clr;
  output c_ld;
  output d_clr;
  output d_ld;
  output t2_clr;
  output t1_ld;
  output t2_ld;
  output wen;
  input [7:0]ReadData0;
  input [6:0]t_n_IBUF;
  input in1;
  input t_clk_IBUF_BUFG;
  input t_go_IBUF;
  input [0:0]CO;
  input t1_gt_t2;
  input [0:0]\b_reg[6] ;

  wire [0:0]CO;
  wire [7:0]D;
  wire \FSM_sequential_nstate_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_nstate_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_nstate_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_nstate_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_nstate_reg[3]_i_1_n_0 ;
  wire \FSM_sequential_nstate_reg[3]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[1]_2 ;
  wire [7:0]ReadData0;
  wire [6:0]a;
  wire [0:0]\b_reg[6] ;
  wire c_clr;
  wire c_clr_reg_i_1_n_0;
  wire c_clr_reg_i_2_n_0;
  wire c_ld;
  wire c_ld_reg_i_1_n_0;
  wire c_ld_reg_i_2_n_0;
  wire d_clr;
  wire d_clr_reg_i_1_n_0;
  wire d_clr_reg_i_2_n_0;
  wire d_ld;
  wire d_ld_reg_i_1_n_0;
  wire d_ld_reg_i_2_n_0;
  wire in1;
  wire [3:0]nstate;
  wire ren_reg_i_1_n_0;
  wire sel_add;
  wire sel_add_reg_i_1_n_0;
  wire sel_add_reg_i_2_n_0;
  wire sel_data;
  wire sel_data_reg_i_1_n_0;
  wire sel_data_reg_i_2_n_0;
  (* RTL_KEEP = "yes" *) wire [3:0]state;
  wire t1_clr_reg_i_1_n_0;
  wire t1_clr_reg_i_2_n_0;
  wire t1_gt_t2;
  wire t1_ld;
  wire t1_ld_reg_i_1_n_0;
  wire t1_ld_reg_i_2_n_0;
  wire t2_clr;
  wire t2_ld;
  wire t2_ld_reg_i_1_n_0;
  wire t2_ld_reg_i_2_n_0;
  wire t_clk_IBUF_BUFG;
  wire t_go_IBUF;
  wire [6:0]t_n_IBUF;
  wire t_read;
  wire wen;
  wire wen_reg_i_1_n_0;
  wire wen_reg_i_2_n_0;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nstate_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nstate_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_nstate_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nstate[0]));
  LUT6 #(
    .INIT(64'h00000000CCCC0EEE)) 
    \FSM_sequential_nstate_reg[0]_i_1 
       (.I0(t_go_IBUF),
        .I1(\FSM_sequential_nstate_reg[1]_i_2_n_0 ),
        .I2(state[2]),
        .I3(CO),
        .I4(state[1]),
        .I5(state[0]),
        .O(\FSM_sequential_nstate_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nstate_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nstate_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_nstate_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nstate[1]));
  LUT6 #(
    .INIT(64'h2222ECEE2222CCCE)) 
    \FSM_sequential_nstate_reg[1]_i_1 
       (.I0(\FSM_sequential_nstate_reg[1]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(t1_gt_t2),
        .I4(state[1]),
        .I5(CO),
        .O(\FSM_sequential_nstate_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_sequential_nstate_reg[1]_i_2 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(\b_reg[6] ),
        .I3(state[1]),
        .O(\FSM_sequential_nstate_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nstate_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nstate_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_nstate_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nstate[2]));
  LUT3 #(
    .INIT(8'h2C)) 
    \FSM_sequential_nstate_reg[2]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\FSM_sequential_nstate_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nstate_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nstate_reg[3]_i_1_n_0 ),
        .G(\FSM_sequential_nstate_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nstate[3]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \FSM_sequential_nstate_reg[3]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(\FSM_sequential_nstate_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_nstate_reg[3]_i_2 
       (.I0(state[2]),
        .I1(state[3]),
        .O(\FSM_sequential_nstate_reg[3]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(t_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nstate[0]),
        .Q(state[0]),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(t_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nstate[1]),
        .Q(state[1]),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(t_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nstate[2]),
        .Q(state[2]),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(t_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nstate[3]),
        .Q(state[3]),
        .R(in1));
  LUT2 #(
    .INIT(4'h9)) 
    c0_carry__0_i_1
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(t_n_IBUF[6]),
        .O(a[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    c0_carry__0_i_2
       (.I0(t_n_IBUF[5]),
        .I1(t_n_IBUF[3]),
        .I2(t_n_IBUF[1]),
        .I3(t_n_IBUF[0]),
        .I4(t_n_IBUF[2]),
        .I5(t_n_IBUF[4]),
        .O(a[5]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    c0_carry__0_i_3
       (.I0(t_n_IBUF[4]),
        .I1(t_n_IBUF[2]),
        .I2(t_n_IBUF[0]),
        .I3(t_n_IBUF[1]),
        .I4(t_n_IBUF[3]),
        .O(a[4]));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    c0_carry_i_10
       (.I0(t_n_IBUF[3]),
        .I1(t_n_IBUF[1]),
        .I2(t_n_IBUF[0]),
        .I3(t_n_IBUF[2]),
        .I4(t_n_IBUF[4]),
        .O(\FSM_sequential_state_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    c0_carry_i_11
       (.I0(t_n_IBUF[4]),
        .I1(t_n_IBUF[2]),
        .I2(t_n_IBUF[0]),
        .I3(t_n_IBUF[1]),
        .I4(t_n_IBUF[3]),
        .I5(t_n_IBUF[5]),
        .O(\FSM_sequential_state_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    c0_carry_i_1__2
       (.I0(t_n_IBUF[3]),
        .I1(t_n_IBUF[1]),
        .I2(t_n_IBUF[0]),
        .I3(t_n_IBUF[2]),
        .O(a[3]));
  LUT3 #(
    .INIT(8'hA9)) 
    c0_carry_i_2__2
       (.I0(t_n_IBUF[2]),
        .I1(t_n_IBUF[0]),
        .I2(t_n_IBUF[1]),
        .O(a[2]));
  LUT2 #(
    .INIT(4'h9)) 
    c0_carry_i_3__2
       (.I0(t_n_IBUF[1]),
        .I1(t_n_IBUF[0]),
        .O(a[1]));
  LUT1 #(
    .INIT(2'h1)) 
    c0_carry_i_4__2
       (.I0(t_n_IBUF[0]),
        .O(a[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    c0_carry_i_9
       (.I0(t_n_IBUF[4]),
        .I1(t_n_IBUF[2]),
        .I2(t_n_IBUF[0]),
        .I3(t_n_IBUF[1]),
        .I4(t_n_IBUF[3]),
        .I5(t_n_IBUF[5]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    c_clr_reg
       (.CLR(1'b0),
        .D(c_clr_reg_i_1_n_0),
        .G(c_clr_reg_i_2_n_0),
        .GE(1'b1),
        .Q(c_clr));
  LUT2 #(
    .INIT(4'h1)) 
    c_clr_reg_i_1
       (.I0(state[1]),
        .I1(state[3]),
        .O(c_clr_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h0006)) 
    c_clr_reg_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(c_clr_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    c_ld_reg
       (.CLR(1'b0),
        .D(c_ld_reg_i_1_n_0),
        .G(c_ld_reg_i_2_n_0),
        .GE(1'b1),
        .Q(c_ld));
  LUT2 #(
    .INIT(4'h2)) 
    c_ld_reg_i_1
       (.I0(state[2]),
        .I1(state[3]),
        .O(c_ld_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h0034)) 
    c_ld_reg_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .O(c_ld_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    d_clr_reg
       (.CLR(1'b0),
        .D(d_clr_reg_i_1_n_0),
        .G(d_clr_reg_i_2_n_0),
        .GE(1'b1),
        .Q(d_clr));
  LUT1 #(
    .INIT(2'h1)) 
    d_clr_reg_i_1
       (.I0(state[2]),
        .O(d_clr_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h1004)) 
    d_clr_reg_i_2
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(d_clr_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    d_ld_reg
       (.CLR(1'b0),
        .D(d_ld_reg_i_1_n_0),
        .G(d_ld_reg_i_2_n_0),
        .GE(1'b1),
        .Q(d_ld));
  LUT2 #(
    .INIT(4'h2)) 
    d_ld_reg_i_1
       (.I0(state[3]),
        .I1(state[2]),
        .O(d_ld_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h2024)) 
    d_ld_reg_i_2
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .O(d_ld_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ren_reg
       (.CLR(1'b0),
        .D(t2_ld_reg_i_1_n_0),
        .G(ren_reg_i_1_n_0),
        .GE(1'b1),
        .Q(t_read));
  LUT4 #(
    .INIT(16'h0310)) 
    ren_reg_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .O(ren_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    sel_add_reg
       (.CLR(1'b0),
        .D(sel_add_reg_i_1_n_0),
        .G(sel_add_reg_i_2_n_0),
        .GE(1'b1),
        .Q(sel_add));
  LUT3 #(
    .INIT(8'h60)) 
    sel_add_reg_i_1
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .O(sel_add_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h1C22)) 
    sel_add_reg_i_2
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[1]),
        .O(sel_add_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    sel_data_reg
       (.CLR(1'b0),
        .D(sel_data_reg_i_1_n_0),
        .G(sel_data_reg_i_2_n_0),
        .GE(1'b1),
        .Q(sel_data));
  LUT2 #(
    .INIT(4'h2)) 
    sel_data_reg_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .O(sel_data_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h1044)) 
    sel_data_reg_i_2
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .O(sel_data_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    t1_clr_reg
       (.CLR(1'b0),
        .D(t1_clr_reg_i_1_n_0),
        .G(t1_clr_reg_i_2_n_0),
        .GE(1'b1),
        .Q(t2_clr));
  LUT3 #(
    .INIT(8'h01)) 
    t1_clr_reg_i_1
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .O(t1_clr_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h0444)) 
    t1_clr_reg_i_2
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(t1_clr_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    t1_ld_reg
       (.CLR(1'b0),
        .D(t1_ld_reg_i_1_n_0),
        .G(t1_ld_reg_i_2_n_0),
        .GE(1'b1),
        .Q(t1_ld));
  LUT3 #(
    .INIT(8'h04)) 
    t1_ld_reg_i_1
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .O(t1_ld_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h4044)) 
    t1_ld_reg_i_2
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(t1_ld_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    t2_ld_reg
       (.CLR(1'b0),
        .D(t2_ld_reg_i_1_n_0),
        .G(t2_ld_reg_i_2_n_0),
        .GE(1'b1),
        .Q(t2_ld));
  LUT2 #(
    .INIT(4'h2)) 
    t2_ld_reg_i_1
       (.I0(state[1]),
        .I1(state[3]),
        .O(t2_ld_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    t2_ld_reg_i_2
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(t2_ld_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t_sorted_data_OBUF[0]_inst_i_1 
       (.I0(t_read),
        .I1(ReadData0[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t_sorted_data_OBUF[1]_inst_i_1 
       (.I0(t_read),
        .I1(ReadData0[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t_sorted_data_OBUF[2]_inst_i_1 
       (.I0(t_read),
        .I1(ReadData0[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t_sorted_data_OBUF[3]_inst_i_1 
       (.I0(t_read),
        .I1(ReadData0[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t_sorted_data_OBUF[4]_inst_i_1 
       (.I0(t_read),
        .I1(ReadData0[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t_sorted_data_OBUF[5]_inst_i_1 
       (.I0(t_read),
        .I1(ReadData0[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t_sorted_data_OBUF[6]_inst_i_1 
       (.I0(t_read),
        .I1(ReadData0[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t_sorted_data_OBUF[7]_inst_i_1 
       (.I0(t_read),
        .I1(ReadData0[7]),
        .O(D[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    wen_reg
       (.CLR(1'b0),
        .D(wen_reg_i_1_n_0),
        .G(wen_reg_i_2_n_0),
        .GE(1'b1),
        .Q(wen));
  LUT2 #(
    .INIT(4'h1)) 
    wen_reg_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .O(wen_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h01C0)) 
    wen_reg_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .O(wen_reg_i_2_n_0));
endmodule

module sort_datapath
   (\FSM_sequential_state_reg[1] ,
    CO,
    Address,
    WriteData,
    t1_gt_t2,
    a,
    t_n_IBUF,
    \t_n[4] ,
    \t_n[5] ,
    \t_n[5]_0 ,
    sel_add,
    SR,
    E,
    D,
    t_clk_IBUF_BUFG,
    \FSM_sequential_state_reg[1]_0 ,
    sel_data,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[1]_1 ,
    \FSM_sequential_state_reg[2]_0 );
  output [0:0]\FSM_sequential_state_reg[1] ;
  output [0:0]CO;
  output [4:0]Address;
  output [7:0]WriteData;
  output t1_gt_t2;
  input [6:0]a;
  input [6:0]t_n_IBUF;
  input \t_n[4] ;
  input \t_n[5] ;
  input \t_n[5]_0 ;
  input sel_add;
  input [0:0]SR;
  input [0:0]E;
  input [7:0]D;
  input t_clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg[1]_0 ;
  input sel_data;
  input [0:0]\FSM_sequential_state_reg[2] ;
  input [0:0]\FSM_sequential_state_reg[3] ;
  input [0:0]\FSM_sequential_state_reg[1]_1 ;
  input [0:0]\FSM_sequential_state_reg[2]_0 ;

  wire [4:0]Address;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg[1] ;
  wire [0:0]\FSM_sequential_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_state_reg[1]_1 ;
  wire [0:0]\FSM_sequential_state_reg[2] ;
  wire [0:0]\FSM_sequential_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_state_reg[3] ;
  wire [0:0]SR;
  wire [7:0]WriteData;
  wire [6:0]a;
  wire [7:0]b_reg__0;
  wire c_reg_m_n_0;
  wire c_reg_m_n_1;
  wire c_reg_m_n_10;
  wire c_reg_m_n_11;
  wire c_reg_m_n_12;
  wire c_reg_m_n_13;
  wire c_reg_m_n_14;
  wire c_reg_m_n_15;
  wire c_reg_m_n_16;
  wire c_reg_m_n_17;
  wire c_reg_m_n_18;
  wire c_reg_m_n_19;
  wire c_reg_m_n_2;
  wire c_reg_m_n_20;
  wire c_reg_m_n_21;
  wire c_reg_m_n_22;
  wire c_reg_m_n_23;
  wire c_reg_m_n_3;
  wire c_reg_m_n_4;
  wire c_reg_m_n_5;
  wire c_reg_m_n_6;
  wire c_reg_m_n_7;
  wire c_reg_m_n_8;
  wire c_reg_m_n_9;
  wire c_sub_m_n_0;
  wire c_sub_m_n_1;
  wire c_sub_m_n_2;
  wire c_sub_m_n_3;
  wire c_sub_m_n_4;
  wire c_sub_m_n_5;
  wire c_sub_m_n_6;
  wire c_sub_m_n_7;
  wire sel_add;
  wire sel_data;
  wire t1_gt_t2;
  wire t1_reg_m_n_0;
  wire t1_reg_m_n_1;
  wire t1_reg_m_n_10;
  wire t1_reg_m_n_11;
  wire t1_reg_m_n_12;
  wire t1_reg_m_n_13;
  wire t1_reg_m_n_14;
  wire t1_reg_m_n_15;
  wire t1_reg_m_n_2;
  wire t1_reg_m_n_3;
  wire t1_reg_m_n_4;
  wire t1_reg_m_n_5;
  wire t1_reg_m_n_6;
  wire t1_reg_m_n_7;
  wire t1_reg_m_n_8;
  wire t1_reg_m_n_9;
  wire t2_reg_m_n_0;
  wire t2_reg_m_n_1;
  wire t2_reg_m_n_2;
  wire t2_reg_m_n_3;
  wire t2_reg_m_n_4;
  wire t2_reg_m_n_5;
  wire t2_reg_m_n_6;
  wire t2_reg_m_n_7;
  wire t_clk_IBUF_BUFG;
  wire \t_n[4] ;
  wire \t_n[5] ;
  wire \t_n[5]_0 ;
  wire [6:0]t_n_IBUF;

  sort_lt c_lt_m
       (.DI({c_reg_m_n_0,c_reg_m_n_1,c_reg_m_n_2,c_reg_m_n_3}),
        .\FSM_sequential_state_reg[1] (\FSM_sequential_state_reg[1] ),
        .S({c_reg_m_n_4,c_reg_m_n_5,c_reg_m_n_6,c_reg_m_n_7}));
  sort_reg c_reg_m
       (.DI({c_reg_m_n_0,c_reg_m_n_1,c_reg_m_n_2,c_reg_m_n_3}),
        .\FSM_sequential_state_reg[0] ({c_reg_m_n_8,c_reg_m_n_9,c_reg_m_n_10,c_reg_m_n_11}),
        .\FSM_sequential_state_reg[0]_0 ({c_reg_m_n_12,c_reg_m_n_13,c_reg_m_n_14,c_reg_m_n_15}),
        .\FSM_sequential_state_reg[0]_1 ({c_reg_m_n_16,c_reg_m_n_17,c_reg_m_n_18,c_reg_m_n_19}),
        .\FSM_sequential_state_reg[0]_2 ({c_reg_m_n_20,c_reg_m_n_21,c_reg_m_n_22,c_reg_m_n_23}),
        .\FSM_sequential_state_reg[1] (\FSM_sequential_state_reg[1]_1 ),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2]_0 ),
        .O({c_sub_m_n_0,c_sub_m_n_1,c_sub_m_n_2,c_sub_m_n_3}),
        .Q(b_reg__0),
        .S({c_reg_m_n_4,c_reg_m_n_5,c_reg_m_n_6,c_reg_m_n_7}),
        .\b_reg[7]_0 ({c_sub_m_n_4,c_sub_m_n_5,c_sub_m_n_6,c_sub_m_n_7}),
        .t_clk_IBUF_BUFG(t_clk_IBUF_BUFG),
        .\t_n[4] (\t_n[4] ),
        .\t_n[5] (\t_n[5] ),
        .\t_n[5]_0 (\t_n[5]_0 ),
        .t_n_IBUF(t_n_IBUF));
  sort_sub c_sub_m
       (.\FSM_sequential_state_reg[0] ({c_sub_m_n_4,c_sub_m_n_5,c_sub_m_n_6,c_sub_m_n_7}),
        .O({c_sub_m_n_0,c_sub_m_n_1,c_sub_m_n_2,c_sub_m_n_3}),
        .a(a),
        .\b_reg[3] ({c_reg_m_n_16,c_reg_m_n_17,c_reg_m_n_18,c_reg_m_n_19}),
        .\b_reg[7] ({c_reg_m_n_20,c_reg_m_n_21,c_reg_m_n_22,c_reg_m_n_23}));
  sort_lt_0 d_lt_m
       (.CO(CO),
        .\b_reg[6] ({c_reg_m_n_12,c_reg_m_n_13,c_reg_m_n_14,c_reg_m_n_15}),
        .\b_reg[6]_0 ({c_reg_m_n_8,c_reg_m_n_9,c_reg_m_n_10,c_reg_m_n_11}));
  sort_reg_1 d_reg_m
       (.Address(Address),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2] ),
        .\FSM_sequential_state_reg[3] (\FSM_sequential_state_reg[3] ),
        .Q(b_reg__0),
        .sel_add(sel_add),
        .t_clk_IBUF_BUFG(t_clk_IBUF_BUFG));
  sort_gt t12_gt_m
       (.DI({t1_reg_m_n_12,t1_reg_m_n_13,t1_reg_m_n_14,t1_reg_m_n_15}),
        .S({t1_reg_m_n_0,t1_reg_m_n_1,t1_reg_m_n_2,t1_reg_m_n_3}),
        .t1_gt_t2(t1_gt_t2));
  sort_mux t12_mux_m
       (.Q({t2_reg_m_n_0,t2_reg_m_n_1,t2_reg_m_n_2,t2_reg_m_n_3,t2_reg_m_n_4,t2_reg_m_n_5,t2_reg_m_n_6,t2_reg_m_n_7}),
        .WriteData(WriteData),
        .\b_reg[7] ({t1_reg_m_n_4,t1_reg_m_n_5,t1_reg_m_n_6,t1_reg_m_n_7,t1_reg_m_n_8,t1_reg_m_n_9,t1_reg_m_n_10,t1_reg_m_n_11}),
        .sel_data(sel_data));
  sort_reg_2 t1_reg_m
       (.D(D),
        .DI({t1_reg_m_n_12,t1_reg_m_n_13,t1_reg_m_n_14,t1_reg_m_n_15}),
        .E(E),
        .Q({t1_reg_m_n_4,t1_reg_m_n_5,t1_reg_m_n_6,t1_reg_m_n_7,t1_reg_m_n_8,t1_reg_m_n_9,t1_reg_m_n_10,t1_reg_m_n_11}),
        .S({t1_reg_m_n_0,t1_reg_m_n_1,t1_reg_m_n_2,t1_reg_m_n_3}),
        .SR(SR),
        .\b_reg[7]_0 ({t2_reg_m_n_0,t2_reg_m_n_1,t2_reg_m_n_2,t2_reg_m_n_3,t2_reg_m_n_4,t2_reg_m_n_5,t2_reg_m_n_6,t2_reg_m_n_7}),
        .t_clk_IBUF_BUFG(t_clk_IBUF_BUFG));
  sort_reg_3 t2_reg_m
       (.D(D),
        .\FSM_sequential_state_reg[1] (\FSM_sequential_state_reg[1]_0 ),
        .Q({t2_reg_m_n_0,t2_reg_m_n_1,t2_reg_m_n_2,t2_reg_m_n_3,t2_reg_m_n_4,t2_reg_m_n_5,t2_reg_m_n_6,t2_reg_m_n_7}),
        .SR(SR),
        .t_clk_IBUF_BUFG(t_clk_IBUF_BUFG));
endmodule

module sort_gt
   (t1_gt_t2,
    DI,
    S);
  output t1_gt_t2;
  input [3:0]DI;
  input [3:0]S;

  wire [3:0]DI;
  wire [3:0]S;
  wire c0_carry_n_1;
  wire c0_carry_n_2;
  wire c0_carry_n_3;
  wire t1_gt_t2;
  wire [3:0]NLW_c0_carry_O_UNCONNECTED;

  CARRY4 c0_carry
       (.CI(1'b0),
        .CO({t1_gt_t2,c0_carry_n_1,c0_carry_n_2,c0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_c0_carry_O_UNCONNECTED[3:0]),
        .S(S));
endmodule

module sort_lt
   (\FSM_sequential_state_reg[1] ,
    DI,
    S);
  output [0:0]\FSM_sequential_state_reg[1] ;
  input [3:0]DI;
  input [3:0]S;

  wire [3:0]DI;
  wire [0:0]\FSM_sequential_state_reg[1] ;
  wire [3:0]S;
  wire c0_carry_n_1;
  wire c0_carry_n_2;
  wire c0_carry_n_3;
  wire [3:0]NLW_c0_carry_O_UNCONNECTED;

  CARRY4 c0_carry
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[1] ,c0_carry_n_1,c0_carry_n_2,c0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_c0_carry_O_UNCONNECTED[3:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "sort_lt" *) 
module sort_lt_0
   (CO,
    \b_reg[6] ,
    \b_reg[6]_0 );
  output [0:0]CO;
  input [3:0]\b_reg[6] ;
  input [3:0]\b_reg[6]_0 ;

  wire [0:0]CO;
  wire [3:0]\b_reg[6] ;
  wire [3:0]\b_reg[6]_0 ;
  wire c0_carry_n_1;
  wire c0_carry_n_2;
  wire c0_carry_n_3;
  wire [3:0]NLW_c0_carry_O_UNCONNECTED;

  CARRY4 c0_carry
       (.CI(1'b0),
        .CO({CO,c0_carry_n_1,c0_carry_n_2,c0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\b_reg[6] ),
        .O(NLW_c0_carry_O_UNCONNECTED[3:0]),
        .S(\b_reg[6]_0 ));
endmodule

module sort_mux
   (WriteData,
    Q,
    \b_reg[7] ,
    sel_data);
  output [7:0]WriteData;
  input [7:0]Q;
  input [7:0]\b_reg[7] ;
  input sel_data;

  wire [7:0]Q;
  wire [7:0]WriteData;
  wire [7:0]\b_reg[7] ;
  wire sel_data;

  LUT3 #(
    .INIT(8'hAC)) 
    Memory_reg_0_31_0_0_i_1
       (.I0(Q[0]),
        .I1(\b_reg[7] [0]),
        .I2(sel_data),
        .O(WriteData[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    Memory_reg_0_31_1_1_i_1
       (.I0(Q[1]),
        .I1(\b_reg[7] [1]),
        .I2(sel_data),
        .O(WriteData[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    Memory_reg_0_31_2_2_i_1
       (.I0(Q[2]),
        .I1(\b_reg[7] [2]),
        .I2(sel_data),
        .O(WriteData[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    Memory_reg_0_31_3_3_i_1
       (.I0(Q[3]),
        .I1(\b_reg[7] [3]),
        .I2(sel_data),
        .O(WriteData[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    Memory_reg_0_31_4_4_i_1
       (.I0(Q[4]),
        .I1(\b_reg[7] [4]),
        .I2(sel_data),
        .O(WriteData[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    Memory_reg_0_31_5_5_i_1
       (.I0(Q[5]),
        .I1(\b_reg[7] [5]),
        .I2(sel_data),
        .O(WriteData[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    Memory_reg_0_31_6_6_i_1
       (.I0(Q[6]),
        .I1(\b_reg[7] [6]),
        .I2(sel_data),
        .O(WriteData[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    Memory_reg_0_31_7_7_i_1
       (.I0(Q[7]),
        .I1(\b_reg[7] [7]),
        .I2(sel_data),
        .O(WriteData[7]));
endmodule

module sort_reg
   (DI,
    S,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[0]_1 ,
    \FSM_sequential_state_reg[0]_2 ,
    t_n_IBUF,
    \t_n[4] ,
    \t_n[5] ,
    \t_n[5]_0 ,
    O,
    Q,
    \b_reg[7]_0 ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[2] ,
    t_clk_IBUF_BUFG);
  output [3:0]DI;
  output [3:0]S;
  output [3:0]\FSM_sequential_state_reg[0] ;
  output [3:0]\FSM_sequential_state_reg[0]_0 ;
  output [3:0]\FSM_sequential_state_reg[0]_1 ;
  output [3:0]\FSM_sequential_state_reg[0]_2 ;
  input [6:0]t_n_IBUF;
  input \t_n[4] ;
  input \t_n[5] ;
  input \t_n[5]_0 ;
  input [3:0]O;
  input [7:0]Q;
  input [3:0]\b_reg[7]_0 ;
  input [0:0]\FSM_sequential_state_reg[1] ;
  input [0:0]\FSM_sequential_state_reg[2] ;
  input t_clk_IBUF_BUFG;

  wire [3:0]DI;
  wire [3:0]\FSM_sequential_state_reg[0] ;
  wire [3:0]\FSM_sequential_state_reg[0]_0 ;
  wire [3:0]\FSM_sequential_state_reg[0]_1 ;
  wire [3:0]\FSM_sequential_state_reg[0]_2 ;
  wire [0:0]\FSM_sequential_state_reg[1] ;
  wire [0:0]\FSM_sequential_state_reg[2] ;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire [7:1]b0;
  wire \b[0]_i_1__0_n_0 ;
  wire \b[7]_i_2__0_n_0 ;
  wire [3:0]\b_reg[7]_0 ;
  wire [7:0]b_reg__0;
  wire t_clk_IBUF_BUFG;
  wire \t_n[4] ;
  wire \t_n[5] ;
  wire \t_n[5]_0 ;
  wire [6:0]t_n_IBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \b[0]_i_1__0 
       (.I0(b_reg__0[0]),
        .O(\b[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b[1]_i_1 
       (.I0(b_reg__0[0]),
        .I1(b_reg__0[1]),
        .O(b0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \b[2]_i_1 
       (.I0(b_reg__0[0]),
        .I1(b_reg__0[1]),
        .I2(b_reg__0[2]),
        .O(b0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \b[3]_i_1 
       (.I0(b_reg__0[1]),
        .I1(b_reg__0[0]),
        .I2(b_reg__0[2]),
        .I3(b_reg__0[3]),
        .O(b0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \b[4]_i_1 
       (.I0(b_reg__0[2]),
        .I1(b_reg__0[0]),
        .I2(b_reg__0[1]),
        .I3(b_reg__0[3]),
        .I4(b_reg__0[4]),
        .O(b0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \b[5]_i_1__0 
       (.I0(b_reg__0[3]),
        .I1(b_reg__0[1]),
        .I2(b_reg__0[0]),
        .I3(b_reg__0[2]),
        .I4(b_reg__0[4]),
        .I5(b_reg__0[5]),
        .O(b0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b[6]_i_1__0 
       (.I0(\b[7]_i_2__0_n_0 ),
        .I1(b_reg__0[6]),
        .O(b0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \b[7]_i_1__0 
       (.I0(\b[7]_i_2__0_n_0 ),
        .I1(b_reg__0[6]),
        .I2(b_reg__0[7]),
        .O(b0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \b[7]_i_2__0 
       (.I0(b_reg__0[5]),
        .I1(b_reg__0[3]),
        .I2(b_reg__0[1]),
        .I3(b_reg__0[0]),
        .I4(b_reg__0[2]),
        .I5(b_reg__0[4]),
        .O(\b[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[2] ),
        .D(\b[0]_i_1__0_n_0 ),
        .Q(b_reg__0[0]),
        .R(\FSM_sequential_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[2] ),
        .D(b0[1]),
        .Q(b_reg__0[1]),
        .R(\FSM_sequential_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[2] ),
        .D(b0[2]),
        .Q(b_reg__0[2]),
        .R(\FSM_sequential_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[2] ),
        .D(b0[3]),
        .Q(b_reg__0[3]),
        .R(\FSM_sequential_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[2] ),
        .D(b0[4]),
        .Q(b_reg__0[4]),
        .R(\FSM_sequential_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[2] ),
        .D(b0[5]),
        .Q(b_reg__0[5]),
        .R(\FSM_sequential_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[6] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[2] ),
        .D(b0[6]),
        .Q(b_reg__0[6]),
        .R(\FSM_sequential_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[7] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[2] ),
        .D(b0[7]),
        .Q(b_reg__0[7]),
        .R(\FSM_sequential_state_reg[1] ));
  LUT4 #(
    .INIT(16'hA956)) 
    c0_carry__0_i_4
       (.I0(t_n_IBUF[6]),
        .I1(\t_n[5]_0 ),
        .I2(t_n_IBUF[5]),
        .I3(b_reg__0[7]),
        .O(\FSM_sequential_state_reg[0]_2 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    c0_carry__0_i_5
       (.I0(\t_n[5]_0 ),
        .I1(t_n_IBUF[5]),
        .I2(b_reg__0[6]),
        .O(\FSM_sequential_state_reg[0]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    c0_carry__0_i_6
       (.I0(\t_n[5] ),
        .I1(b_reg__0[5]),
        .O(\FSM_sequential_state_reg[0]_2 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    c0_carry__0_i_7
       (.I0(t_n_IBUF[4]),
        .I1(t_n_IBUF[2]),
        .I2(t_n_IBUF[0]),
        .I3(t_n_IBUF[1]),
        .I4(t_n_IBUF[3]),
        .I5(b_reg__0[4]),
        .O(\FSM_sequential_state_reg[0]_2 [0]));
  LUT5 #(
    .INIT(32'h4001FD43)) 
    c0_carry_i_1__0
       (.I0(b_reg__0[6]),
        .I1(t_n_IBUF[5]),
        .I2(\t_n[5]_0 ),
        .I3(t_n_IBUF[6]),
        .I4(b_reg__0[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    c0_carry_i_1__1
       (.I0(\b_reg[7]_0 [2]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\b_reg[7]_0 [3]),
        .O(\FSM_sequential_state_reg[0]_0 [3]));
  LUT4 #(
    .INIT(16'h011F)) 
    c0_carry_i_2__0
       (.I0(b_reg__0[4]),
        .I1(\t_n[4] ),
        .I2(\t_n[5] ),
        .I3(b_reg__0[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    c0_carry_i_2__1
       (.I0(\b_reg[7]_0 [0]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\b_reg[7]_0 [1]),
        .O(\FSM_sequential_state_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h44400001FFFD4443)) 
    c0_carry_i_3__0
       (.I0(b_reg__0[2]),
        .I1(t_n_IBUF[2]),
        .I2(t_n_IBUF[0]),
        .I3(t_n_IBUF[1]),
        .I4(t_n_IBUF[3]),
        .I5(b_reg__0[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    c0_carry_i_3__1
       (.I0(O[2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(O[3]),
        .O(\FSM_sequential_state_reg[0]_0 [1]));
  LUT4 #(
    .INIT(16'h01D3)) 
    c0_carry_i_4__0
       (.I0(b_reg__0[0]),
        .I1(t_n_IBUF[0]),
        .I2(t_n_IBUF[1]),
        .I3(b_reg__0[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    c0_carry_i_4__1
       (.I0(O[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(O[1]),
        .O(\FSM_sequential_state_reg[0]_0 [0]));
  LUT5 #(
    .INIT(32'h94020294)) 
    c0_carry_i_5__0
       (.I0(b_reg__0[6]),
        .I1(t_n_IBUF[5]),
        .I2(\t_n[5]_0 ),
        .I3(t_n_IBUF[6]),
        .I4(b_reg__0[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    c0_carry_i_5__1
       (.I0(\b_reg[7]_0 [2]),
        .I1(Q[6]),
        .I2(\b_reg[7]_0 [3]),
        .I3(Q[7]),
        .O(\FSM_sequential_state_reg[0] [3]));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    c0_carry_i_5__2
       (.I0(t_n_IBUF[3]),
        .I1(t_n_IBUF[1]),
        .I2(t_n_IBUF[0]),
        .I3(t_n_IBUF[2]),
        .I4(b_reg__0[3]),
        .O(\FSM_sequential_state_reg[0]_1 [3]));
  LUT4 #(
    .INIT(16'h0660)) 
    c0_carry_i_6__0
       (.I0(\t_n[4] ),
        .I1(b_reg__0[4]),
        .I2(\t_n[5] ),
        .I3(b_reg__0[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    c0_carry_i_6__1
       (.I0(\b_reg[7]_0 [0]),
        .I1(Q[4]),
        .I2(\b_reg[7]_0 [1]),
        .I3(Q[5]),
        .O(\FSM_sequential_state_reg[0] [2]));
  LUT4 #(
    .INIT(16'hA956)) 
    c0_carry_i_6__2
       (.I0(t_n_IBUF[2]),
        .I1(t_n_IBUF[0]),
        .I2(t_n_IBUF[1]),
        .I3(b_reg__0[2]),
        .O(\FSM_sequential_state_reg[0]_1 [2]));
  LUT6 #(
    .INIT(64'h9994000200029994)) 
    c0_carry_i_7__0
       (.I0(b_reg__0[2]),
        .I1(t_n_IBUF[2]),
        .I2(t_n_IBUF[0]),
        .I3(t_n_IBUF[1]),
        .I4(t_n_IBUF[3]),
        .I5(b_reg__0[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    c0_carry_i_7__1
       (.I0(O[2]),
        .I1(Q[2]),
        .I2(O[3]),
        .I3(Q[3]),
        .O(\FSM_sequential_state_reg[0] [1]));
  LUT3 #(
    .INIT(8'h96)) 
    c0_carry_i_7__2
       (.I0(t_n_IBUF[1]),
        .I1(t_n_IBUF[0]),
        .I2(b_reg__0[1]),
        .O(\FSM_sequential_state_reg[0]_1 [1]));
  LUT4 #(
    .INIT(16'h4224)) 
    c0_carry_i_8__0
       (.I0(b_reg__0[0]),
        .I1(t_n_IBUF[0]),
        .I2(t_n_IBUF[1]),
        .I3(b_reg__0[1]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    c0_carry_i_8__1
       (.I0(O[0]),
        .I1(Q[0]),
        .I2(O[1]),
        .I3(Q[1]),
        .O(\FSM_sequential_state_reg[0] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    c0_carry_i_8__2
       (.I0(t_n_IBUF[0]),
        .I1(b_reg__0[0]),
        .O(\FSM_sequential_state_reg[0]_1 [0]));
endmodule

(* ORIG_REF_NAME = "sort_reg" *) 
module sort_reg_1
   (Q,
    Address,
    sel_add,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[3] ,
    t_clk_IBUF_BUFG);
  output [7:0]Q;
  output [4:0]Address;
  input sel_add;
  input [0:0]\FSM_sequential_state_reg[2] ;
  input [0:0]\FSM_sequential_state_reg[3] ;
  input t_clk_IBUF_BUFG;

  wire [4:0]Address;
  wire [0:0]\FSM_sequential_state_reg[2] ;
  wire [0:0]\FSM_sequential_state_reg[3] ;
  wire [7:0]Q;
  wire [4:0]b;
  wire \b[7]_i_2_n_0 ;
  wire [7:5]b__0;
  wire sel_add;
  wire t_clk_IBUF_BUFG;

  LUT2 #(
    .INIT(4'h6)) 
    Memory_reg_0_31_0_0_i_2
       (.I0(Q[0]),
        .I1(sel_add),
        .O(Address[0]));
  LUT3 #(
    .INIT(8'h6C)) 
    Memory_reg_0_31_0_0_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(sel_add),
        .O(Address[1]));
  LUT4 #(
    .INIT(16'h78F0)) 
    Memory_reg_0_31_0_0_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(sel_add),
        .O(Address[2]));
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    Memory_reg_0_31_0_0_i_5
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(sel_add),
        .O(Address[3]));
  LUT6 #(
    .INIT(64'h7FFF8000FFFF0000)) 
    Memory_reg_0_31_0_0_i_6
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(sel_add),
        .O(Address[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \b[0]_i_1 
       (.I0(Q[0]),
        .O(b[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(b[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \b[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(b[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \b[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(b[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \b[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(b[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \b[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(b__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b[6]_i_1 
       (.I0(\b[7]_i_2_n_0 ),
        .I1(Q[6]),
        .O(b__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \b[7]_i_1 
       (.I0(\b[7]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(b__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \b[7]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\b[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3] ),
        .D(b[0]),
        .Q(Q[0]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3] ),
        .D(b[1]),
        .Q(Q[1]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3] ),
        .D(b[2]),
        .Q(Q[2]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3] ),
        .D(b[3]),
        .Q(Q[3]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3] ),
        .D(b[4]),
        .Q(Q[4]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3] ),
        .D(b__0[5]),
        .Q(Q[5]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[6] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3] ),
        .D(b__0[6]),
        .Q(Q[6]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[7] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3] ),
        .D(b__0[7]),
        .Q(Q[7]),
        .R(\FSM_sequential_state_reg[2] ));
endmodule

(* ORIG_REF_NAME = "sort_reg" *) 
module sort_reg_2
   (S,
    Q,
    DI,
    \b_reg[7]_0 ,
    SR,
    E,
    D,
    t_clk_IBUF_BUFG);
  output [3:0]S;
  output [7:0]Q;
  output [3:0]DI;
  input [7:0]\b_reg[7]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input [7:0]D;
  input t_clk_IBUF_BUFG;

  wire [7:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [7:0]\b_reg[7]_0 ;
  wire t_clk_IBUF_BUFG;

  FDRE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(t_clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(t_clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(t_clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(t_clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(t_clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(t_clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[6] 
       (.C(t_clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[7] 
       (.C(t_clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  LUT4 #(
    .INIT(16'h2F02)) 
    c0_carry_i_1
       (.I0(Q[6]),
        .I1(\b_reg[7]_0 [6]),
        .I2(\b_reg[7]_0 [7]),
        .I3(Q[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    c0_carry_i_2
       (.I0(Q[4]),
        .I1(\b_reg[7]_0 [4]),
        .I2(\b_reg[7]_0 [5]),
        .I3(Q[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    c0_carry_i_3
       (.I0(Q[2]),
        .I1(\b_reg[7]_0 [2]),
        .I2(\b_reg[7]_0 [3]),
        .I3(Q[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    c0_carry_i_4
       (.I0(Q[0]),
        .I1(\b_reg[7]_0 [0]),
        .I2(\b_reg[7]_0 [1]),
        .I3(Q[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    c0_carry_i_5
       (.I0(Q[6]),
        .I1(\b_reg[7]_0 [6]),
        .I2(Q[7]),
        .I3(\b_reg[7]_0 [7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    c0_carry_i_6
       (.I0(Q[4]),
        .I1(\b_reg[7]_0 [4]),
        .I2(Q[5]),
        .I3(\b_reg[7]_0 [5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    c0_carry_i_7
       (.I0(Q[2]),
        .I1(\b_reg[7]_0 [2]),
        .I2(Q[3]),
        .I3(\b_reg[7]_0 [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    c0_carry_i_8
       (.I0(Q[0]),
        .I1(\b_reg[7]_0 [0]),
        .I2(Q[1]),
        .I3(\b_reg[7]_0 [1]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "sort_reg" *) 
module sort_reg_3
   (Q,
    SR,
    \FSM_sequential_state_reg[1] ,
    D,
    t_clk_IBUF_BUFG);
  output [7:0]Q;
  input [0:0]SR;
  input [0:0]\FSM_sequential_state_reg[1] ;
  input [7:0]D;
  input t_clk_IBUF_BUFG;

  wire [7:0]D;
  wire [0:0]\FSM_sequential_state_reg[1] ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire t_clk_IBUF_BUFG;

  FDRE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[1] ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[1] ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[1] ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[1] ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[1] ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[1] ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[6] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[1] ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[7] 
       (.C(t_clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[1] ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
endmodule

module sort_sub
   (O,
    \FSM_sequential_state_reg[0] ,
    a,
    \b_reg[3] ,
    \b_reg[7] );
  output [3:0]O;
  output [3:0]\FSM_sequential_state_reg[0] ;
  input [6:0]a;
  input [3:0]\b_reg[3] ;
  input [3:0]\b_reg[7] ;

  wire [3:0]\FSM_sequential_state_reg[0] ;
  wire [3:0]O;
  wire [6:0]a;
  wire [3:0]\b_reg[3] ;
  wire [3:0]\b_reg[7] ;
  wire c0_carry__0_n_1;
  wire c0_carry__0_n_2;
  wire c0_carry__0_n_3;
  wire c0_carry_n_0;
  wire c0_carry_n_1;
  wire c0_carry_n_2;
  wire c0_carry_n_3;
  wire [3:3]NLW_c0_carry__0_CO_UNCONNECTED;

  CARRY4 c0_carry
       (.CI(1'b0),
        .CO({c0_carry_n_0,c0_carry_n_1,c0_carry_n_2,c0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(a[3:0]),
        .O(O),
        .S(\b_reg[3] ));
  CARRY4 c0_carry__0
       (.CI(c0_carry_n_0),
        .CO({NLW_c0_carry__0_CO_UNCONNECTED[3],c0_carry__0_n_1,c0_carry__0_n_2,c0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,a[6:4]}),
        .O(\FSM_sequential_state_reg[0] ),
        .S(\b_reg[7] ));
endmodule

(* DATAWIDTH = "8" *) 
(* NotValidForBitStream *)
module sort_top
   (t_go,
    t_rst,
    t_clk,
    t_n,
    t_sorted_data);
  input t_go;
  input t_rst;
  input t_clk;
  input [7:0]t_n;
  output [7:0]t_sorted_data;

  wire [4:0]Address;
  wire [7:0]ReadData0;
  wire [7:0]WriteData;
  wire [6:0]a;
  wire controller_n_15;
  wire controller_n_16;
  wire controller_n_17;
  wire t_c_clr;
  wire t_c_ld;
  wire t_c_lt_n_1;
  wire t_clk;
  wire t_clk_IBUF;
  wire t_clk_IBUF_BUFG;
  wire t_d_clr;
  wire t_d_ld;
  wire t_d_lt_n_c_1;
  wire t_go;
  wire t_go_IBUF;
  wire [7:0]t_n;
  wire [7:0]t_n_IBUF;
  wire t_rst;
  wire t_rst_IBUF;
  wire t_sel_add;
  wire t_sel_data;
  wire [7:0]t_sorted_data;
  wire [7:0]t_sorted_data_OBUF;
  wire t_t1_gt_t2;
  wire t_t1_ld;
  wire t_t2_clr;
  wire t_t2_ld;
  wire t_write;

  sort_controller controller
       (.CO(t_d_lt_n_c_1),
        .D(t_sorted_data_OBUF),
        .\FSM_sequential_state_reg[1]_0 (controller_n_15),
        .\FSM_sequential_state_reg[1]_1 (controller_n_16),
        .\FSM_sequential_state_reg[1]_2 (controller_n_17),
        .ReadData0(ReadData0),
        .a(a),
        .\b_reg[6] (t_c_lt_n_1),
        .c_clr(t_c_clr),
        .c_ld(t_c_ld),
        .d_clr(t_d_clr),
        .d_ld(t_d_ld),
        .in1(t_rst_IBUF),
        .sel_add(t_sel_add),
        .sel_data(t_sel_data),
        .t1_gt_t2(t_t1_gt_t2),
        .t1_ld(t_t1_ld),
        .t2_clr(t_t2_clr),
        .t2_ld(t_t2_ld),
        .t_clk_IBUF_BUFG(t_clk_IBUF_BUFG),
        .t_go_IBUF(t_go_IBUF),
        .t_n_IBUF(t_n_IBUF[6:0]),
        .wen(t_write));
  sort_datapath datapath
       (.Address(Address),
        .CO(t_d_lt_n_c_1),
        .D(t_sorted_data_OBUF),
        .E(t_t1_ld),
        .\FSM_sequential_state_reg[1] (t_c_lt_n_1),
        .\FSM_sequential_state_reg[1]_0 (t_t2_ld),
        .\FSM_sequential_state_reg[1]_1 (t_c_clr),
        .\FSM_sequential_state_reg[2] (t_d_clr),
        .\FSM_sequential_state_reg[2]_0 (t_c_ld),
        .\FSM_sequential_state_reg[3] (t_d_ld),
        .SR(t_t2_clr),
        .WriteData(WriteData),
        .a(a),
        .sel_add(t_sel_add),
        .sel_data(t_sel_data),
        .t1_gt_t2(t_t1_gt_t2),
        .t_clk_IBUF_BUFG(t_clk_IBUF_BUFG),
        .\t_n[4] (controller_n_17),
        .\t_n[5] (controller_n_16),
        .\t_n[5]_0 (controller_n_15),
        .t_n_IBUF({t_n_IBUF[7:6],t_n_IBUF[4:0]}));
  DataMemory memory
       (.Address(Address),
        .ReadData0(ReadData0),
        .WriteData(WriteData),
        .t_clk_IBUF_BUFG(t_clk_IBUF_BUFG),
        .wen(t_write));
  BUFG t_clk_IBUF_BUFG_inst
       (.I(t_clk_IBUF),
        .O(t_clk_IBUF_BUFG));
  IBUF t_clk_IBUF_inst
       (.I(t_clk),
        .O(t_clk_IBUF));
  IBUF t_go_IBUF_inst
       (.I(t_go),
        .O(t_go_IBUF));
  IBUF \t_n_IBUF[0]_inst 
       (.I(t_n[0]),
        .O(t_n_IBUF[0]));
  IBUF \t_n_IBUF[1]_inst 
       (.I(t_n[1]),
        .O(t_n_IBUF[1]));
  IBUF \t_n_IBUF[2]_inst 
       (.I(t_n[2]),
        .O(t_n_IBUF[2]));
  IBUF \t_n_IBUF[3]_inst 
       (.I(t_n[3]),
        .O(t_n_IBUF[3]));
  IBUF \t_n_IBUF[4]_inst 
       (.I(t_n[4]),
        .O(t_n_IBUF[4]));
  IBUF \t_n_IBUF[5]_inst 
       (.I(t_n[5]),
        .O(t_n_IBUF[5]));
  IBUF \t_n_IBUF[6]_inst 
       (.I(t_n[6]),
        .O(t_n_IBUF[6]));
  IBUF \t_n_IBUF[7]_inst 
       (.I(t_n[7]),
        .O(t_n_IBUF[7]));
  IBUF t_rst_IBUF_inst
       (.I(t_rst),
        .O(t_rst_IBUF));
  OBUF \t_sorted_data_OBUF[0]_inst 
       (.I(t_sorted_data_OBUF[0]),
        .O(t_sorted_data[0]));
  OBUF \t_sorted_data_OBUF[1]_inst 
       (.I(t_sorted_data_OBUF[1]),
        .O(t_sorted_data[1]));
  OBUF \t_sorted_data_OBUF[2]_inst 
       (.I(t_sorted_data_OBUF[2]),
        .O(t_sorted_data[2]));
  OBUF \t_sorted_data_OBUF[3]_inst 
       (.I(t_sorted_data_OBUF[3]),
        .O(t_sorted_data[3]));
  OBUF \t_sorted_data_OBUF[4]_inst 
       (.I(t_sorted_data_OBUF[4]),
        .O(t_sorted_data[4]));
  OBUF \t_sorted_data_OBUF[5]_inst 
       (.I(t_sorted_data_OBUF[5]),
        .O(t_sorted_data[5]));
  OBUF \t_sorted_data_OBUF[6]_inst 
       (.I(t_sorted_data_OBUF[6]),
        .O(t_sorted_data[6]));
  OBUF \t_sorted_data_OBUF[7]_inst 
       (.I(t_sorted_data_OBUF[7]),
        .O(t_sorted_data[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
