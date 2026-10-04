`timescale 1ns / 1ps



module half_adder(
    input A,
    input B,
    output sum,
    output carry
    );
    
    xor x1(sum,A,B);
    and a1(carry,A,B);
    
endmodule
