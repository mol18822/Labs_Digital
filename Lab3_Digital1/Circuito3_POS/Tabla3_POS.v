
// Luis Pedro Molina Velasquez
// Carne 18822 - Seccion 12

// Tabla 3 - POS

module gates ();
    //wire n0 al n3 definidos para not   
    //wire a3 al a11 definidos para or
    //wire F para salida final
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
    wire a10;
    wire a11;
    wire F;

    reg inA,inB,inC,inD; 

    not z1 (n0,inA);  //-A
    not z2 (n1,inB);  //-B
    not z3 (n2,inC);  //-C
    not z4 (n3,inD);  //-D

    or x1 (a3,inA,n1,inC,inD);
    or x2 (a4,inA,n1,inC,n3);
    or x3 (a5,inA,n1,n2,inD);
    or x4 (a6,inA,n1,n2,n3);
    or x5 (a7,n0,inB,inC,n3);
    or x6 (a8,n0,inB,n2,n3);
    or x7 (a9,n0,n1,inC,inD);
    or x8 (a10,n0,n1,inC,n3);
    or x9 (a11,n0,n1,n2,n3);

    and k1 (F,a3,a4,a5,a6,a7,a8,a9,a10,a11);

initial begin
    $display("A B C D| Y");
    $display("-------| -");
    $monitor ("%b %b %b %b | %b",inA, inB, inC, inD, F);
    
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
        $dumpfile("Tabla3_POS_tb.vcd");
        $dumpvars(0,gates);
    end
endmodule                   //Fin del modulo


