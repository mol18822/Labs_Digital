// Luis Pedro Molina Velásquez - Carné 18822
// Electrónica Digital 1 - Sección 12
// Laboratorio #4 

// Modulos con Gate Level Modelling
// EJERCICIO 1 - TABLAS 1 A 4

// Ejercicio 1 - Tabla 1 - Y = A'C' + AC + AB'

module gates_eje1_tab1 (input wire inA, inB, inC, output wire F);
    // Compuertas not
    wire n1;    // A
    wire n2;    // B
    wire n3;    // C

    // Compuertas and
    wire a1;
    wire a2;
    wire a3;

    // Compuertas lógicas
    not (n1,inA);  // A'
    not (n2,inB);  // B'
    not (n3,inC);  // C'

    and (a1,n1,n3);
    and (a2,inA,inC);
    and (a3,inA,n2);

    or (F,a1,a2,a3);

endmodule

//Ejercicio 1 - Tabla 2 - Y = B'

module gates_eje1_tab2 (input wire inA, inB, inC, output wire F);

    // Compuerta not
    wire n2;    // B

    // Compuertas lógicas
    not (n2,inB);   // B'
    
    or (F,n2);

endmodule

//Ejercicio 1 - Tabla 3 - Y = A'B'C'D' + A'B'CD + A'BC'D + A'BCD' + ABC'D' + ABCD + AB'C'D + AB'CD'

module gates_eje1_tab3 (input wire inA, inB, inC, inD, output wire F);

    // Compuertas not
    wire n1;    // A
    wire n2;    // B
    wire n3;    // C
    wire n4;    // D

    // Compuertas and
    wire a1;
    wire a2;
    wire a3;
    wire a4;
    wire a5;
    wire a6;
    wire a7;
    wire a8;

    // Compuertas lógicas
    not (n1,inA);    // A'
    not (n2,inB);    // B'
    not (n3,inC);    // C'
    not (n4,inD);    // D'

    and (a1,n1,n2,n3,n4);
    and (a2,n1,n2,inC,inD);
    and (a3,n1,inB,n3,inD);
    and (a4,n1,inB,inC,n4);
    and (a5,inA,inB,n3,n4);
    and (a6,inA,inB,inC,inD);
    and (a7,inA,n2,n3,inD);
    and (a8,inA,n2,inC,n4);

    or (F,a1,a2,a3,a4,a5,a6,a7,a8);

endmodule


// Ejercicio 1 - Tabla 4 - Y = A'B'D' + A'C'D + BD + AC'D' + AC

module gates_eje1_tab4 (input wire inA, inB, inC, inD, output wire F);

    // Compuertas not
    wire n1;    // A
    wire n2;    // B
    wire n3;    // C
    wire n4;    // D

    // Compuertas and
    wire a1;
    wire a2;
    wire a3;
    wire a4;
    wire a5;

    // Compuertas lógicas
    not (n1,inA);    // A'
    not (n2,inB);    // B'
    not (n3,inC);    // C'
    not (n4,inD);    // D'

    and (a1,n1,n2,n4); 
    and (a2,n1,n3,inD);
    and (a3,inB,inD);
    and (a4,inA,n3,n4);
    and (a5,inA,inC);

    or (F,a1,a2,a3,a4,a5);

endmodule

// Módulos con operadores lógicos
// EJERCICIO 2 - ECUACIONES 1 A 4

// Ejercicio 2 - Ecuación 1 - Y = B'C'D' + AC' + ACD' + AB'C

module gates_eje2_ec1 (input wire inA, inB, inC, inD, output wire F);

    assign F = (~inB & ~inC & ~inD) | (inA & ~inC) | (inA & inC & ~inD) | (inA & ~inB & inC);

endmodule

// Ejercicio 2 - Ecuación 2 - Y = B' +AC

module gates_eje2_ec2 (input wire inA, inB, inC, output wire F);

    assign F = (~inB) | (inA & inC);

endmodule

// Ejercicio 2 - Ecuación 3 - Y = B + C'D + AD

module gates_eje2_ec3 (input wire inA, inB, inC, inD, output wire F);

    assign F = (inB) | (~inC & inD) | (inA & inD);

endmodule

// Ejercicio 2 - Ecuación 4 - Y = A'C' + B 

module gates_eje2_ec4 (input wire inA, inB, inC, output wire F);

    assign F =  (~inA & ~inC) | (inB);

endmodule