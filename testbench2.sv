`timescale 1ns/100ps

//Módulo de Estímulo para el Circuito Sumador de 8 Bits
module test_sumador();
  reg  [6:0]A, B;
  wire [7:0]Suma;
  sumador_8bits sumador(A, B, 0, Suma[6:0], Suma[7]);
initial
  begin
    $dumpfile("out.vcd");
    $dumpvars(1,test_sumador);

        A = 0;  B = 0;
	#25	A = 2;  B = 1;
	#25	A = 4;  B = 10;
	#25	A = 10; B = 10;
	#25	A =  2; B = 2;
	#25	A = 15; B = 15;
    #25	A = 12; B = 30;
    #25	A = 100; B = 15;
    #25	A = 100; B = 116;
    #25	A = 100; B = 73;
	#25;
  end
initial
#300 $finish; //Duración de la Simulación
endmodule
