`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2023 03:03:43
// Design Name: 
// Module Name: technique_t1
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
module technique_t1(
    input clk,
    input clear,
    input [29:0]C,
    output [29:0]Cbar
    );
    
    wire a,b;
    
    (* dont_touch= "yes" *)challenge_bits_t1 cb_t1(clk,clear,C[2:0],Cbar[2:0]);
    
    generate
    genvar i;
    for (i=2;i<11;i=i+1)
    begin
    (* dont_touch= "yes" *)challenge_bits_t1 cb_t1_inst(clk,clear,C[3*i-1:3*i-3],Cbar[3*i-1:3*i-3]);
    end
    endgenerate
endmodule
