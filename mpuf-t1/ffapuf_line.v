`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2023 06:43:32
// Design Name: 
// Module Name: ffapuf_line
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


module ffapuf_line(
    input clk,
    input clr,
    input [31:0]C,
    output r
    );
    
    wire clock[9:0];
    (* dont_touch= "yes" *)ffapuf_slice_1 ffs1_init(clk,clr,C[2:0],clock[0]);
    
    generate
    genvar i;
    for (i=2;i<11;i=i+1)
    begin
    (* dont_touch= "yes" *)ffapuf_slice_1 ffs1(clock[i-2],clr,C[3*i-1:3*i-3],clock[i-1]);
    end
    endgenerate
    
    ffapuf_slice_2 ffs2(clock[9],clr,C[31:30],r);
endmodule