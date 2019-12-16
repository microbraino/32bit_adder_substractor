
/*
* adder_substractor.v
* Created on Sat Mar 30 00:25:14 2019
* @author: Abdulkadir Kahraman
*/


// 1 bit full adder
// Summ = A xor B xor C_in
// C_out = AB + AC_in + BC_in
module full_adder(input A,B,C_in,output S,C_out);
  wire net1, net2, net3;
  
  assign net1 = A ^ B; // net1 = A xor B
  assign net2 = net1 & C_in; // net2 = net1 and C_in
  assign net3 = A & B; // net3 = a and b
  assign S = net1 ^ C_in; // Summ = net1 xor C_in;
  assign C_out = net2 | net3; // C_out = net2 or net3
  
endmodule

// 32 bit adder-substractor
// A, B : 32 bit inputs
// M : caryy_in or sign bit
// S : 32 bit output
// V : overflow bit 
// C : carry_out bit
module adder_substractor32(A,B,M,S,V,C);
  input [31:0] A,B;
  input M;
  output [31:0] S;
  output V,C;
  
  wire [31:0] net_MxorB;
  
  assign net_MxorB[0] = M ^ B[0];
  assign net_MxorB[1] = M ^ B[1];
  assign net_MxorB[2] = M ^ B[2];
  assign net_MxorB[3] = M ^ B[3];
  assign net_MxorB[4] = M ^ B[4];
  assign net_MxorB[5] = M ^ B[5];
  assign net_MxorB[6] = M ^ B[6];
  assign net_MxorB[7] = M ^ B[7];
  assign net_MxorB[8] = M ^ B[8];
  assign net_MxorB[9] = M ^ B[9];
  assign net_MxorB[10] = M ^ B[10];
  assign net_MxorB[11] = M ^ B[11];
  assign net_MxorB[12] = M ^ B[12];
  assign net_MxorB[13] = M ^ B[13];
  assign net_MxorB[14] = M ^ B[14];
  assign net_MxorB[15] = M ^ B[15];
  assign net_MxorB[16] = M ^ B[16];
  assign net_MxorB[17] = M ^ B[17];
  assign net_MxorB[18] = M ^ B[18];
  assign net_MxorB[19] = M ^ B[19];
  assign net_MxorB[20] = M ^ B[20];
  assign net_MxorB[21] = M ^ B[21];
  assign net_MxorB[22] = M ^ B[22];
  assign net_MxorB[23] = M ^ B[23];
  assign net_MxorB[24] = M ^ B[24];
  assign net_MxorB[25] = M ^ B[25];
  assign net_MxorB[26] = M ^ B[26];
  assign net_MxorB[27] = M ^ B[27];
  assign net_MxorB[28] = M ^ B[28];
  assign net_MxorB[29] = M ^ B[29];
  assign net_MxorB[30] = M ^ B[30];
  assign net_MxorB[31] = M ^ B[31];
  
  wire [30:0] carry;
  
  full_adder faddr0(.A(A[0]), .B(net_MxorB[0]), .C_in(M),.S(S[0]), .C_out(carry[0]));
  full_adder faddr1(A[1], net_MxorB[1], carry[0], S[1], carry[1]);
  full_adder faddr2(A[2], net_MxorB[2], carry[1], S[2], carry[2]);
  full_adder faddr3(A[3], net_MxorB[3], carry[2], S[3], carry[3]);
  full_adder faddr4(A[4], net_MxorB[4], carry[3], S[4], carry[4]);
  full_adder faddr5(A[5], net_MxorB[5], carry[4], S[5], carry[5]);
  full_adder faddr6(A[6], net_MxorB[6], carry[5], S[6], carry[6]);
  full_adder faddr7(A[7], net_MxorB[7], carry[6], S[7], carry[7]);
  full_adder faddr8(A[8], net_MxorB[8], carry[7], S[8], carry[8]);
  full_adder faddr9(A[9], net_MxorB[9], carry[8], S[9], carry[9]);
  full_adder faddr10(A[10], net_MxorB[10], carry[9], S[10], carry[10]);
  full_adder faddr11(A[11], net_MxorB[11], carry[10], S[11], carry[11]);
  full_adder faddr12(A[12], net_MxorB[12], carry[11], S[12], carry[12]);
  full_adder faddr13(A[13], net_MxorB[13], carry[12], S[13], carry[13]);
  full_adder faddr14(A[14], net_MxorB[14], carry[13], S[14], carry[14]);
  full_adder faddr15(A[15], net_MxorB[15], carry[14], S[15], carry[15]);
  full_adder faddr16(A[16], net_MxorB[16], carry[15], S[16], carry[16]);
  full_adder faddr17(A[17], net_MxorB[17], carry[16], S[17], carry[17]);
  full_adder faddr18(A[18], net_MxorB[18], carry[17], S[18], carry[18]);
  full_adder faddr19(A[19], net_MxorB[19], carry[18], S[19], carry[19]);
  full_adder faddr20(A[20], net_MxorB[20], carry[19], S[20], carry[20]);
  full_adder faddr21(A[21], net_MxorB[21], carry[20], S[21], carry[21]);
  full_adder faddr22(A[22], net_MxorB[22], carry[21], S[22], carry[22]);
  full_adder faddr23(A[23], net_MxorB[23], carry[22], S[23], carry[23]);
  full_adder faddr24(A[24], net_MxorB[24], carry[23], S[24], carry[24]);
  full_adder faddr25(A[25], net_MxorB[25], carry[24], S[25], carry[25]);
  full_adder faddr26(A[26], net_MxorB[26], carry[25], S[26], carry[26]);
  full_adder faddr27(A[27], net_MxorB[27], carry[26], S[27], carry[27]);
  full_adder faddr28(A[28], net_MxorB[28], carry[27], S[28], carry[28]);
  full_adder faddr29(A[29], net_MxorB[29], carry[28], S[29], carry[29]);
  full_adder faddr30(A[30], net_MxorB[30], carry[29], S[30], carry[30]);
  full_adder faddr31(A[31], net_MxorB[31], carry[30], S[31], C);
  
  assign V = C ^ carry[20]; 
endmodule
