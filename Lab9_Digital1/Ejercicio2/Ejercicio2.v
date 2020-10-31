// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 9 
// Ejercicio 2 - Flip Flop tipo T

// Flip Flop tipo D de 1 bit
module FFD1B (input wire D, input wire clk, input wire reset, input wire enable, output reg Q);

    always @ (posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;
        else if (enable)
            Q <= D; 
    end

endmodule 

// Flip Flop tipo T de 1 bit
module FFTT1B (input wire clk, input wire reset, input wire enable, output Q);
FFD1B ffd1b (~Q, clk, reset, enable, Q);

endmodule