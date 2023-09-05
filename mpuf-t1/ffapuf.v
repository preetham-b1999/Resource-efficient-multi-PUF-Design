`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2023 07:12:55
// Design Name: 
// Module Name: ffapuf
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


module ffapuf(
    input clk,
    input clear,
    input clr,
    input [31:0]C,
    output [31:0]O
    );
    
    generate
    genvar i;
    for (i=1;i<33;i=i+1)
    begin
    wire [31:0]C_bar;
    assign C_bar[30]=C[30];
    assign C_bar[31]=C[31];
    (* dont_touch = "yes" *)technique_t1 t1_inst(clk,clear,C[29:0],C_bar[29:0]);
    (* dont_touch = "yes" *)ffapuf_level ff_inst(clk,clr,C_bar[31:0],O[i-1]);
    end
    endgenerate
endmodule
