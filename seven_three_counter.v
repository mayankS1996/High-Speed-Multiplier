`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:51 02/18/2018 
// Design Name: 
// Module Name:    seven_three_counter 
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
module seven_three_counter(
    input [6:0]x,
    output s,c1,c2
    );
wire w1,w2,w3,w4,w5;
fulladder fa1(x[0],x[1],x[2],w1,w2);
fulladder fa2(x[4],x[5],x[6],w3,w4);
fulladder fa3(w1,w3,x[3],s,w5);
fulladder fa4(w5,w2,w4,c1,c2);

endmodule
