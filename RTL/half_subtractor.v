`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module half_subtractor(
    input A,
    input B,
    output difference,
    output borrow
    );
    
    wire nA;
    not n1(nA,A);
    
    xor x1(difference,A,B);
    and a1(borrow,nA,B);
endmodule
