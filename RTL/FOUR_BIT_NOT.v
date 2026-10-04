`timescale 1ns / 1ps


module FOUR_BIT_NOT(
    input [3:0] A,
    output [3:0] Y
    );
    not n0(Y[0],A[0]);
       not n1(Y[1],A[1]);
          not n2(Y[2],A[2]);
             not n3(Y[3],A[3]);
endmodule
