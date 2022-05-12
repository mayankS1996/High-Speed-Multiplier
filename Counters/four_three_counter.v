`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:51:55 02/27/2018 
// Design Name: 
// Module Name:    four_three 
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
module four_three(
    input [3:0] x,
    output s,c1,c2
    );
wire sum1,carry1,sum2,carry2,carry3;
half_adder ha1(x[0],x[1],sum1,carry1);
half_adder ha2(x[2],x[3],sum2,carry2);
half_adder ha3(sum1,sum2,s,carry3);
fulladder fa1(carry1,carry2,carry3,c1,c2);

endmodule
