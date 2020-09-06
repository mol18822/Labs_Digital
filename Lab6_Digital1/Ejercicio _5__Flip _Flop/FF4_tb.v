// Luis Pedro Molina Velásquez - 18822
// Electrónica Digital 1 - Sección 12
// Laboratorio 6 - Ejercicio 5

module testbench();

    reg clk, reset, D;
    wire Q;

    FFD R1(clk, reset, D, Q);

    initial begin
        $display("clk  reset  D  |  Q");
        $monitor("%b %b %b | %b", clk, reset, D, Q);
    end

    initial begin
        clk = 0 ;
        reset = 0 ;
        D = 0 ;
        #1 reset = 1 ;
        #1 reset = 0 ;
        #11 D = 1 ;
        #100
        $finish
    end

    always
        #5 clk = ~clk ;
    
    initial begin
        $dumpfile("FF4_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule

