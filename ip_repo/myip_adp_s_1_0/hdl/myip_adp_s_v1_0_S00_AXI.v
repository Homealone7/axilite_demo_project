
`timescale 1 ns / 1 ps

    //NOTE THIS MODULE HAS NO CDC. MAKE SURE THE FIFO SIDE AND AXI CLOCKS ARE THE SAME
	module myip_adp_s_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
		
		   
        // AXI Stream slave interface
        input wire  S_FIFO_AXIS_ACLK,
        input wire  S_FIFO_AXIS_ARESETN,
        input wire  S_FIFO_AXIS_TVALID,
        output wire S_FIFO_AXIS_TREADY,
        input wire [31:0] S_FIFO_AXIS_TDATA,
        input wire  S_FIFO_AXIS_TLAST,
        
         // Interrupt output
         output wire IRQ_DATA_READY,
        
        

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

    // Local registers for FIFO control
    reg fifo_axis_tready;
    reg data_ready;
    reg [31:0] fifo_data_buffer;

    // Local registers for AXI interface
    reg  axi_awready;
    reg  axi_wready;
    reg [1:0] axi_bresp;
    reg  axi_bvalid;
    reg  axi_arready;
    reg [31:0] axi_rdata;
    reg [1:0] axi_rresp;
    reg  axi_rvalid;

    // Response codes
    localparam [1:0] RESP_OKAY   = 2'b00;
    localparam [1:0] RESP_SLVERR = 2'b10;

    // Wire assignments
    assign S_FIFO_AXIS_TREADY = fifo_axis_tready;
    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP  = axi_bresp;
    assign S_AXI_BVALID = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RDATA  = axi_rdata;
    assign S_AXI_RRESP  = axi_rresp;
    assign S_AXI_RVALID = axi_rvalid;
    assign IRQ_DATA_READY = irq_reg;



 // Write response process (Send SLVERR for all writes)
  always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_awready <= 1'b0;
            axi_wready <= 1'b0;
            axi_bvalid <= 1'b0;
        end else begin
            // Simply acknowledge writes but don't do anything with them
            if (~axi_awready && S_AXI_AWVALID) begin
                axi_awready <= 1'b1;
            end else begin
                axi_awready <= 1'b0;
            end
            
            if (~axi_wready && S_AXI_WVALID) begin
                axi_wready <= 1'b1;
            end else begin
                axi_wready <= 1'b0;
            end
            
            if (~axi_bvalid && axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID) begin
                axi_bvalid <= 1'b1;
                axi_bresp <= RESP_SLVERR; // Return slave error for write attempts
            end else if (axi_bvalid && S_AXI_BREADY) begin
                axi_bvalid <= 1'b0;
            end
        end
    end
    
    //Control reading from fifo. Basically, jsut move data from the FIFO to a register after each read (essentially an extra little buffer)
    reg data_ready;
    reg irq_reg;
    assign irq_data_raedy = irq_reg;
    always @ (posedge S_FIFO_AXIS_ACLK) begin
        fifo_axis_tready <= 1'b0;
        if (S_FIFO_AXIS_TVALID && ~data_ready) begin
            fifo_axis_tready <= 1'b1;
            fifo_data_buffer <= S_FIFO_AXIS_TDATA;
            data_ready <= 1'b1;
            irq_reg <= 1'b1;  // Assert interrupt when new data arrives (basically just data_ready made external)
        end
        if (axi_rvalid && S_AXI_RREADY) begin
            data_ready <= 1'b0;
            irq_reg <= 1'b0;  // Clear interrupt when data is read
        end
    end
    
    
    
// AXI read interface process
always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
        axi_arready <= 1'b0;
        axi_rvalid <= 1'b0;
        axi_rresp <= RESP_OKAY;
        axi_rdata <= 32'b0;
    end else begin
    
        // Handle address ready. For ease we just let ar_ready stay low. It wastes a cycle but it's safer.
           if (~axi_arready && S_AXI_ARVALID) begin
                axi_arready <= 1'b1;
            end else begin
                axi_arready <= 1'b0;
            end

        // Handle read data
          if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
                axi_rvalid <= 1'b1;
                if (data_ready) begin
                    axi_rdata <= fifo_data_buffer;
                    axi_rresp <= RESP_OKAY;
                end else begin
                    axi_rdata <= 32'b0;
                    axi_rresp <= RESP_SLVERR;  //send error back if you try to read and the FIFO is empty.
                end
            end else if (axi_rvalid && S_AXI_RREADY) begin
                axi_rvalid <= 1'b0;
            end
    end
 end
    


	endmodule
