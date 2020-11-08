// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 10
// Ejercicio 1 

module testbench ();

reg clk, reset, enable, nonB, Enable;
reg [11:0]load;
wire [3:0]Instruccion;
wire [3:0]Operando;

unision unition (clk, reset, enable, nonB, Enable, load, Instruccion, Operando);

initial begin
    clk = 1 ; 
    forever #1 clk = ~clk ;
end

    initial begin
        
        #1
        $display (" ");
        $display(" Ejercicio 1 - Uniendo Program Counter, Program ROM y Fetch ");
        $display(" ");
        $display(" Reset  Enable  NonB  Enable2       Load      | Instruccion    Operando ");
        $display("---------------------------------------------|-------------------------");
        $monitor("  %b        %b      %b       %b      %b  |     %b          %b  ", reset, enable, nonB, Enable, load, Instruccion, Operando);
        
           reset = 0 ; enable = 0 ; nonB = 0 ; Enable = 0 ; load = 12'b000000000000 ;
        #2 reset = 1 ; enable = 0 ; nonB = 0 ; Enable = 0 ; load = 12'b000000000000 ;
        #2 reset = 0 ; enable = 1 ; nonB = 0 ; Enable = 0 ; load = 12'b000000000000 ;
        #2 reset = 0 ; enable = 1 ; nonB = 0 ; Enable = 1 ; load = 12'b000000000000 ;
        #2 reset = 0 ; enable = 1 ; nonB = 1 ; Enable = 1 ; load = 12'b000000000000 ;
        #2 reset = 0 ; enable = 1 ; nonB = 1 ; Enable = 1 ; load = 12'b000000001001 ;
        #2 reset = 0 ; enable = 1 ; nonB = 1 ; Enable = 1 ; load = 12'b000000000001 ;
        #2 reset = 0 ; enable = 1 ; nonB = 0 ; Enable = 1 ; load = 12'b000000001001 ;


    end


initial 
    #20 $finish;

initial begin
    $dumpfile("Ejercicio1_tb.vcd");
    $dumpvars(0, testbench);
end

endmodule 