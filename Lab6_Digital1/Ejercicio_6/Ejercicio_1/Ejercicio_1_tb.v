// Luis Pedro Molina Velásquez - 18822
// Electrónica Digital 1 - Sección 12
// Laboratorio 6 - Ejercicio 6 - Módulo testbench para FSM Mealy de ejercicio1

// Módulo testbench - FSM Mealy de ejercicio 1

module testbench();

    reg clk, reset, A, B;
    wire Y;
    wire [1:0] SF, S;

    Ejercicio1 R1(A, B, clk, reset, Y, S, SF);

    initial begin
        $display("clk  reset  A  B  SF  S  | Y");
        $monitor(" %b   %b   %b %b  %b  %b | %b", clk, reset, A, B, SF, S, Y);
    end

    initial begin
        clk = 0 ;
        reset = 0 ;
        A = 0 ; 
        B = 0 ;
        #1 reset = 1;
        #1 reset = 0;
        #5
        A = 1 ; 
        B = 0;
        #10 
        A = 1 ; 
        B = 1 ;
        #15
        A = 1 ;
        B = 1 ;
        #20
        A = 0 ;
        B = 1 ;
        #25
        A = 1 ;
        B = 1 ;
        #30
        A = 1 ;
        B = 0 ;
        #35
        A = 1 ;
        B = 0 ;
        #40 
        A = 0 ;
        B = 1 ;
        #50 $finish; 
    end 
    
    always
    #5 clk = ~clk ;
    
initial 
    begin
        $dumpfile("Ejercicio_1_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule