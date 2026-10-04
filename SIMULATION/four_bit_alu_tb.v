`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2026 11:24:43 AM
// Design Name: 
// Module Name: four_bit_alu_tb
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


module four_bit_alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [3:0] SEL;

wire [3:0] Y;

FOUR_BIT_ALU uut(.A(A),.B(B),.SEL(SEL),.Y(Y));

initial begin

A = 4'b0011;
B = 4'b0011;


SEL = 4'b0000;

#10;

SEL =4'b0001;
#10;

SEL =4'b0010;
#10;

end



   
endmodule
