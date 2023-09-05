`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2023 07:00:49
// Design Name: 
// Module Name: ffapuf_level
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


module ffapuf_level(
    input clk,
    input clr,
    input [31:0]C,
    output r
    );
    
    wire X1,X2;
    
    (* dont_touch= "yes" *)ffapuf_line ffl_1(clk,clr,C[31:0],X1);
    (* dont_touch= "yes" *)ffapuf_line ffl_2(clk,clr,C[31:0],X2);
    
    SR SR1(X1,X2,r);
endmodule
