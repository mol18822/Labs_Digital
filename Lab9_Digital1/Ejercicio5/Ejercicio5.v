// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 9 
// Ejercicio 5 - Implementación de memoria ROM

module ROM_implementation (input wire enable, input wire [6:0]Input, output reg [6:0]Output);

    always @ (enable or Input)begin
            Output = 0 ;
        if (enable)

            casex (Input)
                7'bxxxxxx0: Output <= 13'b1000000001000;
                7'b00001x1: Output <= 13'b0100000001000;
                7'b00000x1: Output <= 13'b1000000001000;
                7'b00011x1: Output <= 13'b1000000001000;
                7'b00010x1: Output <= 13'b1000000001000;
                7'b0010xx1: Output <= 13'b1000000001000;
                7'b0011xx1: Output <= 13'b1000000001000;
                7'b0100xx1: Output <= 13'b0011010000010;
                7'b0101xx1: Output <= 13'b0011010000100;
                7'b0110xx1: Output <= 13'b1011010100000;
                7'b0111xx1: Output <= 13'b1000000111000;
                7'b1000x11: Output <= 13'b0100000001000;
                7'b1000x01: Output <= 13'b1000000001000;
                7'b1001x11: Output <= 13'b1000000001000;
                7'b1001x01: Output <= 13'b0100000001000;
                7'b1010xx1: Output <= 13'b0011011000010;
                7'b1011xx1: Output <= 13'b1011011100000;
                7'b1100xx1: Output <= 13'b0100000001000;
                7'b1101xx1: Output <= 13'b0000000001001;
                7'b1110xx1: Output <= 13'b0011100000010;
                7'b1111xx1: Output <= 13'b1011100100000;

            endcase

    end

endmodule