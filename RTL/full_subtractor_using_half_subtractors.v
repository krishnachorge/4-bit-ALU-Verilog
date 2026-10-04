`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2026 03:04:24 PM
// Design Name: 
// Module Name: full_subtractor_using_half_subtractors
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


module full_subtractor_using_half_subtractors(
    input A,
    input B,
    input Cin,
    output difference,
    output borrow
    );
    
    wire w1,w2,w3;
    half_subtractor hs1(.A(A),.B(B),.difference(w1),.borrow(w2));
      half_subtractor hs2(.A(A),.B(Cin),.difference(difference),.borrow(w3));
      
      or o1(borrow,w2,w3);
 
    
   
endmodule
