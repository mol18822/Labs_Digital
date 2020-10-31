// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 9 
// Ejercicio 3 - Flip Flop tipo JK

module testbench ();

reg clk, reset, enable, J, K;
wire Q;

FFJK1B ffjk1b (clk, reset, enable, J, K, Q);

initial begin
    clk = 1 ; 
    forever #1 clk = ~clk ;
end

    initial begin
        
        #1 
        $display (" ");
        $display(" Ejercicio 3 - Flip Flop tipo JK ");
        $display(" ");
        $display(" T  Reset  Enable    J    K  |  Q ");
        $display("----------------------------|-----");
        $monitor(" %b   %b        %b      %b    %b  |  %b", clk, reset, enable, J, K, Q);

        // Prueba de que cuando J y K = 1 --> Q = ~Q
           reset = 0 ; enable = 0 ; J = 0 ; K = 0 ;
        #1 reset = 1 ; enable = 0 ; J = 0 ; K = 0 ;
        #1 reset = 0 ; enable = 0 ; J = 0 ; K = 0 ;
        #1 reset = 0 ; enable = 1 ; J = 0 ; K = 0 ;
        #1 reset = 0 ; enable = 1 ; J = 0 ; K = 0 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 1 ; 
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 1 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 1 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 1 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 1 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 1 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 1 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 1 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 1 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 1 ;
        // Prueba de que cuando J y K = 0 --> Q = Mantiene el último valor 
        #1 reset = 0 ; enable = 1 ; J = 0 ; K = 0 ;
        #1 reset = 0 ; enable = 1 ; J = 0 ; K = 0 ;
        #1 reset = 0 ; enable = 1 ; J = 0 ; K = 0 ;
        // Prueba de que cuando J = 0 y K = 1 --> Q = 0 
        #1 reset = 0 ; enable = 1 ; J = 0 ; K = 1 ;
        #1 reset = 0 ; enable = 1 ; J = 0 ; K = 1 ;
        #1 reset = 0 ; enable = 1 ; J = 0 ; K = 1 ;
        // Prueba de que cuando J = 1 y K = 0 --> Q = 1
        #1 reset = 0 ; enable = 1 ; J = 0 ; K = 0 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 0 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 0 ;
        #1 reset = 0 ; enable = 1 ; J = 1 ; K = 0 ;
        // Prueba de que enable = 0 --> Q no hace nada, se queda en el último valor
        #1 reset = 0 ; enable = 0 ; J = 1 ; K = 1 ;
        #1 reset = 0 ; enable = 0 ; J = 1 ; K = 0 ;
        
    end

    initial
    #30  $finish;

initial

    begin
        $dumpfile("Ejercicio3_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule 