`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2020 23:08:34
// Design Name: 
// Module Name: decoder_four_sixteen
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


module decoder_four_sixteen(
    d_in,
    d_out
    );

    input [3:0]   d_in;

    output reg [15:0] d_out;
   
    parameter tmp = 16'b0000_0000_0000_0001;
/*
    assign d_out = (d_in == 4'b0000) ? tmp   :
                   (d_in == 4'b0001) ? tmp<<1:
                   (d_in == 4'b0010) ? tmp<<2:
                   (d_in == 4'b0011) ? tmp<<3:
                   (d_in == 4'b0100) ? tmp<<4:
                   (d_in == 4'b0101) ? tmp<<5:
                   (d_in == 4'b0110) ? tmp<<6:
                   (d_in == 4'b0111) ? tmp<<7:
                   (d_in == 4'b1000) ? tmp<<8: 
                   (d_in == 4'b1001) ? tmp<<9:
                   (d_in == 4'b1010) ? tmp<<10:
                   (d_in == 4'b1011) ? tmp<<11:
                   (d_in == 4'b1100) ? tmp<<12:
                   (d_in == 4'b1101) ? tmp<<13:
                   (d_in == 4'b1110) ? tmp<<14:
                   (d_in == 4'b1111) ? tmp<<15: 16'b0000_0000_0000_0000;
*/

    
    always @ * begin
        case (d_in)
            4'b0000 :   d_out = tmp;
            4'b0001 :   d_out = tmp << 1;
            4'b0010 :   d_out = tmp << 2;
            4'b0011 :   d_out = tmp << 3;
            4'b0100 :   d_out = tmp << 4;
            4'b0101 :   d_out = tmp << 5;
            4'b0110 :   d_out = tmp << 6;
            4'b0111 :   d_out = tmp << 7;
            4'b1000 :   d_out = tmp << 8;
            4'b1001 :   d_out = tmp << 9;
            4'b1010 :   d_out = tmp << 10;
            4'b1011 :   d_out = tmp << 11;
            4'b1100 :   d_out = tmp << 12;
            4'b1101 :   d_out = tmp << 13;
            4'b1110 :   d_out = tmp << 14;
            4'b1111 :   d_out = tmp << 15;
            default :   d_out = 16'b0000_0000_0000_0000;
        endcase
    end
    

endmodule