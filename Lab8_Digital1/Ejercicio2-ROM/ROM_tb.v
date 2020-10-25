// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 8 
// Ejercicio 2 - Memoria ROM

module testbench ();

reg [11:0]Lectura;
wire [7:0]Datos;

MROM M_R (Lectura, Datos);

initial begin
    
    #1
    $display(" ");
    $display(" Memoria ROM ");
    $display(" ");
    $display(" Espacio       |   Lectura   ");
    $display("--------------|-------------");
    $monitor("%b     ", Lectura, Datos);
       Lectura = 12'b000000000000 ;
    #1 Lectura = 12'b000000000000 ; // 0
    #1 Lectura = 12'b000000000001 ;
    #1 Lectura = 12'b000000000010 ;
    #1 Lectura = 12'b000000000011 ;
    #1 Lectura = 12'b000000000100 ;
    #1 Lectura = 12'b000000000101 ; // 5
    #1 Lectura = 12'b000000000110 ;
    #1 Lectura = 12'b000000000111 ;
    #1 Lectura = 12'b000000001000 ;
    #1 Lectura = 12'b000000001001 ;
    #1 Lectura = 12'b000000001010 ;  // 10

end

    initial 
    #30 $finish;

initial 
    begin
        $dumpfile("ROM_tb.vcd");
        $dumpvars(0,testbench);
    end

endmodule 