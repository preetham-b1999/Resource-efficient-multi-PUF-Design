`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2023 06:13:15
// Design Name: 
// Module Name: challenge_bits_t2
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


module challenge_bits_t2(input clk,input clear,input [2:0]C,output Cbm);

wire w1,w2;
//wire z1,z2,z3;
wire z1,z2;
//wire c1,c2,c3,c4;

(* dont_touch= "yes" *)pico_puf p1(clk,clear,w1);
(* dont_touch= "yes" *)pico_puf p2(clk,clear,w2);

(* dont_touch= "yes" *)mux21 m1(w1,w2,w1,z1);
(* dont_touch= "yes" *)mux21 m2(w2,w1,w1,z2);

//(* dont_touch= "yes" *)assign z3=z1;

//assign c1=z3^C[0];
//assign c2=z3^C[1];
//assign c3=z2^C[2];

assign Cbm=z1^z2^C[0]^C[1]^C[2];
endmodule