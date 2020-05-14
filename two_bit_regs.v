`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2020 23:35:19
// Design Name: 
// Module Name: two_bit_regs
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


module two_bit_regs(
    inp,
    enable,
    reset,
    clk,
    op
    );
    
    input [1:0] inp;
    input enable;
    input reset;
    input clk;
    
    output reg [1:0] op;
    
    always @ (posedge clk) begin
        if (reset)
            op = 0;
        else if (enable)
            op = inp;
    end
    
endmodule
