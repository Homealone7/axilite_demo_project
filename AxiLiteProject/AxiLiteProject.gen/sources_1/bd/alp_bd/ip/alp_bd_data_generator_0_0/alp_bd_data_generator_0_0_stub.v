// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Oct 26 15:05:21 2024
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/DAVIS/Research/Demo/AxiLiteProject/AxiLiteProject.gen/sources_1/bd/alp_bd/ip/alp_bd_data_generator_0_0/alp_bd_data_generator_0_0_stub.v
// Design      : alp_bd_data_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "data_generator,Vivado 2023.1" *)
module alp_bd_data_generator_0_0(clk, rst_n, m_axis_tvalid, m_axis_tready, 
  m_axis_tdata, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="rst_n,m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0],m_axis_tlast" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
endmodule
