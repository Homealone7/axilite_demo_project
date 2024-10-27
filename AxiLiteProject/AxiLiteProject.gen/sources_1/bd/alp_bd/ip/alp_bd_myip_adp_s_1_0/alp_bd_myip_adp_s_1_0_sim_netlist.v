// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Oct 26 23:50:08 2024
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DAVIS/Research/Demo/AxiLiteProject/AxiLiteProject.gen/sources_1/bd/alp_bd/ip/alp_bd_myip_adp_s_1_0/alp_bd_myip_adp_s_1_0_sim_netlist.v
// Design      : alp_bd_myip_adp_s_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "alp_bd_myip_adp_s_1_0,myip_adp_s_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_adp_s_v1_0,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module alp_bd_myip_adp_s_1_0
   (s_fifo_axis_aclk,
    s_fifo_axis_aresetn,
    s_fifo_axis_tvalid,
    s_fifo_axis_tready,
    s_fifo_axis_tdata,
    s_fifo_axis_tlast,
    irq_data_ready,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_fifo_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_fifo_axis_aclk, ASSOCIATED_RESET s_fifo_axis_aresetn, ASSOCIATED_BUSIF S_FIFO_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN alp_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_fifo_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_fifo_axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_fifo_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_fifo_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_FIFO_AXIS TVALID" *) input s_fifo_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_FIFO_AXIS TREADY" *) output s_fifo_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_FIFO_AXIS TDATA" *) input [31:0]s_fifo_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_FIFO_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_FIFO_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN alp_bd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_fifo_axis_tlast;
  output irq_data_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN alp_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN alp_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire irq_data_ready;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [1:1]\^s00_axi_rresp ;
  wire s00_axi_rvalid;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire s_fifo_axis_aclk;
  wire [31:0]s_fifo_axis_tdata;
  wire s_fifo_axis_tready;
  wire s_fifo_axis_tvalid;

  assign s00_axi_bresp[1] = \<const1> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \^s00_axi_rresp [1];
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .data_ready_reg(irq_data_ready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(\^s00_axi_rresp ),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_fifo_axis_aclk(s_fifo_axis_aclk),
        .s_fifo_axis_tdata(s_fifo_axis_tdata),
        .s_fifo_axis_tready(s_fifo_axis_tready),
        .s_fifo_axis_tvalid(s_fifo_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "myip_adp_s_v1_0" *) 
module alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0
   (data_ready_reg,
    S_AXI_ARREADY,
    axi_rvalid_reg,
    s_fifo_axis_tready,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_bvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s_fifo_axis_tvalid,
    s00_axi_aclk,
    s_fifo_axis_aclk,
    s_fifo_axis_tdata,
    s00_axi_rready,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready);
  output data_ready_reg;
  output S_AXI_ARREADY;
  output axi_rvalid_reg;
  output s_fifo_axis_tready;
  output s00_axi_awready;
  output s00_axi_wready;
  output [31:0]s00_axi_rdata;
  output [0:0]s00_axi_rresp;
  output s00_axi_bvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s_fifo_axis_tvalid;
  input s00_axi_aclk;
  input s_fifo_axis_aclk;
  input [31:0]s_fifo_axis_tdata;
  input s00_axi_rready;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;

  wire S_AXI_ARREADY;
  wire axi_rvalid_reg;
  wire data_ready_reg;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [0:0]s00_axi_rresp;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire s_fifo_axis_aclk;
  wire [31:0]s_fifo_axis_tdata;
  wire s_fifo_axis_tready;
  wire s_fifo_axis_tvalid;

  alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0_S00_AXI myip_adp_s_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .data_ready_reg_0(data_ready_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(s00_axi_rresp),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_fifo_axis_aclk(s_fifo_axis_aclk),
        .s_fifo_axis_tdata(s_fifo_axis_tdata),
        .s_fifo_axis_tready(s_fifo_axis_tready),
        .s_fifo_axis_tvalid(s_fifo_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "myip_adp_s_v1_0_S00_AXI" *) 
module alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0_S00_AXI
   (data_ready_reg_0,
    S_AXI_ARREADY,
    axi_rvalid_reg_0,
    s_fifo_axis_tready,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_bvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s_fifo_axis_tvalid,
    s00_axi_aclk,
    s_fifo_axis_aclk,
    s_fifo_axis_tdata,
    s00_axi_rready,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready);
  output data_ready_reg_0;
  output S_AXI_ARREADY;
  output axi_rvalid_reg_0;
  output s_fifo_axis_tready;
  output s00_axi_awready;
  output s00_axi_wready;
  output [31:0]s00_axi_rdata;
  output [0:0]s00_axi_rresp;
  output s00_axi_bvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s_fifo_axis_tvalid;
  input s00_axi_aclk;
  input s_fifo_axis_aclk;
  input [31:0]s_fifo_axis_tdata;
  input s00_axi_rready;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;

  wire S_AXI_ARREADY;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rresp[1]_i_1_n_0 ;
  wire axi_rvalid0__0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire data_ready_i_1_n_0;
  wire data_ready_reg_0;
  wire fifo_axis_tready_i_1_n_0;
  wire [31:0]fifo_data_buffer;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [0:0]s00_axi_rresp;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire s_fifo_axis_aclk;
  wire [31:0]s_fifo_axis_tdata;
  wire s_fifo_axis_tready;
  wire s_fifo_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awready),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h0400FFFF)) 
    \axi_rdata[31]_i_1 
       (.I0(data_ready_reg_0),
        .I1(S_AXI_ARREADY),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axi_arvalid),
        .I4(s00_axi_aresetn),
        .O(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[0]),
        .Q(s00_axi_rdata[0]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[10]),
        .Q(s00_axi_rdata[10]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[11]),
        .Q(s00_axi_rdata[11]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[12]),
        .Q(s00_axi_rdata[12]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[13]),
        .Q(s00_axi_rdata[13]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[14]),
        .Q(s00_axi_rdata[14]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[15]),
        .Q(s00_axi_rdata[15]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[16]),
        .Q(s00_axi_rdata[16]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[17]),
        .Q(s00_axi_rdata[17]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[18]),
        .Q(s00_axi_rdata[18]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[19]),
        .Q(s00_axi_rdata[19]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[1]),
        .Q(s00_axi_rdata[1]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[20]),
        .Q(s00_axi_rdata[20]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[21]),
        .Q(s00_axi_rdata[21]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[22]),
        .Q(s00_axi_rdata[22]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[23]),
        .Q(s00_axi_rdata[23]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[24]),
        .Q(s00_axi_rdata[24]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[25]),
        .Q(s00_axi_rdata[25]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[26]),
        .Q(s00_axi_rdata[26]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[27]),
        .Q(s00_axi_rdata[27]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[28]),
        .Q(s00_axi_rdata[28]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[29]),
        .Q(s00_axi_rdata[29]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[2]),
        .Q(s00_axi_rdata[2]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[30]),
        .Q(s00_axi_rdata[30]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[31]),
        .Q(s00_axi_rdata[31]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[3]),
        .Q(s00_axi_rdata[3]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[4]),
        .Q(s00_axi_rdata[4]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[5]),
        .Q(s00_axi_rdata[5]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[6]),
        .Q(s00_axi_rdata[6]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[7]),
        .Q(s00_axi_rdata[7]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[8]),
        .Q(s00_axi_rdata[8]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_rvalid0__0),
        .D(fifo_data_buffer[9]),
        .Q(s00_axi_rdata[9]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8808888888C88888)) 
    \axi_rresp[1]_i_1 
       (.I0(s00_axi_rresp),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_arvalid),
        .I3(axi_rvalid_reg_0),
        .I4(S_AXI_ARREADY),
        .I5(data_ready_reg_0),
        .O(\axi_rresp[1]_i_1_n_0 ));
  FDRE \axi_rresp_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_rresp[1]_i_1_n_0 ),
        .Q(s00_axi_rresp),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    axi_rvalid0
       (.I0(S_AXI_ARREADY),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .O(axi_rvalid0__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0EEE)) 
    data_ready_i_1
       (.I0(data_ready_reg_0),
        .I1(s_fifo_axis_tvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .O(data_ready_i_1_n_0));
  FDRE data_ready_reg
       (.C(s_fifo_axis_aclk),
        .CE(1'b1),
        .D(data_ready_i_1_n_0),
        .Q(data_ready_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_axis_tready_i_1
       (.I0(s_fifo_axis_tvalid),
        .I1(data_ready_reg_0),
        .O(fifo_axis_tready_i_1_n_0));
  FDRE fifo_axis_tready_reg
       (.C(s_fifo_axis_aclk),
        .CE(1'b1),
        .D(fifo_axis_tready_i_1_n_0),
        .Q(s_fifo_axis_tready),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[0] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[0]),
        .Q(fifo_data_buffer[0]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[10] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[10]),
        .Q(fifo_data_buffer[10]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[11] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[11]),
        .Q(fifo_data_buffer[11]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[12] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[12]),
        .Q(fifo_data_buffer[12]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[13] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[13]),
        .Q(fifo_data_buffer[13]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[14] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[14]),
        .Q(fifo_data_buffer[14]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[15] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[15]),
        .Q(fifo_data_buffer[15]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[16] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[16]),
        .Q(fifo_data_buffer[16]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[17] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[17]),
        .Q(fifo_data_buffer[17]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[18] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[18]),
        .Q(fifo_data_buffer[18]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[19] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[19]),
        .Q(fifo_data_buffer[19]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[1] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[1]),
        .Q(fifo_data_buffer[1]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[20] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[20]),
        .Q(fifo_data_buffer[20]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[21] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[21]),
        .Q(fifo_data_buffer[21]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[22] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[22]),
        .Q(fifo_data_buffer[22]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[23] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[23]),
        .Q(fifo_data_buffer[23]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[24] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[24]),
        .Q(fifo_data_buffer[24]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[25] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[25]),
        .Q(fifo_data_buffer[25]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[26] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[26]),
        .Q(fifo_data_buffer[26]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[27] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[27]),
        .Q(fifo_data_buffer[27]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[28] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[28]),
        .Q(fifo_data_buffer[28]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[29] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[29]),
        .Q(fifo_data_buffer[29]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[2] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[2]),
        .Q(fifo_data_buffer[2]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[30] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[30]),
        .Q(fifo_data_buffer[30]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[31] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[31]),
        .Q(fifo_data_buffer[31]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[3] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[3]),
        .Q(fifo_data_buffer[3]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[4] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[4]),
        .Q(fifo_data_buffer[4]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[5] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[5]),
        .Q(fifo_data_buffer[5]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[6] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[6]),
        .Q(fifo_data_buffer[6]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[7] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[7]),
        .Q(fifo_data_buffer[7]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[8] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[8]),
        .Q(fifo_data_buffer[8]),
        .R(1'b0));
  FDRE \fifo_data_buffer_reg[9] 
       (.C(s_fifo_axis_aclk),
        .CE(fifo_axis_tready_i_1_n_0),
        .D(s_fifo_axis_tdata[9]),
        .Q(fifo_data_buffer[9]),
        .R(1'b0));
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
