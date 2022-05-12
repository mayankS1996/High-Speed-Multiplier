`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:50 02/18/2018 
// Design Name: 
// Module Name:    six_three_counter 
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
module six_three_counter(
    input [0:5]x,
    output s,c1,c2
    );
fulladder fa1(x[0],x[1],x[2],w1,w2);
fulladder fa2(x[3],x[4],x[5],w3,w4);
half_adder ha1(w1,w3,s,w5);
fulladder fa3(w5,w2,w4,c1,c2);

endmodule
