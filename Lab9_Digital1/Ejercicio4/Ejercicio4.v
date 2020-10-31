// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 9 
// Ejercicio 4 - Buffer triestado de 4 bits

module Buffer3_1B (A, enable, Y);
input [3:0]A; input enable; 
output reg [3:0]Y;

always @ (*)
    if (enable) begin
        Y<=A;
    end
    else begin 
        Y <=4'bzzzz;
    end

endmodule