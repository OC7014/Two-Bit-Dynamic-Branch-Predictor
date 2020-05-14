`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2020 23:49:08
// Design Name: 
// Module Name: mux_sixteen_one
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


module mux_sixteen_one(
    ip0, ip1, ip2, ip3, ip4, ip5, ip6, ip7, 
    ip8, ip9, ip10, ip11, ip12, ip13, ip14, ip15,
    select, 
    op 
    );
    
    input [1:0] ip0;  input [1:0] ip1;  input [1:0] ip2;  input [1:0] ip3;  input [1:0] ip4; 
    input [1:0] ip5;  input [1:0] ip6;  input [1:0] ip7;  input [1:0] ip8;  input [1:0] ip9; 
    input [1:0] ip10; input [1:0] ip11; input [1:0] ip12; input [1:0] ip13; input [1:0] ip14; 
    input [1:0] ip15; 
    input [3:0] select;
    
    output reg [1:0] op;

/*    
    This code creates 2:1 MUXs which will add propagation delay to the circuit.
    assign op = (select == 4'b0000) ? ip0  : 
                (select == 4'b0001) ? ip1  :
                (select == 4'b0010) ? ip2  :
                (select == 4'b0011) ? ip3  :
                (select == 4'b0100) ? ip4  : 
                (select == 4'b0101) ? ip5  :
                (select == 4'b0110) ? ip6  :
                (select == 4'b0111) ? ip7  :
                (select == 4'b1000) ? ip8  :
                (select == 4'b1001) ? ip9  :
                (select == 4'b1010) ? ip10 :
                (select == 4'b1011) ? ip11 :
                (select == 4'b1100) ? ip12 :
                (select == 4'b1101) ? ip13 :
                (select == 4'b1110) ? ip14 :
                (select == 4'b1111) ? ip15 : 2'b00;   
*/
    
    always @ * begin
        case (select) 
            4'b0000 :   op <= ip0;
            4'b0001 :   op <= ip1;
            4'b0010 :   op <= ip2;
            4'b0011 :   op <= ip3;
            4'b0100 :   op <= ip4;
            4'b0101 :   op <= ip5;
            4'b0110 :   op <= ip6;
            4'b0111 :   op <= ip7;
            4'b1000 :   op <= ip8;
            4'b1001 :   op <= ip9;
            4'b1010 :   op <= ip10;
            4'b1011 :   op <= ip11;
            4'b1100 :   op <= ip12;
            4'b1101 :   op <= ip13;
            4'b1110 :   op <= ip14;
            4'b1111 :   op <= ip15;
            default :   op <= 2'b00;
        endcase

    end
    
endmodule
