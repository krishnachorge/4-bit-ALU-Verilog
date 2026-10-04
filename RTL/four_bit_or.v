`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2026 03:51:56 PM
// Design Name: 
// Module Name: four_bit_or
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


module four_bit_or(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Y
    );
    
    or o0(Y[0],A[0],B[0]);
    or o1(Y[1],A[1],B[1]);
    or o2(Y[2],A[2],B[2]);
    or o3(Y[3],A[3],B[3]);
endmodule
