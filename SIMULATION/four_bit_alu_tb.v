`timescale 1ns / 1ps
module four_bit_alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [3:0] SEL;

wire [3:0] Y;

FOUR_BIT_ALU uut(.A(A),.B(B),.SEL(SEL),.Y(Y));

initial begin
    
    A = 4'b1110;
    B = 4'b0111;
     
     
    SEL = 4'b0000;   // ADD
    #10;

    SEL = 4'b0001;   // SUB
    #10;

    SEL = 4'b0010;   // AND
    #10;

    SEL = 4'b0011;   // NAND
    #10;

    SEL = 4'b0100;   // OR
    #10;

    SEL = 4'b0101;   // NOR
    #10;

    SEL = 4'b0110;   // XOR
    #10;

    SEL = 4'b0111;   // XNOR
    #10;

    SEL = 4'b1000;   // NOT
    #10;

    $finish;

end





   
endmodule
