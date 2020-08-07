
// Luis Pedro Molina Velásquez
// Carnet 18822 - Seccion 12

// Tabla 3 - SOP

module gates ();    
    //wire n0 a n3 para not
    //wire a3 a a9 para and
    //wire F out final
    wire n0;
    wire n1; 
    wire n2;
    wire n3;
    wire a3;
    wire a4;
    wire a5;
    wire a6;
    wire a7;
    wire a8;
    wire a9;
    wire F;

    reg inA,inB,inC,inD;

    not z1 (n0,inA); // -A
    not z2 (n1,inB); // -B
    not z3 (n2,inC); // -C
    not z4 (n3,inD); // -D

    and k1 (a3,n0,n1,n2,n3);      
    and k2 (a4,n0,n1,n2,inD);
    and k3 (a5,n0,n1,inC,n3);
    and k4 (a6,n0,n1,inC,inD);
    and k5 (a7,inA,n1,n2,n3);
    and k6 (a8,inA,n1,inC,n3);
    and k7 (a9,inA,inB,inC,n3);

    or x1 (F,a3,a4,a5,a6,a7,a8,a9);

initial begin
    $display("A B C D | Y");
    $display("--------| -");
    $monitor("%b %b %b %b | %b", inA, inB, inC, inD, F);

    //Condicion inicial
    inA = 0;
    inB = 0;
    inC = 0;
    inD = 0;
    //Combinacion de simulaciones
    #1 inD = 1;
    #1 inC = 1; inD = 0;
    #1 inD = 1;
    #1 inB = 1; inC = 0; inD = 0;
    #1 inD = 1;
    #1 inC = 1; inD = 0;
    #1 inD = 1;
    #1 inA = 1; inB = 0; inC = 0; inD = 0;
    #1 inD = 1;
    #1 inC = 1; inD = 0;
    #1 inD = 1;
    #1 inB = 1; inC = 0; inD = 0;
    #1 inD = 1;
    #1 inC = 1; inD = 0;
    #1 inD = 1; 
    #1 $finish;             //Finaliza la simulacion

end
initial 
    begin
        $dumpfile("Tabla3_SOP_tb.vcd");
        $dumpvars(0,gates);
    end
endmodule                   //Fin del modulo

