`timescale 1ns/100ps

//Módulo de Descripción del Sumador 8 bits (Ripple Adder)
module sumador_8bits(
  input [7:0] A,
  input [7:0] B,
  input Ci,
  output [7:0] S,
  output Co);
    wire C1,C2,C3,C4,C5,C6,C7;
    sumador_completo sc0(A[0],B[0],Ci,S[0],C1);
    sumador_completo sc1(A[1],B[1],C1,S[1],C2);
    sumador_completo sc2(A[2],B[2],C2,S[2],C3);
    sumador_completo sc3(A[3],B[3],C3,S[3],C4);
    sumador_completo sc4(A[4],B[4],C4,S[4],C5);
    sumador_completo sc5(A[5],B[5],C5,S[5],C6);
    sumador_completo sc6(A[6],B[6],C6,S[6],C7);
    sumador_completo sc7(A[7],B[7],C7,S[7],Co);
endmodule
