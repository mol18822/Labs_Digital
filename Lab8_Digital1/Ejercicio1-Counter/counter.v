// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 8 
// Ejercicio 1 - Contador de 12 bits

module counter (input wire clk, ENABLE, reset, nonblck, input wire [11:0]LOAD, output reg [11:0]Q);

    always @ (posedge clk  or posedge reset or posedge nonblck)begin
        if (reset == 1)
            Q <= 12'b000000000000;

        else if (ENABLE == 1)
            Q <= (Q + 1);

        else if (nonblck == 1)
            Q <= LOAD;
    end

endmodule