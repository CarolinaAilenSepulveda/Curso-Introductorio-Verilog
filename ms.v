`timescale 1ns/100ps

//Módulo de Descripción del Circuito Medio Sumador
//Usando Compuertas
module medio_sumador(
  input A, 
  input B, 
  output S, 
  output Cout);
    xor (S,A,B);
    and (Cout,A,B);
endmodule
