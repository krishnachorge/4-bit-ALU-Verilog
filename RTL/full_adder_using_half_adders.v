`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2026 01:23:06 PM
// Design Name: 
// Module Name: full_adder_using_half_adders
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


module full_adder_using_half_adders(
    input A,
    input B,
    input Cin,
    output sum,
    output carry
    );
    
    wire w1,w2,w3;
    
    half_adder ha1(.A(A),.B(B),.sum(w1),.carry(w2));
    half_adder ha2(.A(w1),.B(Cin),.sum(sum),.carry(w3));
    or o1(carry,w2,w3);
    
    
endmodule
