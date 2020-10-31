// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 9 
// Ejercicio 1 - Flip Flops tipo D

// Flip Flop tipo D de 1 bit
module FFD1B(input wire D, input wire clk, input wire reset, input wire enable, output reg Q);

    always @ (posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;
        else if (enable)
            Q <= D;
        end 

endmodule 

// Flip Flop tipo D de 2 bits
module FFD2B(input wire [1:0]D, input wire clk, input wire reset, input wire enable, output [1:0]Q);
FFD1B FFD1B_1 (D[0], clk, reset, enable, Q[0]);
FFD1B FFD1B_2 (D[1], clk, reset, enable, Q[1]);
endmodule

// Flip Flop tipo D de 4 bits
module FFD4B(input wire [3:0]D, input wire clk, input wire reset, input wire enable, output [3:0]Q);
FFD2B FFD2B_1 (D[1:0], clk, reset, enable, Q[1:0]);
FFD2B FFD2B_2 (D[3:2], clk, reset, enable, Q[3:2]);
endmodule