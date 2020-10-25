// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 8
// Ejercicio 3 - ALU

module ALU (input wire [3:0]A, input wire [3:0]B, input wire [2:0]Comando, output reg [3:0]Resultado);

   always @ (A or B or Comando) begin
      
      case(Comando)
         3'b000: Resultado = A + B ;  // Suma
         3'b001: Resultado = A - B ;  // Resta
         3'b010: Resultado = A & B ;  // AND
         3'b100: Resultado = A | B ;  // OR
         3'b101: Resultado = A & ~B;  // A AND ~B
         3'b110: Resultado = ~A | B;  // ~A or B
         3'b111: Resultado = (A < B) ? 1:0; // // Comparación de A mayor a B
         default: Resultado = 4'b0000 ;
      endcase

   end
endmodule