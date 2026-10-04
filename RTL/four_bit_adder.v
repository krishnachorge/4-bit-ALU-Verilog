`timescale 1ns / 1ps



module four_bit_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    
    wire c1,c2,c3;
  full_adder_using_half_adders fa0(.A(A[0]), .B(B[0]), .Cin(Cin), .sum(Sum[0]), .carry(c1));
    full_adder_using_half_adders fa1(.A(A[1]), .B(B[1]), .Cin(c1),  .sum(Sum[1]), .carry(c2));
    full_adder_using_half_adders fa2(.A(A[2]), .B(B[2]), .Cin(c2),  .sum(Sum[2]), .carry(c3));
    full_adder_using_half_adders fa3(.A(A[3]), .B(B[3]), .Cin(c3),  .sum(Sum[3]), .carry(Cout));

    
endmodule
