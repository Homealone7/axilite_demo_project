`timescale 1 ns / 1 ps

module myip_adp_s_v1_0 #
(
    // Users to add parameters here
    // User parameters ends
    // Do not modify the parameters beyond this line
    // Parameters of Axi Slave Bus Interface S00_AXI
    parameter integer C_S00_AXI_DATA_WIDTH = 32,
    parameter integer C_S00_AXI_ADDR_WIDTH = 4
)
(
    // Users to add ports here
    // AXI Stream subordinate interface
    input wire  s_fifo_axis_aclk,
    input wire  s_fifo_axis_aresetn,
    input wire  s_fifo_axis_tvalid,
    output wire s_fifo_axis_tready,
    input wire [31:0] s_fifo_axis_tdata,
    input wire  s_fifo_axis_tlast,
    
    // Interrupt output
    output wire irq_data_ready,
    
    // User ports ends
    // Do not modify the ports beyond this line
    // Ports of Axi Slave Bus Interface S00_AXI
    input wire  s00_axi_aclk,
    input wire  s00_axi_aresetn,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
    input wire [2 : 0] s00_axi_awprot,
    input wire  s00_axi_awvalid,
    output wire  s00_axi_awready,
    input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
    input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
    input wire  s00_axi_wvalid,
    output wire  s00_axi_wready,
    output wire [1 : 0] s00_axi_bresp,
    output wire  s00_axi_bvalid,
    input wire  s00_axi_bready,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
    input wire [2 : 0] s00_axi_arprot,
    input wire  s00_axi_arvalid,
    output wire  s00_axi_arready,
    output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
    output wire [1 : 0] s00_axi_rresp,
    output wire  s00_axi_rvalid,
    input wire  s00_axi_rready
);

// Instantiation of Axi Bus Interface S00_AXI
myip_adp_s_v1_0_S00_AXI # ( 
    .C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
) myip_adp_s_v1_0_S00_AXI_inst (
    // AXI Stream subordiante interface ports
    .S_FIFO_AXIS_ACLK(s_fifo_axis_aclk),
    .S_FIFO_AXIS_ARESETN(s_fifo_axis_aresetn),
    .S_FIFO_AXIS_TVALID(s_fifo_axis_tvalid),
    .S_FIFO_AXIS_TREADY(s_fifo_axis_tready),
    .S_FIFO_AXIS_TDATA(s_fifo_axis_tdata),
    .S_FIFO_AXIS_TLAST(s_fifo_axis_tlast),
    
    // Interrupt output
    .IRQ_DATA_READY(irq_data_ready),
    
    // AXI Lite interface ports
    .S_AXI_ACLK(s00_axi_aclk),
    .S_AXI_ARESETN(s00_axi_aresetn),
    .S_AXI_AWADDR(s00_axi_awaddr),
    .S_AXI_AWPROT(s00_axi_awprot),
    .S_AXI_AWVALID(s00_axi_awvalid),
    .S_AXI_AWREADY(s00_axi_awready),
    .S_AXI_WDATA(s00_axi_wdata),
    .S_AXI_WSTRB(s00_axi_wstrb),
    .S_AXI_WVALID(s00_axi_wvalid),
    .S_AXI_WREADY(s00_axi_wready),
    .S_AXI_BRESP(s00_axi_bresp),
    .S_AXI_BVALID(s00_axi_bvalid),
    .S_AXI_BREADY(s00_axi_bready),
    .S_AXI_ARADDR(s00_axi_araddr),
    .S_AXI_ARPROT(s00_axi_arprot),
    .S_AXI_ARVALID(s00_axi_arvalid),
    .S_AXI_ARREADY(s00_axi_arready),
    .S_AXI_RDATA(s00_axi_rdata),
    .S_AXI_RRESP(s00_axi_rresp),
    .S_AXI_RVALID(s00_axi_rvalid),
    .S_AXI_RREADY(s00_axi_rready)
);


endmodule