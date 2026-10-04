`timescale 1ns / 1ps



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
