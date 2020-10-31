// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 9 
// Ejercicio 5 - Implementación de memoria ROM

module testbench() ;

reg enable ; reg [6:0]Input ;
wire [6:0]Output ;

ROM_implementation rom_i (enable, Input, Output);

    initial begin
        
        #1 
        $display (" ");
        $display(" Ejercicio 5 - Implementacion de memoria ROM ");
        $display(" ");
        $display(" Enable     Input  |  Output  ");
        $display("------------------|-----------");
        $monitor(" %b        %b  |  %b", enable, Input, Output);
           enable = 0 ; Input = 7'b0000000 ;
        #2 enable = 1 ; Input = 7'bxxxxxx0 ;
        #2 enable = 1 ; Input = 7'b0000101 ;
        #2 enable = 1 ; Input = 7'b0101010 ;
        #2 enable = 1 ; Input = 7'b00000x1 ;
        #2 enable = 1 ; Input = 7'b00011x1 ;
        #2 enable = 1 ; Input = 7'b00001x1 ;
        #2 enable = 1 ; Input = 7'b0011xx1 ;
        #2 enable = 1 ; Input = 7'b00011x1 ;
        #2 enable = 1 ; Input = 7'b0010xx1 ;
        #2 enable = 1 ; Input = 7'b0100xx1 ;
        #2 enable = 1 ; Input = 7'b0110xx1 ;
        #2 enable = 1 ; Input = 7'b0101xx1 ;
        #2 enable = 1 ; Input = 7'b1001x01 ;
        #2 enable = 1 ; Input = 7'b0111xx1 ;
        #2 enable = 1 ; Input = 7'b1001x11 ;
        #2 enable = 1 ; Input = 7'b1000x11 ;
        #2 enable = 1 ; Input = 7'b1110xx1 ;
        #2 enable = 1 ; Input = 7'b1000x01 ;
        #2 enable = 1 ; Input = 7'b1010xx1 ;
        #2 enable = 1 ; Input = 7'b1101xx1 ;
        #2 enable = 1 ; Input = 7'b1011xx1 ;
        #2 enable = 1 ; Input = 7'b1100xx1 ;
        #2 enable = 1 ; Input = 7'b0010xx1 ;
        #2 enable = 1 ; Input = 7'b0110xx1 ;
        #2 enable = 1 ; Input = 7'bxxxx1xx ;
        #2 enable = 1 ; Input = 7'b0000xx1 ;
        #2 enable = 1 ; Input = 7'bxx10xx1 ;
        #2 enable = 1 ; Input = 7'b10x10x1 ;
        #2 enable = 1 ; Input = 7'b1x10xx1 ;
        #2 enable = 1 ; Input = 7'b1xx1xx1 ;
        #2 enable = 1 ; Input = 7'b11x1x01 ;


    end

    initial
    #100 $finish;

initial begin
    $dumpfile("Ejercicio5_tb.vcd");
    $dumpvars(0, testbench); 
end

endmodule

