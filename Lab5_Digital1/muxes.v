// Luis Pedro Molina Velásquez - Carné 18822 
// Electrónica Digital 1 - Sección 12
// Laboratorio 5

// Construcción de los Mux:
// Mux 2:1

module mux2a1(output wire F, input wire D0, D1, S);

    // Declaración de cables
    assign F = S ? D1 : D0;

endmodule

// Mux 4:1

module mux4a1(output wire F, input wire D1, D2, D3, D4, S1, S2);

    // Declaración de cables entre muxes
    wire ca1, ca2;
    // Implementación de módulos
    mux2a1 connect1(ca1, D1, D2, S1);
    mux2a1 connect2(ca2, D3, D4, S1);
    mux2a1 connect3(F, ca1, ca2, S2);

endmodule

// Mux 8:1

module mux8a1(output wire F, input wire D1, D2, D3, D4, D5, D6, D7, D8, S1, S2, S3);

    // Declaraciónn de cables entre muxes
    wire ca1, ca2, ca3, ca4;
    // Implementación de módulos
    mux2a1 connect1(ca1, D1, D2, S1);
    mux2a1 connect2(ca2, D3, D4, S1);
    mux2a1 connect3(ca3, D5, D6, S1);
    mux2a1 connect4(ca4, D7, D8, S1);
    mux4a1 connect5(F, ca1, ca2, ca3, ca4, S2, S3);

endmodule

// Conección de cables a muxes

// Tabla 1
// Tabla 1 - mux 8:1

module t1mux8a1(output wire F, input wire inA, inB, inC);

    // Declaración de cables
    wire high, low;
    // Asignación de valores a mis cables
    assign high = 1;
    assign low = 0;
    // Construcción del mux 8:1
    mux8a1 connect(F, low, high, high, low, high, low, low, high, inA, inB, inC);

endmodule

// Tabla 1 - mux 4:1

module t1mux4a1(output wire F, input wire inA, inB, inC);

    // Declaración de cables
    wire R1;
    // Asignación de compuertas
    assign R1 = ~inC;
    // Construcción del mux 4:1 
    mux4a1 connect(F, inC, R1, R1, inC, inA, inB);

endmodule

// Tabla 1 - mux 2:1

module t1mux2a1(output wire F, input wire inA, inB, inC);

    // Declaración de cables
    wire L, P;
    // Asignación de compuertas
    assign L = inB ^ inC;
    assign P = inB ~^inC;
    // Construcción del mux 2:1
    mux2a1 connect(F, L, P, inA);

endmodule

// Tabla 2
// Tabla 2 - mux 8:1

module t2mux8a1(output wire F, input wire inA, inB, inC);
    
    // Declaración de cables
    wire high, low;
    // Asignación de valores a mis cables
    assign high = 1;
    assign low = 0;
    // Construcción del mux 8:1
    mux8a1 connect(F, high, low, low, low, low, high, high, low, inC, inB, inA);

endmodule

// Tabla 2 - mux 4:1

module t2mux4a1(output wire F, input wire inA, inB, inC);

    // Declaración de cables
    wire H, L, R1;
    // Declaración de compuertas
    assign H = 1;
    assign L = 0;
    assign R1 = ~inC;
    // Consntrucción del mux 4:1
    mux4a1 connect(F, R1, L, inC, R1, inB, inA);

endmodule

// Tabla 2 - mux 2:1

module t2mux2a1(output wire F, input wire inA, inB, inC);

    // Declaración de cables
    wire L, P; 
    // Declaración de compuertas
    assign L = (inB) ~| (inC);
    assign P = (inB) ^ (inC);
    // Construcción del mux 2:1
    mux2a1 connect(F, L, P, inA);

endmodule







