`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2026 01:48:22 PM
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    
    wire c1,c2,c3;
     full_adder_using_half_adders fa0(A[0],B[0],Sum[0],c1);
      full_adder_using_half_adders fa1(A[1],B[1],c1,Sum[1],c2);
       full_adder_using_half_adders fa2(A[2],B[2],c2,Sum[2],c3);
        full_adder_using_half_adders fa3(A[3],B[3],c3,Sum[3],Cout);
    
endmodule
