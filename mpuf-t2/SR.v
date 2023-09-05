`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2023 07:08:35
// Design Name: 
// Module Name: SR
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


module SR(
input a,
input b,
output r
    );
    
    wire temp1,temp2;
    
    nand N1(temp1,a,temp2);
    nand N2(temp2,b,temp1);
    
    assign r=temp1;
endmodule
