`timescale 1ns/100ps

//Módulo Descriptivo del Medio Restador
//Usando Compuertas
module medio_restador(
  input A, 
  input B, 
  output dif, 
  output borrow);
  
    wire aux;
    xor g1(dif,A,B);
    not g2(aux,A);
    and g3(borrow,aux,B);
  
endmodule
