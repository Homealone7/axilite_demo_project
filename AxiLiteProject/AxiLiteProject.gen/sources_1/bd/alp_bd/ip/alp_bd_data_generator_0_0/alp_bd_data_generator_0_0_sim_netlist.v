// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Oct 26 15:05:21 2024
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DAVIS/Research/Demo/AxiLiteProject/AxiLiteProject.gen/sources_1/bd/alp_bd/ip/alp_bd_data_generator_0_0/alp_bd_data_generator_0_0_sim_netlist.v
// Design      : alp_bd_data_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "alp_bd_data_generator_0_0,data_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "data_generator,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module alp_bd_data_generator_0_0
   (clk,
    rst_n,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN alp_bd_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN alp_bd_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire clk;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire rst_n;

  assign m_axis_tvalid = m_axis_tlast;
  alp_bd_data_generator_0_0_data_generator inst
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "data_generator" *) 
module alp_bd_data_generator_0_0_data_generator
   (m_axis_tdata,
    m_axis_tlast,
    clk,
    m_axis_tready,
    rst_n);
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  input clk;
  input m_axis_tready;
  input rst_n;

  wire clk;
  wire [9:0]cycle_counter;
  wire \cycle_counter[3]_i_2_n_0 ;
  wire \cycle_counter[5]_i_2_n_0 ;
  wire \cycle_counter[6]_i_2_n_0 ;
  wire \cycle_counter[6]_i_3_n_0 ;
  wire \cycle_counter[6]_i_4_n_0 ;
  wire [9:0]cycle_counter_0;
  wire \data_counter[31]_i_1_n_0 ;
  wire \data_counter[3]_i_2_n_0 ;
  wire \data_counter_reg[11]_i_1_n_0 ;
  wire \data_counter_reg[11]_i_1_n_1 ;
  wire \data_counter_reg[11]_i_1_n_2 ;
  wire \data_counter_reg[11]_i_1_n_3 ;
  wire \data_counter_reg[11]_i_1_n_4 ;
  wire \data_counter_reg[11]_i_1_n_5 ;
  wire \data_counter_reg[11]_i_1_n_6 ;
  wire \data_counter_reg[11]_i_1_n_7 ;
  wire \data_counter_reg[15]_i_1_n_0 ;
  wire \data_counter_reg[15]_i_1_n_1 ;
  wire \data_counter_reg[15]_i_1_n_2 ;
  wire \data_counter_reg[15]_i_1_n_3 ;
  wire \data_counter_reg[15]_i_1_n_4 ;
  wire \data_counter_reg[15]_i_1_n_5 ;
  wire \data_counter_reg[15]_i_1_n_6 ;
  wire \data_counter_reg[15]_i_1_n_7 ;
  wire \data_counter_reg[19]_i_1_n_0 ;
  wire \data_counter_reg[19]_i_1_n_1 ;
  wire \data_counter_reg[19]_i_1_n_2 ;
  wire \data_counter_reg[19]_i_1_n_3 ;
  wire \data_counter_reg[19]_i_1_n_4 ;
  wire \data_counter_reg[19]_i_1_n_5 ;
  wire \data_counter_reg[19]_i_1_n_6 ;
  wire \data_counter_reg[19]_i_1_n_7 ;
  wire \data_counter_reg[23]_i_1_n_0 ;
  wire \data_counter_reg[23]_i_1_n_1 ;
  wire \data_counter_reg[23]_i_1_n_2 ;
  wire \data_counter_reg[23]_i_1_n_3 ;
  wire \data_counter_reg[23]_i_1_n_4 ;
  wire \data_counter_reg[23]_i_1_n_5 ;
  wire \data_counter_reg[23]_i_1_n_6 ;
  wire \data_counter_reg[23]_i_1_n_7 ;
  wire \data_counter_reg[27]_i_1_n_0 ;
  wire \data_counter_reg[27]_i_1_n_1 ;
  wire \data_counter_reg[27]_i_1_n_2 ;
  wire \data_counter_reg[27]_i_1_n_3 ;
  wire \data_counter_reg[27]_i_1_n_4 ;
  wire \data_counter_reg[27]_i_1_n_5 ;
  wire \data_counter_reg[27]_i_1_n_6 ;
  wire \data_counter_reg[27]_i_1_n_7 ;
  wire \data_counter_reg[31]_i_2_n_1 ;
  wire \data_counter_reg[31]_i_2_n_2 ;
  wire \data_counter_reg[31]_i_2_n_3 ;
  wire \data_counter_reg[31]_i_2_n_4 ;
  wire \data_counter_reg[31]_i_2_n_5 ;
  wire \data_counter_reg[31]_i_2_n_6 ;
  wire \data_counter_reg[31]_i_2_n_7 ;
  wire \data_counter_reg[3]_i_1_n_0 ;
  wire \data_counter_reg[3]_i_1_n_1 ;
  wire \data_counter_reg[3]_i_1_n_2 ;
  wire \data_counter_reg[3]_i_1_n_3 ;
  wire \data_counter_reg[3]_i_1_n_4 ;
  wire \data_counter_reg[3]_i_1_n_5 ;
  wire \data_counter_reg[3]_i_1_n_6 ;
  wire \data_counter_reg[3]_i_1_n_7 ;
  wire \data_counter_reg[7]_i_1_n_0 ;
  wire \data_counter_reg[7]_i_1_n_1 ;
  wire \data_counter_reg[7]_i_1_n_2 ;
  wire \data_counter_reg[7]_i_1_n_3 ;
  wire \data_counter_reg[7]_i_1_n_4 ;
  wire \data_counter_reg[7]_i_1_n_5 ;
  wire \data_counter_reg[7]_i_1_n_6 ;
  wire \data_counter_reg[7]_i_1_n_7 ;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid_i_1_n_0;
  wire m_axis_tvalid_i_2_n_0;
  wire m_axis_tvalid_i_3_n_0;
  wire m_axis_tvalid_i_4_n_0;
  wire rst_n;
  wire state_inv_i_1_n_0;
  wire state_reg_inv_n_0;
  wire [3:3]\NLW_data_counter_reg[31]_i_2_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \cycle_counter[0]_i_1 
       (.I0(cycle_counter[0]),
        .O(cycle_counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cycle_counter[1]_i_1 
       (.I0(cycle_counter[0]),
        .I1(cycle_counter[1]),
        .O(cycle_counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cycle_counter[2]_i_1 
       (.I0(cycle_counter[1]),
        .I1(cycle_counter[0]),
        .I2(cycle_counter[2]),
        .O(cycle_counter_0[2]));
  LUT5 #(
    .INIT(32'hFF0000BF)) 
    \cycle_counter[3]_i_1 
       (.I0(m_axis_tvalid_i_4_n_0),
        .I1(cycle_counter[6]),
        .I2(cycle_counter[5]),
        .I3(\cycle_counter[3]_i_2_n_0 ),
        .I4(cycle_counter[3]),
        .O(cycle_counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cycle_counter[3]_i_2 
       (.I0(cycle_counter[1]),
        .I1(cycle_counter[0]),
        .I2(cycle_counter[2]),
        .O(\cycle_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cycle_counter[4]_i_1 
       (.I0(cycle_counter[3]),
        .I1(cycle_counter[1]),
        .I2(cycle_counter[0]),
        .I3(cycle_counter[2]),
        .I4(cycle_counter[4]),
        .O(cycle_counter_0[4]));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFF0F1F0)) 
    \cycle_counter[5]_i_1 
       (.I0(cycle_counter[6]),
        .I1(cycle_counter[3]),
        .I2(\cycle_counter[5]_i_2_n_0 ),
        .I3(cycle_counter[5]),
        .I4(\cycle_counter[6]_i_3_n_0 ),
        .I5(\cycle_counter[6]_i_4_n_0 ),
        .O(cycle_counter_0[5]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \cycle_counter[5]_i_2 
       (.I0(cycle_counter[5]),
        .I1(cycle_counter[4]),
        .I2(cycle_counter[3]),
        .I3(cycle_counter[1]),
        .I4(cycle_counter[0]),
        .I5(cycle_counter[2]),
        .O(\cycle_counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF08FF085508)) 
    \cycle_counter[6]_i_1 
       (.I0(cycle_counter[5]),
        .I1(cycle_counter[4]),
        .I2(\cycle_counter[6]_i_2_n_0 ),
        .I3(cycle_counter[6]),
        .I4(\cycle_counter[6]_i_3_n_0 ),
        .I5(\cycle_counter[6]_i_4_n_0 ),
        .O(cycle_counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cycle_counter[6]_i_2 
       (.I0(cycle_counter[2]),
        .I1(cycle_counter[0]),
        .I2(cycle_counter[1]),
        .I3(cycle_counter[3]),
        .O(\cycle_counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h15FFFFFFFFFFFFFF)) 
    \cycle_counter[6]_i_3 
       (.I0(cycle_counter[3]),
        .I1(cycle_counter[7]),
        .I2(cycle_counter[8]),
        .I3(cycle_counter[2]),
        .I4(cycle_counter[0]),
        .I5(cycle_counter[1]),
        .O(\cycle_counter[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \cycle_counter[6]_i_4 
       (.I0(cycle_counter[3]),
        .I1(cycle_counter[4]),
        .I2(cycle_counter[9]),
        .O(\cycle_counter[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3CCCCCCCCC4CC)) 
    \cycle_counter[7]_i_1 
       (.I0(cycle_counter[8]),
        .I1(cycle_counter[7]),
        .I2(m_axis_tvalid_i_3_n_0),
        .I3(cycle_counter[9]),
        .I4(cycle_counter[4]),
        .I5(cycle_counter[3]),
        .O(cycle_counter_0[7]));
  LUT6 #(
    .INIT(64'hC6C6CCCCCCCCC4CC)) 
    \cycle_counter[8]_i_1 
       (.I0(cycle_counter[7]),
        .I1(cycle_counter[8]),
        .I2(m_axis_tvalid_i_3_n_0),
        .I3(cycle_counter[9]),
        .I4(cycle_counter[4]),
        .I5(cycle_counter[3]),
        .O(cycle_counter_0[8]));
  LUT6 #(
    .INIT(64'hF0F0F0F068F0F0F0)) 
    \cycle_counter[9]_i_1 
       (.I0(cycle_counter[3]),
        .I1(cycle_counter[4]),
        .I2(cycle_counter[9]),
        .I3(cycle_counter[7]),
        .I4(cycle_counter[8]),
        .I5(m_axis_tvalid_i_3_n_0),
        .O(cycle_counter_0[9]));
  FDCE \cycle_counter_reg[0] 
       (.C(clk),
        .CE(state_reg_inv_n_0),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(cycle_counter_0[0]),
        .Q(cycle_counter[0]));
  FDCE \cycle_counter_reg[1] 
       (.C(clk),
        .CE(state_reg_inv_n_0),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(cycle_counter_0[1]),
        .Q(cycle_counter[1]));
  FDCE \cycle_counter_reg[2] 
       (.C(clk),
        .CE(state_reg_inv_n_0),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(cycle_counter_0[2]),
        .Q(cycle_counter[2]));
  FDCE \cycle_counter_reg[3] 
       (.C(clk),
        .CE(state_reg_inv_n_0),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(cycle_counter_0[3]),
        .Q(cycle_counter[3]));
  FDCE \cycle_counter_reg[4] 
       (.C(clk),
        .CE(state_reg_inv_n_0),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(cycle_counter_0[4]),
        .Q(cycle_counter[4]));
  FDCE \cycle_counter_reg[5] 
       (.C(clk),
        .CE(state_reg_inv_n_0),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(cycle_counter_0[5]),
        .Q(cycle_counter[5]));
  FDCE \cycle_counter_reg[6] 
       (.C(clk),
        .CE(state_reg_inv_n_0),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(cycle_counter_0[6]),
        .Q(cycle_counter[6]));
  FDCE \cycle_counter_reg[7] 
       (.C(clk),
        .CE(state_reg_inv_n_0),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(cycle_counter_0[7]),
        .Q(cycle_counter[7]));
  FDCE \cycle_counter_reg[8] 
       (.C(clk),
        .CE(state_reg_inv_n_0),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(cycle_counter_0[8]),
        .Q(cycle_counter[8]));
  FDCE \cycle_counter_reg[9] 
       (.C(clk),
        .CE(state_reg_inv_n_0),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(cycle_counter_0[9]),
        .Q(cycle_counter[9]));
  LUT2 #(
    .INIT(4'h4)) 
    \data_counter[31]_i_1 
       (.I0(state_reg_inv_n_0),
        .I1(m_axis_tready),
        .O(\data_counter[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_counter[3]_i_2 
       (.I0(m_axis_tdata[0]),
        .O(\data_counter[3]_i_2_n_0 ));
  FDPE \data_counter_reg[0] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .D(\data_counter_reg[3]_i_1_n_7 ),
        .PRE(m_axis_tvalid_i_2_n_0),
        .Q(m_axis_tdata[0]));
  FDCE \data_counter_reg[10] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[11]_i_1_n_5 ),
        .Q(m_axis_tdata[10]));
  FDCE \data_counter_reg[11] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[11]_i_1_n_4 ),
        .Q(m_axis_tdata[11]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_counter_reg[11]_i_1 
       (.CI(\data_counter_reg[7]_i_1_n_0 ),
        .CO({\data_counter_reg[11]_i_1_n_0 ,\data_counter_reg[11]_i_1_n_1 ,\data_counter_reg[11]_i_1_n_2 ,\data_counter_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[11]_i_1_n_4 ,\data_counter_reg[11]_i_1_n_5 ,\data_counter_reg[11]_i_1_n_6 ,\data_counter_reg[11]_i_1_n_7 }),
        .S(m_axis_tdata[11:8]));
  FDCE \data_counter_reg[12] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[15]_i_1_n_7 ),
        .Q(m_axis_tdata[12]));
  FDCE \data_counter_reg[13] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[15]_i_1_n_6 ),
        .Q(m_axis_tdata[13]));
  FDCE \data_counter_reg[14] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[15]_i_1_n_5 ),
        .Q(m_axis_tdata[14]));
  FDCE \data_counter_reg[15] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[15]_i_1_n_4 ),
        .Q(m_axis_tdata[15]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_counter_reg[15]_i_1 
       (.CI(\data_counter_reg[11]_i_1_n_0 ),
        .CO({\data_counter_reg[15]_i_1_n_0 ,\data_counter_reg[15]_i_1_n_1 ,\data_counter_reg[15]_i_1_n_2 ,\data_counter_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[15]_i_1_n_4 ,\data_counter_reg[15]_i_1_n_5 ,\data_counter_reg[15]_i_1_n_6 ,\data_counter_reg[15]_i_1_n_7 }),
        .S(m_axis_tdata[15:12]));
  FDCE \data_counter_reg[16] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[19]_i_1_n_7 ),
        .Q(m_axis_tdata[16]));
  FDCE \data_counter_reg[17] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[19]_i_1_n_6 ),
        .Q(m_axis_tdata[17]));
  FDCE \data_counter_reg[18] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[19]_i_1_n_5 ),
        .Q(m_axis_tdata[18]));
  FDCE \data_counter_reg[19] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[19]_i_1_n_4 ),
        .Q(m_axis_tdata[19]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_counter_reg[19]_i_1 
       (.CI(\data_counter_reg[15]_i_1_n_0 ),
        .CO({\data_counter_reg[19]_i_1_n_0 ,\data_counter_reg[19]_i_1_n_1 ,\data_counter_reg[19]_i_1_n_2 ,\data_counter_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[19]_i_1_n_4 ,\data_counter_reg[19]_i_1_n_5 ,\data_counter_reg[19]_i_1_n_6 ,\data_counter_reg[19]_i_1_n_7 }),
        .S(m_axis_tdata[19:16]));
  FDCE \data_counter_reg[1] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[3]_i_1_n_6 ),
        .Q(m_axis_tdata[1]));
  FDCE \data_counter_reg[20] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[23]_i_1_n_7 ),
        .Q(m_axis_tdata[20]));
  FDCE \data_counter_reg[21] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[23]_i_1_n_6 ),
        .Q(m_axis_tdata[21]));
  FDCE \data_counter_reg[22] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[23]_i_1_n_5 ),
        .Q(m_axis_tdata[22]));
  FDCE \data_counter_reg[23] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[23]_i_1_n_4 ),
        .Q(m_axis_tdata[23]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_counter_reg[23]_i_1 
       (.CI(\data_counter_reg[19]_i_1_n_0 ),
        .CO({\data_counter_reg[23]_i_1_n_0 ,\data_counter_reg[23]_i_1_n_1 ,\data_counter_reg[23]_i_1_n_2 ,\data_counter_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[23]_i_1_n_4 ,\data_counter_reg[23]_i_1_n_5 ,\data_counter_reg[23]_i_1_n_6 ,\data_counter_reg[23]_i_1_n_7 }),
        .S(m_axis_tdata[23:20]));
  FDCE \data_counter_reg[24] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[27]_i_1_n_7 ),
        .Q(m_axis_tdata[24]));
  FDCE \data_counter_reg[25] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[27]_i_1_n_6 ),
        .Q(m_axis_tdata[25]));
  FDCE \data_counter_reg[26] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[27]_i_1_n_5 ),
        .Q(m_axis_tdata[26]));
  FDCE \data_counter_reg[27] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[27]_i_1_n_4 ),
        .Q(m_axis_tdata[27]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_counter_reg[27]_i_1 
       (.CI(\data_counter_reg[23]_i_1_n_0 ),
        .CO({\data_counter_reg[27]_i_1_n_0 ,\data_counter_reg[27]_i_1_n_1 ,\data_counter_reg[27]_i_1_n_2 ,\data_counter_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[27]_i_1_n_4 ,\data_counter_reg[27]_i_1_n_5 ,\data_counter_reg[27]_i_1_n_6 ,\data_counter_reg[27]_i_1_n_7 }),
        .S(m_axis_tdata[27:24]));
  FDCE \data_counter_reg[28] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[31]_i_2_n_7 ),
        .Q(m_axis_tdata[28]));
  FDCE \data_counter_reg[29] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[31]_i_2_n_6 ),
        .Q(m_axis_tdata[29]));
  FDCE \data_counter_reg[2] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[3]_i_1_n_5 ),
        .Q(m_axis_tdata[2]));
  FDCE \data_counter_reg[30] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[31]_i_2_n_5 ),
        .Q(m_axis_tdata[30]));
  FDCE \data_counter_reg[31] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[31]_i_2_n_4 ),
        .Q(m_axis_tdata[31]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_counter_reg[31]_i_2 
       (.CI(\data_counter_reg[27]_i_1_n_0 ),
        .CO({\NLW_data_counter_reg[31]_i_2_CO_UNCONNECTED [3],\data_counter_reg[31]_i_2_n_1 ,\data_counter_reg[31]_i_2_n_2 ,\data_counter_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[31]_i_2_n_4 ,\data_counter_reg[31]_i_2_n_5 ,\data_counter_reg[31]_i_2_n_6 ,\data_counter_reg[31]_i_2_n_7 }),
        .S(m_axis_tdata[31:28]));
  FDCE \data_counter_reg[3] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[3]_i_1_n_4 ),
        .Q(m_axis_tdata[3]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_counter_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\data_counter_reg[3]_i_1_n_0 ,\data_counter_reg[3]_i_1_n_1 ,\data_counter_reg[3]_i_1_n_2 ,\data_counter_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\data_counter_reg[3]_i_1_n_4 ,\data_counter_reg[3]_i_1_n_5 ,\data_counter_reg[3]_i_1_n_6 ,\data_counter_reg[3]_i_1_n_7 }),
        .S({m_axis_tdata[3:1],\data_counter[3]_i_2_n_0 }));
  FDCE \data_counter_reg[4] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[7]_i_1_n_7 ),
        .Q(m_axis_tdata[4]));
  FDCE \data_counter_reg[5] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[7]_i_1_n_6 ),
        .Q(m_axis_tdata[5]));
  FDCE \data_counter_reg[6] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[7]_i_1_n_5 ),
        .Q(m_axis_tdata[6]));
  FDCE \data_counter_reg[7] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[7]_i_1_n_4 ),
        .Q(m_axis_tdata[7]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_counter_reg[7]_i_1 
       (.CI(\data_counter_reg[3]_i_1_n_0 ),
        .CO({\data_counter_reg[7]_i_1_n_0 ,\data_counter_reg[7]_i_1_n_1 ,\data_counter_reg[7]_i_1_n_2 ,\data_counter_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[7]_i_1_n_4 ,\data_counter_reg[7]_i_1_n_5 ,\data_counter_reg[7]_i_1_n_6 ,\data_counter_reg[7]_i_1_n_7 }),
        .S(m_axis_tdata[7:4]));
  FDCE \data_counter_reg[8] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[11]_i_1_n_7 ),
        .Q(m_axis_tdata[8]));
  FDCE \data_counter_reg[9] 
       (.C(clk),
        .CE(\data_counter[31]_i_1_n_0 ),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(\data_counter_reg[11]_i_1_n_6 ),
        .Q(m_axis_tdata[9]));
  LUT6 #(
    .INIT(64'hFF55FF5500000300)) 
    m_axis_tvalid_i_1
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_i_3_n_0),
        .I2(cycle_counter[3]),
        .I3(state_reg_inv_n_0),
        .I4(m_axis_tvalid_i_4_n_0),
        .I5(m_axis_tlast),
        .O(m_axis_tvalid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_i_2
       (.I0(rst_n),
        .O(m_axis_tvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    m_axis_tvalid_i_3
       (.I0(cycle_counter[6]),
        .I1(cycle_counter[5]),
        .I2(cycle_counter[2]),
        .I3(cycle_counter[0]),
        .I4(cycle_counter[1]),
        .O(m_axis_tvalid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    m_axis_tvalid_i_4
       (.I0(cycle_counter[8]),
        .I1(cycle_counter[7]),
        .I2(cycle_counter[9]),
        .I3(cycle_counter[4]),
        .O(m_axis_tvalid_i_4_n_0));
  FDCE m_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_i_2_n_0),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tlast));
  LUT5 #(
    .INIT(32'hFFAAFCAA)) 
    state_inv_i_1
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_i_3_n_0),
        .I2(cycle_counter[3]),
        .I3(state_reg_inv_n_0),
        .I4(m_axis_tvalid_i_4_n_0),
        .O(state_inv_i_1_n_0));
  (* inverted = "yes" *) 
  FDPE state_reg_inv
       (.C(clk),
        .CE(1'b1),
        .D(state_inv_i_1_n_0),
        .PRE(m_axis_tvalid_i_2_n_0),
        .Q(state_reg_inv_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
