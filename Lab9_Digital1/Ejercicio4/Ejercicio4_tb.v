// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 9 
// Ejercicio 4 - Buffer triestado de 4 bits

module testbench();

reg [3:0]A;  reg enable;
wire [3:0]Y;

Buffer3_1B buffer3_1b(A, enable, Y);


    initial begin
        
        #1 
        $display (" ");
        $display(" Ejercicio 4 - Buffer Triestado ");
        $display(" ");
        $display(" Enable  Input A |  Output Y ");
        $display("----------------|-----------");
        $monitor(" %b        %b   |  %b", enable, A, Y);
           enable = 0 ; A = 4'b0000 ;
        #1 enable = 0 ; A = 4'b1100 ;
        #1 enable = 0 ; A = 4'b1111 ;
        #1 enable = 1 ; A = 4'b0100 ;
        #1 enable = 1 ; A = 4'b1011 ;
        #1 enable = 0 ; A = 4'b1100 ;
        #1 enable = 0 ; A = 4'b1100 ;
        #1 enable = 1 ; A = 4'b1110 ;
        
    end

    initial
    #15  $finish;

initial

    begin
        $dumpfile("Ejercicio4_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule 