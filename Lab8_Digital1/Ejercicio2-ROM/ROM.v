// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 8 
// Ejercicio 2 - Memoria ROM

module MROM (input wire [11:0]Lectura, output wire [7:0]Datos);  

    reg [7:0] Memoria_ROM[0:4095];

    initial begin 
        $readmemb("memoria.listLP", Memoria_ROM);
    end

    assign Datos = Memoria_ROM[Lectura];

endmodule