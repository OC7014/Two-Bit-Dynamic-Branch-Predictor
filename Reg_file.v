`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2020 18:08:34
// Design Name: 
// Module Name: Reg_file
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


module Reg_file(
    reg_inp,
    en0, en1,  en2,  en3,  en4,  en5,  en6,  en7, 
    en8, en9, en10, en11, en12, en13, en14, en15, 
    reset,
    clk,
    reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, reg7_out, 
    reg8_out, reg9_out, reg10_out, reg11_out, reg12_out, reg13_out, reg14_out, reg15_out  
    );
    
    input [1:0] reg_inp;
    input en0; input en1; input en2;  input en3;  input en4;  input en5;  input en6;  input en7;  
    input en8; input en9; input en10; input en11; input en12; input en13; input en14; input en15; 
    input reset;
    input clk;
    
    output [1:0] reg0_out;  output [1:0] reg1_out;  output [1:0] reg2_out;  output [1:0] reg3_out;  output [1:0] reg4_out;  
    output [1:0] reg5_out;  output [1:0] reg6_out;  output [1:0] reg7_out;  output [1:0] reg8_out;  output [1:0] reg9_out; 
    output [1:0] reg10_out; output [1:0] reg11_out; output [1:0] reg12_out; output [1:0] reg13_out; output [1:0] reg14_out; 
    output [1:0] reg15_out; 
    

    two_bit_regs r0(reg_inp,  en0,  reset, clk, reg0_out);
    two_bit_regs r1(reg_inp,  en1,  reset, clk, reg1_out);
    two_bit_regs r2(reg_inp,  en2,  reset, clk, reg2_out);
    two_bit_regs r3(reg_inp,  en3,  reset, clk, reg3_out);
    two_bit_regs r4(reg_inp,  en4,  reset, clk, reg4_out);
    two_bit_regs r5(reg_inp,  en5,  reset, clk, reg5_out);
    two_bit_regs r6(reg_inp,  en6,  reset, clk, reg6_out);
    two_bit_regs r7(reg_inp,  en7,  reset, clk, reg7_out);
    two_bit_regs r8(reg_inp,  en8,  reset, clk, reg8_out);
    two_bit_regs r9(reg_inp,  en9,  reset, clk, reg9_out);
    two_bit_regs r10(reg_inp, en10, reset, clk, reg10_out);
    two_bit_regs r11(reg_inp, en11, reset, clk, reg11_out);
    two_bit_regs r12(reg_inp, en12, reset, clk, reg12_out);
    two_bit_regs r13(reg_inp, en13, reset, clk, reg13_out);
    two_bit_regs r14(reg_inp, en14, reset, clk, reg14_out);
    two_bit_regs r15(reg_inp, en15, reset, clk, reg15_out);
    
    
    
endmodule
