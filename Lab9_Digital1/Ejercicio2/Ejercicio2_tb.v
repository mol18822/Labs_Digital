// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 9 
// Ejercicio 1 - Flip Flop tipo T

module testbench ();

reg clk, reset, enable;
wire Q;

FFTT1B fftt1b (clk, reset, enable, Q);

initial begin
    clk = 1 ; 
    forever #1 clk = ~clk ;
end

    initial begin
        
        #1 
        $display (" ");
        $display(" Ejercicio 2 - Flip Flop tipo T");
        $display(" ");
        $display(" Reset  Enable  |  Q ");
        $display("---------------|-----");
        $monitor("  %b        %b     |  %b", reset, enable, Q);
           reset = 0 ; enable = 0 ;
        #1 reset = 1 ; enable = 0 ; 
        #1 reset = 0 ; enable = 1 ; 
        #1 reset = 0 ; enable = 0 ;
        #1 reset = 0 ; enable = 0 ;
        #1 reset = 0 ; enable = 1 ;
        #1 reset = 0 ; enable = 1 ;
        #1 reset = 0 ; enable = 1 ;
        #1 reset = 0 ; enable = 1 ;
        #1 reset = 1 ; enable = 0 ;
        #1 reset = 0 ; enable = 0 ;
        #1 reset = 0 ; enable = 1 ;
        #1 reset = 0 ; enable = 1 ;
        #1 reset = 0 ; enable = 1 ;
    
    
    end

    initial
    #30  $finish;

initial
    begin
        $dumpfile("Ejercicio2_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule