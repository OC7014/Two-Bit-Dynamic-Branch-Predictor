`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2020 19:32:41
// Design Name: 
// Module Name: two_bit_branch_predictor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module two_bit_branch_predictor(
    read_address,
    actual, 
    reset,
    clk,
    prediction
    );
    
    parameter ADDRESS_BITS = 4;
        
    input [ADDRESS_BITS - 1 : 0] read_address;
    input actual;
    input reset;
    input clk;
    
    output prediction;
    
    wire [1:0] read_state;
    reg  [ADDRESS_BITS - 1 : 0] read_address_delayed;
    wire [1:0] write_state;
    reg [ADDRESS_BITS - 1 : 0] write_address;
    
    buffer btb(read_address, read_state, write_address, write_state, reset, clk);
    
    always @ (posedge clk) begin
        if (reset) begin
            read_address_delayed <= 0;
            write_address <= 0;
        end
        else begin
            read_address_delayed <= read_address;
            write_address <= read_address_delayed;
        end
    end
    // pass a delayed version of value read from buffer
    fsm FSM(actual, read_state, clk, write_state);
    
    // output
    // use the value from buffer
    assign prediction = read_state[1];

endmodule
