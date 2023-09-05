`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2023 01:31:59
// Design Name: 
// Module Name: pico_puf
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


module pico_puf(
input clk,
input clear,
output O
    );
    
 wire X1,X2;
 //wire Y1,Y2;
 (* dont_touch= "yes" *)d_flipflop df1(clk,clear,X1);
 (* dont_touch= "yes" *)d_flipflop df2(clk,clear,X2);
 
 //(* dont_touch= "yes" *)d_flipflop df3(X1,clear,Y1);
 //(* dont_touch= "yes" *)d_flipflop df4(X2,clear,Y2);
 //SR S1(Y1,Y2,O);
  SR S1(X1,X2,O);
endmodule
