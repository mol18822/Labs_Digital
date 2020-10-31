// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 9 
// Ejercicio 3 - Flip Flop tipo JK

// Flip Flop tipo D de 1 bit
module FFD1B (input wire D, input wire clk, input wire reset, input wire enable, output reg Q);

    always @ (posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;
        else if (enable)
            Q <= D; 
    end

endmodule 

// Flip Flop tipo JK de 1 bit
module FFJK1B (input wire clk, input wire reset, input wire enable, input wire J, input wire K, output Q);

    wire NK, NQ, JaNQ, NKaQ, D;
    not (NK, K);
    not (NQ, Q);
    and (JaNQ, J, NQ);
    and (NKaQ, NK, Q);
    or  (D, JaNQ, NKaQ);

    FFD1B ffd1b (D, clk, reset, enable, Q);

endmodule 