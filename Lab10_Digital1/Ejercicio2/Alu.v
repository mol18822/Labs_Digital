// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 10
// Ejercicio 2

module FFD_4vv(input wire clk, input wire reset, input wire enable, input wire [3:0]D, output reg [3:0]Q);

    always @ (posedge clk or posedge reset) begin
        if (reset) 
            Q <= 4'b0000;
        else if (enable)
            Q <= D;
    end
endmodule

module Buffer3 (input wire enable, input wire [3:0]In, output wire [3:0]Out);

        assign Out = (enable) ? In:4'bz;
endmodule

module ALU (input wire [3:0]inA, input wire [3:0]inB, input wire [2:0]Comando, output reg [3:0]Resultado, output reg Carry, output reg Salida); 

        reg [4:0]q; 

        always @ (inA or inB or Comando) begin

            case(Comando)

                3'b000: begin
                            q = 5'b00000; // Deja pasar A
                            q = inA;
                            Carry = 1'b0;
                            Salida = (q == 5'b00000) ? 1:0;
                            Resultado = q[3:0];
                        end
        



endmodule
