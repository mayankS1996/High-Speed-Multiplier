`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:16 02/27/2018 
// Design Name: 
// Module Name:    five_three 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module five_three(
    input [4:0] x,
    output s,c1,c2
    );
wire sum1,sum2,carry1,carry2,c3;
fulladder fa1(x[0],x[1],x[2],sum1,carry1);
half_adder ha1(x[3],x[4],sum2,carry2);
half_adder ha2(sum1,sum2,s,c3);
fulladder fa2(carry1,carry2,c3,c1,c2);

endmodule
