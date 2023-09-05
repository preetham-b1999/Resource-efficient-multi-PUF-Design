`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2023 01:51:15
// Design Name: 
// Module Name: ffapuf_top_
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


module ffapuf_top_(
    input clk,
    input clr,
    input clear,
    input [31:0]C,
    output [31:0]O
    );
    
   ffapuf ff(clk,clr,clear,C,O[31:0]);
endmodule
