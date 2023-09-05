`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2023 03:02:25
// Design Name: 
// Module Name: challenge_bits_t1
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


module challenge_bits_t1(
    input clk,
    input clear,
    input [2:0]C,
    output [2:0]C_bar
    );
    
    wire w1,w2;
    wire z1,z2;

 (* dont_touch= "yes" *)pico_puf p1(clk,clear,w1);
 (* dont_touch= "yes" *)pico_puf p2(clk,clear,w2);

 (* dont_touch= "yes" *)mux21 m1(w1,w2,w1,z1);
 (* dont_touch= "yes" *)mux21 m2(w2,w1,w1,z2);

 (* dont_touch= "yes" *)assign C_bar[0]=z1^C[0];
 (* dont_touch= "yes" *)assign C_bar[1]=z1^C[1];
 (* dont_touch= "yes" *)assign C_bar[2]=z2^C[2];    
    
endmodule
