// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 9 
// Ejercicio 1 - Flip Flops tipo D

module testbench ();

// Flip Flop tipo D de 4 bits
reg [3:0]D;
reg clk, reset, enable;
wire [3:0]Q;

FFD4B ffd4b (D, clk, reset, enable, Q);

initial begin
    clk = 1 ; 
    forever #1 clk = ~clk ;
end

    initial begin
        
        #1 
        $display (" ");
        $display(" Ejercicio 1 - Flip Flops tipo D");
        $display(" ");
        $display(" Reset  Enable     D  |  Q ");
        $display("---------------------|-----");
        $monitor("  %b        %b      %b |  %b", reset, enable, D, Q);
           reset = 0 ; enable = 0 ; D = 4'b0000; 
        #1 reset = 1 ; enable = 0 ; D = 4'b0000;
        #1 reset = 0 ; enable = 0 ; D = 4'b0001;
        #1 reset = 0 ; enable = 1 ; D = 4'b1000;
        #1 reset = 0 ; enable = 0 ; D = 4'b0110;
        #1 reset = 0 ; enable = 0 ; D = 4'b0001;
        #1 reset = 0 ; enable = 0 ; D = 4'b0101;
        #1 reset = 0 ; enable = 1 ; D = 4'b1001;
        #1 reset = 0 ; enable = 1 ; D = 4'b0110;
        #1 reset = 0 ; enable = 1 ; D = 4'b0001;
        #1 reset = 0 ; enable = 1 ; D = 4'b0011;
        #1 reset = 1 ; enable = 0 ; D = 4'b0100;
        #1 reset = 0 ; enable = 1 ; D = 4'b1000;
    end

    initial
    #25  $finish;

initial
    begin
        $dumpfile("Ejercicio1_tb.vcd");
        $dumpvars(0, testbench);
    end
endmodule
