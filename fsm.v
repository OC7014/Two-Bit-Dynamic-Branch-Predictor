`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2020 18:46:25
// Design Name: 
// Module Name: fsm
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

/* Moore Machine - Output is the state itself. */

module fsm(
    actual,
    read_state,
    clk,
    next_state
    );
    
    parameter STRONGLY_NOT_TAKEN = 2'b00;
    parameter WEAKLY_NOT_TAKEN = 2'b01;
    parameter WEAKLY_TAKEN = 2'b10;
    parameter STRONGLY_TAKEN = 2'b11;
    parameter TAKEN = 1'b1;
    parameter NOT_TAKEN = 1'b0;
    
    input actual;
    input [1:0] read_state;
    input clk;
    
    output reg [1:0] next_state;
    
    
    always @ (posedge clk) begin    
        next_state = 2'b00;
        
        case (read_state)
            STRONGLY_NOT_TAKEN: 
            begin
                if (actual == TAKEN)
                    next_state = WEAKLY_NOT_TAKEN;
                else
                    next_state = STRONGLY_NOT_TAKEN;
            end
		
			WEAKLY_NOT_TAKEN:
			begin
				if (actual == TAKEN)
					next_state = WEAKLY_TAKEN;
				else
					next_state = STRONGLY_NOT_TAKEN;
			end
			
			WEAKLY_TAKEN:
			begin
				if (actual == TAKEN)
					next_state = STRONGLY_TAKEN;
				else
					next_state = WEAKLY_NOT_TAKEN;
			end
			
			STRONGLY_TAKEN:
			begin
				if (actual == TAKEN)
					next_state = STRONGLY_TAKEN;
				else
					next_state = WEAKLY_TAKEN;
			end
			
			default:
			begin
				next_state = 2'b00;
			end
			
        endcase
		
    end
    
endmodule
