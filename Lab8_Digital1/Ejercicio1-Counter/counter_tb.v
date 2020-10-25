// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 8 
// Ejercicio 1 - Contador de 12 bits

module testbench ();

reg clk, ENABLE, reset, nonblck ;
reg [11:0]LOAD;
wire[11:0]Q ;

counter CONT (clk, ENABLE, reset, nonblck, LOAD, Q);


initial begin
    clk=1;
    forever #1 clk = ~clk;
end

    initial begin

        #1
        $display(" ");
        $display(" Contador de 12 bits");
        $display("");
        $display("\t\t Time \tclk  \t E  \tRst   \tN-B | \tContador");       // Se utilizo \t para que el texto y los valores estuvieran tabulados.
        $display("------------------------------------|------------");
        $monitor("%d  \t %d     \t %b   \t %b  \t %b   \t %d", $time, clk, ENABLE, reset, nonblck, Q);   // Se utilizo \t para que el texto y los valores estuvieran tabulados.
        clk = 0 ; reset = 0 ; ENABLE = 0 ; nonblck = 0 ; LOAD = 12'b000000000000;
        #1 reset = 1 ; ENABLE = 0 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // Reset
        #1 reset = 0 ; ENABLE = 0 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // Nada
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        #1 reset = 0 ; ENABLE = 0 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // Nada
        #1 reset = 0 ; ENABLE = 0 ; nonblck = 1 ; LOAD = 12'b000000100000 ;  // nonblck = 1 --> LOAD = on -->  Contando desde 32
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando 
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        #1 reset = 0 ; ENABLE = 0 ; nonblck = 1 ; LOAD = 12'b000100000000 ;  // nonblck = 1 --> LOAD = on -->  Contando desde 256
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        #1 reset = 1 ; ENABLE = 0 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // Reset
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        #1 reset = 0 ; ENABLE = 1 ; nonblck = 0 ; LOAD = 12'b000000000000 ;  // ENABLE = 1 --> Contando
        
    end

    initial
    #20  $finish;

initial 
    begin
       $dumpfile("counter_tb.vcd");
       $dumpvars(0,testbench); 
    end

endmodule