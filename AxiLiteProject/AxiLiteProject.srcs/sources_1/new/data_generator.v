module data_generator #(
    // Number of cycles between data transmissions
    parameter CYCLE_DELAY = 1000,
    // Width of data output
    parameter DATA_WIDTH  = 32
)(
    // Clock and Reset
    input wire clk,
    input wire rst_n,
    
    // AXI Stream Master Interface to FIFO
    output reg m_axis_tvalid,
    input wire m_axis_tready,
    output wire [DATA_WIDTH-1:0] m_axis_tdata,
    output reg m_axis_tlast
);

    // Calculate the number of bits needed for the cycle counter
    localparam CYCLE_COUNTER_WIDTH = $clog2(CYCLE_DELAY);

    // Registers
    reg [DATA_WIDTH-1:0] data_counter;
    reg [CYCLE_COUNTER_WIDTH-1:0] cycle_counter;
    
    // State Encoding
    localparam S_IDLE     = 1'b0;
    localparam S_TRANSMIT = 1'b1;
    reg state;
    
    // Data Output Assignment
    assign m_axis_tdata = data_counter;
    
    // Sequential Logic for State Transition and Counters
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reset State
            state   <= S_IDLE;
            data_counter    <= 1'b1;
            cycle_counter   <= 1'b0;
            m_axis_tvalid   <= 1'b0;
            m_axis_tlast    <= 1'b0;
        end else begin            
            case (state)
                S_IDLE: begin                    
                    state  <=S_IDLE;
                    if (cycle_counter == (CYCLE_DELAY - 1)) begin
                        cycle_counter <= 1'b0;                        
                        m_axis_tvalid <= 1'b1;
                        m_axis_tlast  <= 1'b1;
                        state    <= S_TRANSMIT;
                    end else begin
                        cycle_counter <= cycle_counter + 1;
                    end
                end
                
                S_TRANSMIT: begin
                    state    <= S_TRANSMIT;
                    if (m_axis_tready) begin
                        data_counter  <= data_counter + 1;
                        state <= S_IDLE;
                        
                        m_axis_tvalid <= 1'b0;
                        m_axis_tlast  <= 1'b0;
                    end
                end
                
                default: begin
                    state    <= S_IDLE;
                end
            endcase
        end
    end

endmodule
