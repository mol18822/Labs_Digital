
// Luis Pedro Molina Velasquez
// Carnet 18822 - Seccion 12

// Tabla 2 - SOP

module gates ();    
    //wire n0 a n2 para not
    //wire a3 a a5 para and
    //wire F out final
    wire n0;
    wire n1; 
    wire n2;
    wire a3;
    wire a4;
    wire a5;
    wire F;

    reg inA,inB,inC;

    not z1 (n0,inA); // -A
    not z2 (n1,inB); // -B
    not z3 (n2,inC); // -C

    and k1 (a3,n0,n1,inC);      
    and k2 (a4,inA,inB,n2);
    and k3 (a5,inA,inB,inC);
   
    or x1 (F,a3,a4,a5);

initial begin
    $display("A B C | Y");
    $display("------| -");
    $monitor("%b %b %b | %b", inA, inB, inC, F);

    //Condicion inicial
    inA = 0;
    inB = 0;
    inC = 0;
    //Combinacion de simulaciones
    #1 inC = 1;
    #1 inB = 1; inC = 0;
    #1 inC = 1;
    #1 inA = 1; inB = 0; inC = 0;
    #1 inC = 1;
    #1 inB = 1; inC = 0;
    #1 inC = 1;
    #1 $finish;             //Finaliza la simulacion

end
initial 
    begin
        $dumpfile("Tabla2_SOP_tb.vcd");
        $dumpvars(0,gates);
    end
endmodule                   //Fin del modulo

