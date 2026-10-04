`timescale 1ns / 1ps


module four_bit_xnor(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Y
    );
    xnor xn0(Y[0],A[0],B[0]);
     xnor xn1(Y[1],A[1],B[1]);
      xnor xn2(Y[2],A[2],B[2]);
       xnor xn3(Y[3],A[3],B[3]);
endmodule
