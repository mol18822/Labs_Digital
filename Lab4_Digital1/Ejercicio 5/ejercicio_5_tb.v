// Luis Pedro Molina  Velásquez - Carné 18822
// Electrónica Digital 1 - Sección 12
// Laboratorio #4

// Modulo testbench para ejercicio 5 

module testbench();

//Definición de variables, inputs para cada ecuación

// E5A1, E5B1, E5C1  para ecuación POS
// E5A2, E5B2, E5C2  para ecuación SOP
// E5A3, E5B3, E5C3  para ecuación reducida
reg E5A1, E5B1, E5C1, E5A2, E5B2, E5C2, E5A3, E5B3, E5C3;

wire E5F1, E5F2, E5F3;

//  Asignación de variables a módulos de operadores lógicos - Ecuación SOP y POS respectivamente

    gates_eje5_SOP t1(E5A1, E5B1, E5C1, E5F1);
    gates_eje5_POS t2(E5A2, E5B2, E5C2, E5F2);

//  Asignación de variables a Gate level modelling - Ecuación reducida

    gates_eje5_ref r1(E5A3, E5B3, E5C3, E5F3);

// Ejercicio 5 - Ecuación SOP

       initial begin
            $display("\n");
            $display("A B C | Y");
            $display("------|--");
            $monitor("%b %b %b | %b", E5A1, E5B1, E5C1, E5F1);
            E5A1 =  0 ; E5B1 =  0 ; E5C1 =  0 ;
            # 1 E5A1 =  0 ; E5B1 =  0 ; E5C1 =  1 ;
            # 1 E5A1 =  0 ; E5B1 =  1 ; E5C1 =  0 ;
            # 1 E5A1 =  0 ; E5B1 =  1 ; E5C1 =  1 ;
            # 1 E5A1 =  1 ; E5B1 =  0 ; E5C1 =  0 ;
            # 1 E5A1 =  1 ; E5B1 =  0 ; E5C1 =  1 ;
            # 1 E5A1 =  1 ; E5B1 =  1 ; E5C1 =  0 ;
            # 1 E5A1 =  1 ; E5B1 =  1 ; E5C1 =  1 ;
       end

// Ejercicio 5 - Ecuación POS

       initial begin
            #8
            $display("\n");
            $display("A B C | Y");
            $display("------|--");
            $monitor("%b %b %b | %b", E5A2, E5B2, E5C2, E5F2);
            E5A2 =  0 ; E5B2 =  0 ; E5C2 =  0 ;
            # 1 E5A2 =  0 ; E5B2 =  0 ; E5C2 =  1 ;
            # 1 E5A2 =  0 ; E5B2 =  1 ; E5C2 =  0 ;
            # 1 E5A2 =  0 ; E5B2 =  1 ; E5C2 =  1 ;
            # 1 E5A2 =  1 ; E5B2 =  0 ; E5C2 =  0 ;
            # 1 E5A2 =  1 ; E5B2 =  0 ; E5C2 =  1 ;
            # 1 E5A2 =  1 ; E5B2 =  1 ; E5C2 =  0 ;
            # 1 E5A2 =  1 ; E5B2 =  1 ; E5C2 =  1 ;
       end

// Ejercicio 5 - Ecuación  reducida

       initial begin
            #16
            $display("\n");
            $display("A B C | Y");
            $display("------|--");
            $monitor("%b %b %b | %b", E5A3, E5B3, E5C3, E5F3);
            E5A3 =  0 ; E5B3 =  0 ; E5C3 =  0 ;
            # 1 E5A3 =  0 ; E5B3 =  0 ; E5C3 =  1 ;
            # 1 E5A3 =  0 ; E5B3 =  1 ; E5C3 =  0 ;
            # 1 E5A3 =  0 ; E5B3 =  1 ; E5C3 =  1 ;
            # 1 E5A3 =  1 ; E5B3 =  0 ; E5C3 =  0 ;
            # 1 E5A3 =  1 ; E5B3 =  0 ; E5C3 =  1 ;
            # 1 E5A3 =  1 ; E5B3 =  1 ; E5C3 =  0 ;
            # 1 E5A3 =  1 ; E5B3 =  1 ; E5C3 =  1 ;
       end

       initial #30 $finish;

initial
    begin 
        $dumpfile("ejercicio_5_tb.vcd");
        $dumpvars(0,testbench);
    end
endmodule              // Fin del módulo