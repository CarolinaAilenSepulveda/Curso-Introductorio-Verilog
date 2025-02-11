`timescale 1ns/100ps

//Modulo de Estimulo para el Medio restador
module test_medio_restador();
  reg  A,B;
  wire dif,borrow;
  medio_restador restador1(A, B, dif, borrow);
initial
  begin
    $dumpfile("out.vcd");
    $dumpvars(0,test_medio_restador);

        A = 1'b0; B = 1'b0;
    #25 A = 1'b0; B = 1'b1;
    #25 A = 1'b1; B = 1'b0;
    #25 A = 1'b1; B = 1'b1; 
    #25;
    
   
  end
initial
#250 $finish; //Duración de la Simulación
endmodule