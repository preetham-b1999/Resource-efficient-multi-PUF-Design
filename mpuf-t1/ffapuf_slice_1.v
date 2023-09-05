`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2023 06:22:42
// Design Name: 
// Module Name: ffapuf_slice_1
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
module ffapuf_slice_1(
    input clk,
    input clr,
    input [2:0]C,
    output r
    );
    
    wire Y1,Y2,Y3,Y4;
    wire Z1,Z2;
    
    
    /*wire Y1,Y2,Y3,Y4,Y5,Y6;
    wire Z1,Z2,Z3;
    
    (* dont_touch= "yes" *)d_flipflop dff1(clk,clr,Y1);
    (* dont_touch= "yes" *)d_flipflop dff2(clk,clr,Y2);
    (* dont_touch= "yes" *)d_flipflop dff3(clk,clr,Y3);
    (* dont_touch= "yes" *)d_flipflop dff4(clk,clr,Y4);
    
    (* dont_touch= "yes" *)mux21 mux1(Y1,Y2,C[0],Z1);
    (* dont_touch= "yes" *)mux21 mux2(Y3,Y4,C[1],Z2);
    
    (* dont_touch= "yes" *)d_flipflop dff5(Z1,clr,Y5);
    (* dont_touch= "yes" *)d_flipflop dff6(Z2,clr,Y6);
    
    (* dont_touch= "yes" *)mux21 mux3(Y5,Y6,C[2],Z3);
    
    (* dont_touch= "yes" *)d_flipflop dff7(Z3,clr,r);*/
    
    (* dont_touch= "yes" *)d_flipflop dff1(clk,clr,Y1);
    (* dont_touch= "yes" *)d_flipflop dff2(clk,clr,Y2);
    (* dont_touch= "yes" *)d_flipflop dff3(clk,clr,Y3);
    (* dont_touch= "yes" *)d_flipflop dff4(clk,clr,Y4);
    
    (* dont_touch= "yes" *)mux21 mux1(Y1,Y2,C[0],Z1);
    (* dont_touch= "yes" *)mux21 mux2(Y3,Y4,C[1],Z2);  
    (* dont_touch= "yes" *)mux21 mux3(Z1,Z2,C[2],r);
    
endmodule