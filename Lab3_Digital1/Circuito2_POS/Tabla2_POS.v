
// Luis Pedro Molina Velasquez
// Carne 18822 - Seccion 12

// Tabla 2 - POS

module gates ();
    //wire n0 al n2 definidos para not   
    //wire a3 al a5 definidos para or
    //wire F para salida final
    wire n0;
    wire n1;
    wire n2;
    wire a3;
    wire a4;
    wire a5;
    wire a6;
    wire a7;
    wire F;

    reg inA,inB,inC; 

    not z1 (n0,inA);  //-A
    not z2 (n1,inB);  //-B
    not z3 (n2,inC);  //-C

    or x1 (a3,inA,inB,inC);
    or x2 (a4,inA,n1,inC);
    or x3 (a5,inA,n1,n2);
    or x4 (a6,n0,inB,inC);
    or x5 (a7,n0,inB,n2);

    and k1 (F,a3,a4,a5,a6,a7);

initial begin
    $display("A B C | Y");
    $display("------| -");
    $monitor ("%b %b %b | %b",inA, inB, inC, F);
    
    //Condicion inicial
    inA = 0;
    inB = 0;
    inC = 0;
    //Combinacion de simulaciones
    #1 inC = 1;
    #1 inB = 1; inC = 0;
    #1 inC = 1;
    #1 inA = 1; inB = 0 ; inC = 0;
    #1 inC = 1;
    #1 inB = 1; inC = 0;
    #1 inC = 1;
    #1 $finish;              // Finaliza la simulacion

end
initial 
    begin
        $dumpfile("Tabla2_POS_tb.vcd");
        $dumpvars(0,gates);
    end
endmodule                   //Fin del modulo


