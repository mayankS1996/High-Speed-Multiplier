`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:52 03/11/2018 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(
    input [15:0] a,b,
	 output [31:0] o
    );
(* keep = "true" *)wire [1:165]w;
wire sh1,sh2,sh3,sh4,sh5,sh6,sh7,sh8,sh9,sh10,sh11,sh12,sh13,sh14,
ch1,ch2,ch3,ch4,ch5,ch6,ch7,ch8,ch9,ch10,ch11,ch12,ch13,ch14,
sf1,sf2,sf3,sf4,sf5,sf6,sf7,sf8,sf9,sf10,sf11,sf12,sf13,sf14,
sf15,sf16,sf17,sf18,sf19,sf20,sf21,sf22,sf23,sf24,sf25,sf26,sf27,
sf28,sf29,sf30,sf31,sf32,sf33,sf34,sf35,sf36,sf37,sf38,sf39,sf40,
sf41,sf42,sf43,sf44,sf45,sf46,sf47,sf48,sf49,sf50,sf51,sf52,sf53,
sf54,sf55,sf56,
cf1,cf2,cf3,cf4,cf5,cf6,cf7,cf8,cf9,cf10,cf11,cf12,cf13,cf14,cf15,cf16,cf17,cf18,cf19,
cf20,cf21,cf22,cf23,cf24,cf25,cf26,cf27,cf28,cf29,cf30,cf31,cf32,cf33,cf34,cf35,cf36,
cf37,cf38,cf39,cf40,cf41,cf42,cf43,cf44,cf45,cf46,cf47,cf48,cf49,cf50,cf51,cf52,cf53,cf54,
cf55,cf56;

//step 1
assign o[0]=b[0]&a[0];

half_adder ha1(b[0]&a[1],b[1]&a[0],sh1,ch1);
fulladder fa1(b[0]&a[2],b[1]&a[1],b[2]&a[0],sf1,cf1);
four_three c1({b[0]&a[3],b[1]&a[2],b[2]&a[1],b[3]&a[0]},w[1],w[2],w[3]);
five_three c2({b[0]&a[4],b[1]&a[3],b[2]&a[2],b[3]&a[1],b[4]&a[0]},w[4],w[5],w[6]);
six_three_counter c3({b[0]&a[5],b[1]&a[4],b[2]&a[3],b[3]&a[2],b[4]&a[1],b[5]&a[0]},w[7],w[8],w[9]);

seven_three_counter c4({b[0]&a[6],b[1]&a[5],b[2]&a[4],b[3]&a[3],b[4]&a[2],b[5]&a[1],b[6]&a[0]},w[10],w[11],w[12]);
seven_three_counter c5({b[0]&a[7],b[1]&a[6],b[2]&a[5],b[3]&a[4],b[4]&a[3],b[5]&a[2],b[6]&a[1]},w[13],w[14],w[15]);
seven_three_counter c6({b[0]&a[8],b[1]&a[7],b[2]&a[6],b[3]&a[5],b[4]&a[4],b[5]&a[3],b[6]&a[2]},w[16],w[17],w[18]);
seven_three_counter c7({b[0]&a[9],b[1]&a[8],b[2]&a[7],b[3]&a[6],b[4]&a[5],b[5]&a[4],b[6]&a[3]},w[19],w[20],w[21]);
seven_three_counter c8({b[0]&a[10],b[1]&a[9],b[2]&a[8],b[3]&a[7],b[4]&a[6],b[5]&a[5],b[6]&a[4]},w[22],w[23],w[24]);
seven_three_counter c9({b[0]&a[11],b[1]&a[10],b[2]&a[9],b[3]&a[8],b[4]&a[7],b[5]&a[6],b[6]&a[5]},w[25],w[26],w[27]);
seven_three_counter c10({b[0]&a[12],b[1]&a[11],b[2]&a[10],b[3]&a[9],b[4]&a[8],b[5]&a[7],b[6]&a[6]},w[28],w[29],w[30]);
seven_three_counter c11({b[0]&a[13],b[1]&a[12],b[2]&a[11],b[3]&a[10],b[4]&a[9],b[5]&a[8],b[6]&a[7]},w[31],w[32],w[33]);
seven_three_counter c12({b[0]&a[14],b[1]&a[13],b[2]&a[12],b[3]&a[11],b[4]&a[10],b[5]&a[9],b[6]&a[8]},w[34],w[35],w[36]);
seven_three_counter c13({b[0]&a[15],b[1]&a[14],b[2]&a[13],b[3]&a[12],b[4]&a[11],b[5]&a[10],b[6]&a[9]},w[37],w[38],w[39]);

seven_three_counter c14({b[1]&a[15],b[2]&a[14],b[3]&a[13],b[4]&a[12],b[5]&a[11],b[6]&a[10],b[7]&a[9]},w[40],w[41],w[42]);
seven_three_counter c15({b[2]&a[15],b[3]&a[14],b[4]&a[13],b[5]&a[12],b[6]&a[11],b[7]&a[10],b[8]&a[9]},w[43],w[44],w[45]);

six_three_counter c16({b[3]&a[15],b[4]&a[14],b[5]&a[13],b[6]&a[12],b[7]&a[11],b[8]&a[10]},w[46],w[47],w[48]);
five_three c17({b[4]&a[15],b[5]&a[14],b[6]&a[13],b[7]&a[12],b[8]&a[11]},w[49],w[50],w[51]);
four_three c18({b[5]&a[15],b[6]&a[14],b[7]&a[13],b[8]&a[12]},w[52],w[53],w[54]);
fulladder fa2(b[6]&a[15],b[7]&a[14],b[8]&a[13],sf2,cf2);
half_adder ha2(b[7]&a[15],b[8]&a[14],sh2,ch2);


//step 1 part2

half_adder ha3(b[7]&a[1],b[8]&a[0],sh3,ch3);
fulladder fa3(b[7]&a[2],b[8]&a[1],b[9]&a[0],sf3,cf3);
four_three c19({b[7]&a[3],b[8]&a[2],b[9]&a[1],b[10]&a[0]},w[55],w[56],w[57]);
five_three c20({b[7]&a[4],b[8]&a[3],b[9]&a[2],b[10]&a[1],b[11]&a[0]},w[58],w[59],w[60]);
six_three_counter c21({b[7]&a[5],b[8]&a[4],b[9]&a[3],b[10]&a[2],b[11]&a[1],b[12]&a[0]},w[61],w[62],w[63]);

seven_three_counter c22({b[7]&a[6],b[8]&a[5],b[9]&a[4],b[10]&a[3],b[11]&a[2],b[12]&a[1],b[13]&a[0]},w[64],w[65],w[66]);
seven_three_counter c23({b[7]&a[7],b[8]&a[6],b[9]&a[5],b[10]&a[4],b[11]&a[3],b[12]&a[2],b[13]&a[1]},w[67],w[68],w[69]);
seven_three_counter c24({b[7]&a[8],b[8]&a[7],b[9]&a[6],b[10]&a[5],b[11]&a[4],b[12]&a[3],b[13]&a[2]},w[70],w[71],w[72]);
seven_three_counter c25({b[8]&a[8],b[9]&a[7],b[10]&a[6],b[11]&a[5],b[12]&a[4],b[13]&a[3],b[14]&a[2]},w[73],w[74],w[75]);
seven_three_counter c26({b[9]&a[8],b[10]&a[7],b[11]&a[6],b[12]&a[5],b[13]&a[4],b[14]&a[3],b[15]&a[2]},w[76],w[77],w[78]);
seven_three_counter c27({b[9]&a[9],b[10]&a[8],b[11]&a[7],b[12]&a[6],b[13]&a[5],b[14]&a[4],b[15]&a[3]},w[79],w[80],w[81]);
seven_three_counter c28({b[9]&a[10],b[10]&a[9],b[11]&a[8],b[12]&a[7],b[13]&a[6],b[14]&a[5],b[15]&a[4]},w[82],w[83],w[84]);
seven_three_counter c29({b[9]&a[11],b[10]&a[10],b[11]&a[9],b[12]&a[8],b[13]&a[7],b[14]&a[6],b[15]&a[5]},w[85],w[86],w[87]);
seven_three_counter c30({b[9]&a[12],b[10]&a[11],b[11]&a[10],b[12]&a[9],b[13]&a[8],b[14]&a[7],b[15]&a[6]},w[88],w[89],w[90]);
seven_three_counter c31({b[9]&a[13],b[10]&a[12],b[11]&a[11],b[12]&a[10],b[13]&a[9],b[14]&a[8],b[15]&a[7]},w[91],w[92],w[93]);
seven_three_counter c32({b[9]&a[14],b[10]&a[13],b[11]&a[12],b[12]&a[11],b[13]&a[10],b[14]&a[9],b[15]&a[8]},w[94],w[95],w[96]);
seven_three_counter c33({b[9]&a[15],b[10]&a[14],b[11]&a[13],b[12]&a[12],b[13]&a[11],b[14]&a[10],b[15]&a[9]},w[97],w[98],w[99]);


six_three_counter c34({b[10]&a[15],b[11]&a[14],b[12]&a[13],b[13]&a[12],b[14]&a[11],b[15]&a[10]},w[100],w[101],w[102]);
five_three c35({b[11]&a[15],b[12]&a[14],b[13]&a[13],b[14]&a[12],b[15]&a[11]},w[103],w[104],w[105]);
four_three c36({b[12]&a[15],b[13]&a[14],b[14]&a[13],b[15]&a[12]},w[106],w[107],w[108]);
fulladder fa4(b[13]&a[15],b[14]&a[14],b[15]&a[13],sf4,cf4);
half_adder ha4(b[14]&a[15],b[13]&a[14],sh4,ch4);

half_adder ha5(b[14]&a[1],b[15]&a[0],sh5,ch5);
half_adder ha6(ch5,b[15]&a[1],sh6,ch6);

//step 2 
//wires 109-114 are not here no need of them skipped by  mistake

fulladder fa5(w[7],w[5],w[3],sf5,cf5);
fulladder fa6(w[8],w[10],w[6],sf6,cf6);
four_three c37({b[7]&a[0],w[13],w[11],w[9]},w[115],w[116],w[117]);
four_three c38({w[16],w[14],w[12],sh3},w[118],w[119],w[120]);
five_three c39({sf3,ch3,w[19],w[17],w[15]},w[121],w[122],w[123]);
five_three c40({w[55],cf3,w[22],w[20],w[18]},w[124],w[125],w[126]);
five_three c41({w[56],w[58],w[25],w[23],w[21]},w[127],w[128],w[129]);
six_three_counter c42({w[28],w[26],w[24],w[61],w[59],w[57]},w[130],w[131],w[132]);
six_three_counter c43({w[31],w[29],w[27],w[64],w[62],w[60]},w[133],w[134],w[135]);
seven_three_counter c44({w[34],w[32],w[30],w[67],w[65],w[63],b[14]&a[0]},w[136],w[137],w[138]);
seven_three_counter c45({w[37],w[35],w[33],w[70],w[68],w[66],sh5},w[139],w[140],w[141]);
seven_three_counter c46({w[40],w[38],w[36],w[73],w[71],w[69],sh6},w[142],w[143],w[144]);
seven_three_counter c47({w[43],w[41],w[39],w[76],w[74],w[72],ch6},w[145],w[146],w[147]);
six_three_counter c48({w[46],w[44],w[42],w[79],w[77],w[75]},w[148],w[149],w[150]);
six_three_counter c49({w[49],w[47],w[45],w[82],w[80],w[78]},w[151],w[152],w[153]);
six_three_counter c50({w[52],w[50],w[48],w[85],w[83],w[81]},w[154],w[155],w[156]);
six_three_counter c51({sf2,w[53],w[51],w[88],w[86],w[84]},w[157],w[158],w[159]);
six_three_counter c52({sh2,cf2,w[54],w[91],w[89],w[87]},w[160],w[161],w[162]);
five_three c53({ch2,b[8]&a[15],w[94],w[92],w[90]},w[163],w[164],w[165]);
fulladder fa7(w[97],w[95],w[93],sf7,cf7);
fulladder fa8(w[96],w[98],w[100],sf8,cf8);
fulladder fa9(w[103],w[101],w[99],sf9,cf9);
fulladder fa10(w[106],w[104],w[102],sf10,cf10);
fulladder fa11(sf4,w[107],w[105],sf11,cf11);
fulladder fa12(sh4,cf4,w[108],sf12,cf12);

//step3
fulladder fa13(w[121],w[119],w[117],sf13,cf13);
fulladder fa14(w[124],w[122],w[120],sf14,cf14);
fulladder fa15(w[127],w[125],w[123],sf15,cf15);
fulladder fa16(w[130],w[128],w[126],sf16,cf16);
fulladder fa17(w[133],w[131],w[129],sf17,cf17);
fulladder fa18(w[136],w[134],w[132],sf18,cf18);
fulladder fa19(w[139],w[137],w[135],sf19,cf19);
fulladder fa20(w[142],w[140],w[138],sf20,cf20);
fulladder fa21(w[145],w[143],w[141],sf21,cf21);
fulladder fa22(w[148],w[146],w[144],sf22,cf22);
fulladder fa23(w[151],w[149],w[147],sf23,cf23);
fulladder fa24(w[154],w[152],w[150],sf24,cf24);
fulladder fa25(w[157],w[155],w[153],sf25,cf25);
fulladder fa26(w[160],w[158],w[156],sf26,cf26);
fulladder fa27(w[163],w[161],w[159],sf27,cf27);
fulladder fa28(sf7,w[164],w[162],sf28,cf28);
fulladder fa29(sf8,cf7,w[165],sf29,cf29);

half_adder ha7(sf9,cf8,sh7,ch7);
half_adder ha8(sf10,cf9,sh8,ch8);
half_adder ha9(sf11,cf10,sh9,ch9);
half_adder ha10(sf12,cf11,sh10,ch10);
fulladder fa30(ch4,cf12,b[15]&a[15],sf30,cf30);


//step-4

half_adder ha11(sf1,ch1,sh11,ch11);
fulladder fa31(w[1],cf1,ch11,sf31,cf31);
fulladder fa32(w[4],w[2],cf31,sf32,cf32);

half_adder ha12(sf5,cf32,sh12,ch12);
fulladder fa33(sf6,cf5,ch12,sf33,cf33);
fulladder fa34(w[115],cf6,cf33,sf34,cf34);
fulladder fa35(w[118],w[116],cf34,sf35,cf35);

half_adder ha13(sf13,cf35,sh13,ch13);
fulladder fa36(sf14,cf13,ch13,sf36,cf36);
fulladder fa37(sf15,cf14,cf36,sf37,cf37);
fulladder fa38(sf16,cf15,cf37,sf38,cf38);
fulladder fa39(sf17,cf16,cf38,sf39,cf39);
fulladder fa40(sf18,cf17,cf39,sf40,cf40);
fulladder fa41(sf19,cf18,cf40,sf41,cf41);
fulladder fa42(sf20,cf19,cf41,sf42,cf42);
fulladder fa43(sf21,cf20,cf42,sf43,cf43);
fulladder fa44(sf22,cf21,cf43,sf44,cf44);
fulladder fa45(sf23,cf22,cf44,sf45,cf45);
fulladder fa46(sf24,cf23,cf45,sf46,cf46);
fulladder fa47(sf25,cf24,cf46,sf47,cf47);
fulladder fa48(sf26,cf25,cf47,sf48,cf48);
fulladder fa49(sf27,cf26,cf48,sf49,cf49);
fulladder fa50(sf28,cf27,cf49,sf50,cf50);
fulladder fa51(sf29,cf28,cf50,sf51,cf51);
fulladder fa52(sh7,cf29,cf51,sf52,cf52);
fulladder fa53(sh8,ch7,cf52,sf53,cf53);
fulladder fa54(sh9,ch8,cf53,sf54,cf54);
fulladder fa55(sh10,ch9,cf54,sf55,cf55);
fulladder fa56(sf30,ch10,cf55,sf56,cf56);
half_adder ha14(cf30,cf56,sh14,ch14);

//step-5

assign o[1]=sh1;
assign o[2]=sh11;
assign o[3]=sf31;
assign o[4]=sf32;
assign o[5]=sh12;
assign o[6]=sf33;
assign o[7]=sf34;
assign o[8]=sf35;
assign o[9]=sh13;
assign o[10]=sf36;
assign o[11]=sf37;
assign o[12]=sf38;
assign o[13]=sf39;
assign o[14]=sf40;
assign o[15]=sf41;
assign o[16]=sf42;
assign o[17]=sf43;
assign o[18]=sf44;
assign o[19]=sf45;
assign o[20]=sf46;
assign o[21]=sf47;
assign o[22]=sf48;
assign o[23]=sf49;
assign o[24]=sf50;
assign o[25]=sf51;
assign o[26]=sf52;
assign o[27]=sf53;
assign o[28]=sf54;
assign o[29]=sf55;
assign o[30]=sf56;
assign o[31]=sh14;


endmodule

