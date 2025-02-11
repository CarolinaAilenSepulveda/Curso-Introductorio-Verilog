`timescale 1ns/100ps

//Módulo de Descripción del Circuito Sumador Completo
module sumador_completo(
  input A, B, Cin, 
  output S, Cout);
    wire P,G,H;
    medio_sumador ms1(A,B,P,G);
    medio_sumador ms2(P,Cin,S,H);
    or (Cout,G,H);
endmodule

