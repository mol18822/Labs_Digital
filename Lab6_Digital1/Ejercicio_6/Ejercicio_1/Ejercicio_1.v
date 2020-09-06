// Luis Pedro Molina Velásquez - 18822
// Electrónica Digital 1 - Sección 12
// Laboratorio 6 - Ejercicio 6 - Módulo para FSM Mealy de ejercicio 1

// Módulo de Flip Flop tipo D de 1 bit

module FFD(input clk, reset, D, output reg Q);

    always @ (posedge clk or posedge reset)begin
        if(reset)
            Q <= 1'b0;
        else
            Q <= D;
    end
endmodule

module FFD2(input clk, reset, input [1:0]D, output reg [1:0]Q);
                                                                                           
    always @ (posedge clk or posedge reset)begin
        if(reset)
            Q <= 2'b00;
        else
            Q[1] <= D[1];
            Q[0] <= D[0];
    end 
endmodule

module Ejercicio1(input A, B, clk, reset, output wire Y, output wire [1:0] S, output wire [1:0]SF);

// Declaración de cables/estados
    wire S0, S1, S0F, S1F;

// Nube combinacional de estados futuros (S0F, S1F)
    assign S0F = (~S1 & ~S0 & A);
    assign S1F = (S0 & B) | (S1 & A & B);
// Nube combinacional de salidas (FSM Mealy)
    assign Y = (S1 & A & B);

// Conexión de Flip Flops tipo D
   FFD T1(.clk(clk), .reset(reset), .D(S1F), .Q(S1));
   FFD T2(clk, reset, S0F, S0);

// Visualización de estados actuales y futuros
    assign S = {S1, S0};
    assign SF = {S1F, S0F};

endmodule