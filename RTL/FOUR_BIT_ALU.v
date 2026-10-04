`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2026 05:51:12 PM
// Design Name: 
// Module Name: FOUR_BIT_ALU
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


module FOUR_BIT_ALU(
    input [3:0] A,
    input [3:0] B,
    input [3:0] SEL,
    output reg [3:0] Y
    );
    wire [3:0] add_result; 
     wire [3:0] sub_result;
      wire [3:0] and_result;
       wire [3:0] nand_result;
        wire [3:0] or_result;
         wire [3:0] nor_result;
          wire [3:0] xor_result;
           wire [3:0] xnor_result;
            wire [3:0] not_result;
            
            four_bit_adder adder1(.A(A),.B(B),.Cin(1'b0),.Sum(add_result),.Cout());
               four_bit_subtractor subtractor1(.A(A),.B(B),.Cin(1'b0),.difference(sub_result),.Bout());
               four_bit_and and1(.A(A),.B(B),.Y(and_result));
                four_bit_nand nand1(.A(A),.B(B),.Y(nand_result));
                 four_bit_or or1(.A(A),.B(B),.Y(or_result));
                  four_bit_nor nor1(.A(A),.B(B),.Y(nor_result));
                   four_bit_xor xor1(.A(A),.B(B),.Y(xor_result));
                    four_bit_xnor xnor1(.A(A),.B(B),.Y(xnor_result));
                     FOUR_BIT_NOT not1(.A(A),.Y(not_result));
                     
                     
     always@(*) begin
     
      case (SEL)  
     
                   
    4'b0000: Y = add_result; 
     4'b0001: Y = sub_result;
      4'b0010: Y=and_result;
       4'b0011: Y= nand_result;
        4'b0100: Y=or_result;
         4'b0101: Y= nor_result;
          4'b0110: Y=xor_result;
           4'b0111: Y= xnor_result;
            4'b1000: Y= not_result;                
               default: Y=4'b0000;
               
              endcase
              end     
                     
                    
            
            
endmodule
