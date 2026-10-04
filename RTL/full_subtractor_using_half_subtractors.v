`timescale 1ns / 1ps



module full_subtractor_using_half_subtractors(
    input A,
    input B,
    input Cin,
    output difference,
    output borrow
    );
    
    wire w1,w2,w3;
    half_subtractor hs1(.A(A),.B(B),.difference(w1),.borrow(w2));
      half_subtractor hs2(.A(w1),.B(Cin),.difference(difference),.borrow(w3));
      
      or o1(borrow,w2,w3);
 
    
   
endmodule
