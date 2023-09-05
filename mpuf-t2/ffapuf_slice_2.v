`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2023 06:38:36
// Design Name: 
// Module Name: ffapuf_slice_2
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


module ffapuf_slice_2(
    input clk,
    input clr,
    input [1:0]C,
    output r
    );
    
    wire Y1,Y2,Y3,Y4;
    wire Z1;
    
    (* dont_touch= "yes" *)d_flipflop dff1(clk,clr,Y1);
    (* dont_touch= "yes" *)d_flipflop dff2(clk,clr,Y2);
    
    (* dont_touch= "yes" *)mux21 mux1(Y1,Y2,C[0],Z1);
    
    (* dont_touch= "yes" *)d_flipflop dff3(Z1,clr,Y3);
    (* dont_touch= "yes" *)d_flipflop dff4(Z1,clr,Y4);
    
    (* dont_touch= "yes" *)mux21 mux2(Y3,Y4,C[1],r);
endmodule
