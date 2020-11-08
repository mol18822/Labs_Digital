// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 10
// Ejercicio 1 

// Módulo de contador de 12 bits
module counter (input wire clk, input wire reset, input wire enable, input wire nonB, input wire [11:0]load, output reg [11:0]Qc);

    always @ (posedge clk  or posedge reset or posedge nonB)begin
        if (reset == 1)
            Qc <= 12'b000000000000 ;  // Cuando reset = 1 el contador empieza en 12'b0

        else if (enable == 1)
            Qc <= (Qc + 1) ;          // Cuando enable = 1 el contador suma 1 por cada flanco de reloj

        else if (nonB == 1)
            Qc <= load ;             // Cuando nonB = 1 el contador comenzará a contar a partir del valor de load
    end

endmodule   

// Módulo de memoria ROM
module MROM (input wire [11:0]Lectura, output wire [7:0]Datos);  

    reg [7:0] Memoria_ROM[0:4095];                      // Tamaño de la memoria de 8 bits

    initial begin 
        $readmemb("memoria.listLP", Memoria_ROM);       // Localidad en donde se encuentran nuestros datos a llamar
    end

    assign Datos = Memoria_ROM[Lectura];                // Asignación de valor a la memoria ROM

endmodule

// Flip Flop tipo D de 4 bits para implementación del Fetch
module FFD4B (input wire clk, input wire reset, input wire enable, input wire [3:0]D, output reg [3:0]Q);

    always @ (posedge clk or posedge reset) begin
        if (reset)
            Q <= 4'b000;
        else if (enable)
            Q <= D ;
    end

endmodule 

// Módulo Fetch
module Fetch (input wire clk, input wire reset, input wire Enable, input wire [7:0]D_4, output wire [3:0]Instruccion, output wire [3:0]Operando);

    FFD4B ffd4b_1 (clk, reset, Enable, D_4[7:4], Instruccion);
    FFD4B ffd4b_2 (clk, reset, Enable, D_4[3:0], Operando);

endmodule

// Módulo de unisión de módulos xdxd
module unision (input wire clk, input wire reset, input wire enable, input wire nonB, input wire Enable, input wire [11:0]load, output wire [3:0]Instruccion, output wire [3:0]Operando);

    wire [11:0]in_A;        
    wire [7:0]in_B;

    counter c12 (clk, reset, enable, nonB, load, in_A);
    MROM   mrom (in_A, in_B);
    Fetch fetch (clk, reset, Enable, in_B, Instruccion, Operando);

endmodule  

/*

// Fetch --> Flip Flop tipo D de 8 bits de entrada y 2 salidas de 4 bits
module FFD8B (input wire [7:0]D, input wire clk, input wire reset, input wire enable, output reg [3:0]Instruccion, output reg [3:0]Operando);
    always @ (posedge clk or posedge reset) begin
        if (reset) begin
            Instruccion <= 4'b0000;
            Operando    <= 4'b0000;
        end

        else if (enable) begin
            Instruccion <= D[7:4];
            Operando    <= D[3:0];
        end
    end

// Módulo para unir los módulos xd
module unision (input wire clk, input wire reset, input wire enablee, input wire load, input [11:0]loadValue, output wire [7:0]program_b, output wire [3:0]Instruccion, output wire [3:0]Operando);

    wire [11:0]counter;
    upcounter upc (clk, reset, load, enable, loadvalue, counter);
    ROM rom       (counter, program_b);
    Fetch fetch   (clk, reset, enablee, program_b, Instruccion, Operando);

endmodule
*/