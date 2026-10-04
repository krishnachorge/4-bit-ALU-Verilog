`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2026 03:23:27 PM
// Design Name: 
// Module Name: four_bit_subtractor
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


module four_bit_subtractor(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] difference,
    output Bout
    );
    
    wire c1,c2,c3;
    full_subtractor_using_half_subtractors fs0(A[0],B[0],Cin,difference[0],c1);
        full_subtractor_using_half_subtractors fs1(A[0],B[0],c1,difference[1],c2);
            full_subtractor_using_half_subtractors fs2(A[2],B[2],c1,difference[2],c3);
                full_subtractor_using_half_subtractors fs3(A[3],B[3],c3,difference[3],Bout);
endmodule
