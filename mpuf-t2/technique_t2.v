`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2023 06:08:02
// Design Name: 
// Module Name: technique_t2
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


module technique_t2(
    input clk,
    input clear,
    input [29:0]C,
    output [9:0]Cbm
    );
    wire a,b;
    
    (* dont_touch= "yes" *)challenge_bits_t2 cb_t2(clk,clear,C[2:0],Cbm[0]);
    
    generate
    genvar i;
    for (i=2;i<11;i=i+1)
    begin
    (* dont_touch= "yes" *)challenge_bits_t2 cb_t2_inst(clk,clear,C[3*i-1:3*i-3],Cbm[i-1]);
    end
    endgenerate
endmodule