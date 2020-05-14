`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2020 21:32:11
// Design Name: 
// Module Name: buffer
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

/* \info 16 addresses deeper register file - 4 bits required to access */
module buffer(
    read_address,
    read_value,
    write_address,
    write_value,
    reset, 
    clk 
    );
    // if we declare a write enable, we will require a control for that purpose */
    
    parameter ADDRESS_BITS = 4;
    
    input [ADDRESS_BITS - 1 : 0] read_address;
    input [ADDRESS_BITS - 1 : 0] write_address;
    input [1:0] write_value;
    input reset;
    input clk;
    
    output [1:0] read_value;
    
    wire [15:0] enables;
    wire [1:0] reg0_out;  wire [1:0] reg1_out;  wire [1:0] reg2_out; 
    wire [1:0] reg3_out;  wire [1:0] reg4_out;  wire [1:0] reg5_out; 
    wire [1:0] reg6_out;  wire [1:0] reg7_out;  wire [1:0] reg8_out; 
    wire [1:0] reg9_out;  wire [1:0] reg10_out; wire [1:0] reg11_out; 
    wire [1:0] reg12_out; wire [1:0] reg13_out; wire [1:0] reg14_out; 
    wire [1:0] reg15_out; 
    
    // Input Decoder to propagate enable signal
    decoder_four_sixteen ip_enable_decoder(write_address, enables);
    
    // Register file
    Reg_file regs(write_value,
                  enables[0],  enables[1],  enables[2],  enables[3],  enables[4], 
                  enables[5],  enables[6],  enables[7],  enables[8],  enables[9], 
                  enables[10], enables[11], enables[12], enables[13], enables[14], 
                  enables[15],
                  reset, 
                  clk,
                  reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, 
                  reg5_out, reg6_out, reg7_out, reg8_out, reg9_out, 
                  reg10_out, reg11_out, reg12_out, reg13_out, reg14_out, reg15_out
                  );
     
    // Output MUX to read data 
    mux_sixteen_one op_read_value_mux(reg0_out, reg1_out, reg2_out, reg3_out, 
                                      reg4_out, reg5_out, reg6_out, reg7_out, 
                                      reg8_out, reg9_out, reg10_out, reg11_out, 
                                      reg12_out, reg13_out, reg14_out, reg15_out,
                                      read_address, read_value);
    
endmodule
