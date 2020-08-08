// Luis Pedro Molina  Velásquez - Carné 18822
// Electrónica Digital 1 - Sección 12
// Laboratorio #4

// Ejercicio 5 - Módulos con operadores lógicos

// A = SISTEMA ARMADO    = (A)
// B = VENTANA / PUERTA  = (V)
// C = MOVIMIENTO        = (M) 
// F = OUTPUT            = (Y)
 
// Ejercicio 5 - Ecuación SOP - Y = AB'C' + AB'C + ABC

module gates_eje5_SOP (input wire inA, inB, inC, output wire F);

    assign F = (inA & ~inB & ~inC) | (inA & ~inB & inC) | (inA & inB & inC);

endmodule

// Ejercicio 5 - Ecuación POS - Y = ABC + ABC' + AB'C + AB'C' + A'B'C

module gates_eje5_POS (input wire inA, inB, inC, output wire F);

    assign F = (inA | inB | inC) & (inA | inB | ~inC) & (inA | ~inB | inC) & (inA | ~inB | ~inC) &
    (~inA | ~inB  |inC);

endmodule 

// Ejercicio 5 - Gate level modelling

// Ejercicio 5 - Ecuación simplificada - Y = AC + AB'

module gates_eje5_ref (input wire inA, inB, inC, output wire F);
    // Compuertas not
    wire n2;    // B 

    // Compuertas and
    wire a1;
    wire a2;

    // Compuertas lógicas
    not (n2,inB);   //B'

    and (a1,inA,inC);
    and (a2,inA,n2);

    or (F,a1,a2); 

endmodule