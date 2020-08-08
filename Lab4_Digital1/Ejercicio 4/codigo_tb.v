// Luis Pedro Molina Velásquez - Carné 18822
// Electrónica Digital 1 - Sección 12
// Laboratorio #4 

// Módulo testbench


module testbench();

// Definición de variables, inputs para cada ecuación:

    reg E1A1, E1B1, E1C1, E1A2, E1B2, E1C2, E1A3, E1B3, E1C3, E1D3, E1A4, E1B4, E1C4, E1D4, 
    E2A1, E2B1, E2C1, E2D1, E2A2, E2B2, E2C2, E2A3, E2B3, E2C3, E2D3, E2A4, E2B4, E2C4;

    wire E1F1, E1F2, E1F3, E1F4, E2F1, E2F2, E2F3, E2F4;

// Asignación de variables a Gate level Modelling - Ejercicio 1 - Tablas 1 a 4

    gates_eje1_tab1 t1(E1A1, E1B1, E1C1, E1F1);
    gates_eje1_tab2 t2(E1A2, E1B2, E1C2, E1F2);
    gates_eje1_tab3 t3(E1A3, E1B3, E1C3, E1D3, E1F3);
    gates_eje1_tab4 t4(E1A4, E1B4, E1C4, E1D4, E1F4);

// Asignación de variables a módulos con Operadores lógicos - Ejercicio 2 - Ecuaciones 1 a 4

    gates_eje2_ec1 e1(E2A1, E2B1, E2C1, E2D1, E2F1);
    gates_eje2_ec2 e2(E2A2, E2B2, E2C2, E2F2);
    gates_eje2_ec3 e3(E2A3, E2B3, E2C3, E2D3, E2F3);
    gates_eje2_ec4 e4(E2A4, E2B4, E2C4, E2F4);

// Ejercicio 1 - Tabla 1

       initial begin
            $display("A B C | Y");
            $display("------|--");
            $monitor("%b %b %b | %b", E1A1, E1B1, E1C1, E1F1);
            E1A1 =  0 ; E1B1 =  0 ; E1C1 =  0 ;
            # 1 E1A1 =  0 ; E1B1 =  0 ; E1C1 =  1 ;
            # 1 E1A1 =  0 ; E1B1 =  1 ; E1C1 =  0 ;
            # 1 E1A1 =  0 ; E1B1 =  1 ; E1C1 =  1 ;
            # 1 E1A1 =  1 ; E1B1 =  0 ; E1C1 =  0 ;
            # 1 E1A1 =  1 ; E1B1 =  0 ; E1C1 =  1 ;
            # 1 E1A1 =  1 ; E1B1 =  1 ; E1C1 =  0 ;
            # 1 E1A1 =  1 ; E1B1 =  1 ; E1C1 =  1 ;
       end

// Ejercico 1 - Tabla 2

        initial begin
            #8
            $display ("\n");
            $display("A B C | Y");
            $display("------|--");
            $monitor("%b %b %b | %b", E1A2, E1B2, E1C2, E1F2);
            E1A2 =  0 ; E1B2 =  0 ; E1C2 =  0 ;
            # 1 E1A2 =  0 ; E1B2 =  0 ; E1C2 =  1 ;
            # 1 E1A2 =  0 ; E1B2 =  1 ; E1C2 =  0 ;
            # 1 E1A2 =  0 ; E1B2 =  1 ; E1C2 =  1 ;
            # 1 E1A2 =  1 ; E1B2 =  0 ; E1C2 =  0 ;
            # 1 E1A2 =  1 ; E1B2 =  0 ; E1C2 =  1 ;
            # 1 E1A2 =  1 ; E1B2 =  1 ; E1C2 =  0 ;
            # 1 E1A2 =  1 ; E1B2 =  1 ; E1C2 =  1 ;
            
        end

// Ejercicio 1 - Tabla 3

        initial begin
            #16
            $display ("\n");
            $display("A B C D | Y");
            $display("--------|--");
            $monitor("%b %b %b %b | %b", E1A3, E1B3, E1C3, E1D3, E1F3);
            E1A3 =  0 ; E1B3 =  0 ; E1C3 =  0 ; E1D3 =  0 ;
            # 1 E1A3 =  0 ; E1B3 =  0 ; E1C3 =  0 ; E1D3 =  1 ; //1
            # 1 E1A3 =  0 ; E1B3 =  0 ; E1C3 =  1 ; E1D3 =  0 ; //2
            # 1 E1A3 =  0 ; E1B3 =  0 ; E1C3 =  1 ; E1D3 =  1 ; //3
            # 1 E1A3 =  0 ; E1B3 =  1 ; E1C3 =  0 ; E1D3 =  0 ; //4 
            # 1 E1A3 =  0 ; E1B3 =  1 ; E1C3 =  0 ; E1D3 =  1 ; //5
            # 1 E1A3 =  0 ; E1B3 =  1 ; E1C3 =  1 ; E1D3 =  0 ; //6
            # 1 E1A3 =  0 ; E1B3 =  1 ; E1C3 =  1 ; E1D3 =  1 ; //7
            # 1 E1A3 =  1 ; E1B3 =  0 ; E1C3 =  0 ; E1D3 =  0 ; //8
            # 1 E1A3 =  1 ; E1B3 =  0 ; E1C3 =  0 ; E1D3 =  1 ; //9
            # 1 E1A3 =  1 ; E1B3 =  0 ; E1C3 =  1 ; E1D3 =  0 ; //10
            # 1 E1A3 =  1 ; E1B3 =  0 ; E1C3 =  1 ; E1D3 =  1 ; //11    
            # 1 E1A3 =  1 ; E1B3 =  1 ; E1C3 =  0 ; E1D3 =  0 ; //12
            # 1 E1A3 =  1 ; E1B3 =  1 ; E1C3 =  0 ; E1D3 =  1 ; //13
            # 1 E1A3 =  1 ; E1B3 =  1 ; E1C3 =  1 ; E1D3 =  0 ; //14
            # 1 E1A3 =  1 ; E1B3 =  1 ; E1C3 =  1 ; E1D3 =  1 ; //15

        end

// Ejercicio 1 - Tabla 4

        initial begin
            #32
            $display ("\n");
            $display("A B C D | Y");
            $display("--------|--");
            $monitor("%b %b %b %b | %b", E1A4, E1B4, E1C4, E1D4, E1F4);
            E1A4 =  0 ; E1B4 =  0 ; E1C4 =  0 ; E1D4 =  0 ;
            # 1 E1A4 =  0 ; E1B4 =  0 ; E1C4 =  0 ; E1D4 =  1 ; //1
            # 1 E1A4 =  0 ; E1B4 =  0 ; E1C4 =  1 ; E1D4 =  0 ; //2
            # 1 E1A4 =  0 ; E1B4 =  0 ; E1C4 =  1 ; E1D4 =  1 ; //3
            # 1 E1A4 =  0 ; E1B4 =  1 ; E1C4 =  0 ; E1D4 =  0 ; //4 
            # 1 E1A4 =  0 ; E1B4 =  1 ; E1C4 =  0 ; E1D4 =  1 ; //5
            # 1 E1A4 =  0 ; E1B4 =  1 ; E1C4 =  1 ; E1D4 =  0 ; //6
            # 1 E1A4 =  0 ; E1B4 =  1 ; E1C4 =  1 ; E1D4 =  1 ; //7
            # 1 E1A4 =  1 ; E1B4 =  0 ; E1C4 =  0 ; E1D4 =  0 ; //8
            # 1 E1A4 =  1 ; E1B4 =  0 ; E1C4 =  0 ; E1D4 =  1 ; //9
            # 1 E1A4 =  1 ; E1B4 =  0 ; E1C4 =  1 ; E1D4 =  0 ; //10
            # 1 E1A4 =  1 ; E1B4 =  0 ; E1C4 =  1 ; E1D4 =  1 ; //11    
            # 1 E1A4 =  1 ; E1B4 =  1 ; E1C4 =  0 ; E1D4 =  0 ; //12
            # 1 E1A4 =  1 ; E1B4 =  1 ; E1C4 =  0 ; E1D4 =  1 ; //13
            # 1 E1A4 =  1 ; E1B4 =  1 ; E1C4 =  1 ; E1D4 =  0 ; //14
            # 1 E1A4 =  1 ; E1B4 =  1 ; E1C4 =  1 ; E1D4 =  1 ; //15

        end

// Ejercicio 2 - Ecuación 1

        initial begin
            #48
            $display ("\n");
            $display("A B C D | Y");
            $display("--------|--");
            $monitor("%b %b %b %b | %b", E2A1, E2B1, E2C1, E2D1, E2F1);
            E2A1 =  0 ; E2B1 =  0 ; E2C1 =  0 ; E2D1 =  0 ;
            # 1 E2A1 =  0 ; E2B1 =  0 ; E2C1 =  0 ; E2D1 =  1 ; //1
            # 1 E2A1 =  0 ; E2B1 =  0 ; E2C1 =  1 ; E2D1 =  0 ; //2
            # 1 E2A1 =  0 ; E2B1 =  0 ; E2C1 =  1 ; E2D1 =  1 ; //3
            # 1 E2A1 =  0 ; E2B1 =  1 ; E2C1 =  0 ; E2D1 =  0 ; //4 
            # 1 E2A1 =  0 ; E2B1 =  1 ; E2C1 =  0 ; E2D1 =  1 ; //5
            # 1 E2A1 =  0 ; E2B1 =  1 ; E2C1 =  1 ; E2D1 =  0 ; //6
            # 1 E2A1 =  0 ; E2B1 =  1 ; E2C1 =  1 ; E2D1 =  1 ; //7
            # 1 E2A1 =  1 ; E2B1 =  0 ; E2C1 =  0 ; E2D1 =  0 ; //8
            # 1 E2A1 =  1 ; E2B1 =  0 ; E2C1 =  0 ; E2D1 =  1 ; //9
            # 1 E2A1 =  1 ; E2B1 =  0 ; E2C1 =  1 ; E2D1 =  0 ; //10
            # 1 E2A1 =  1 ; E2B1 =  0 ; E2C1 =  1 ; E2D1 =  1 ; //11    
            # 1 E2A1 =  1 ; E2B1 =  1 ; E2C1 =  0 ; E2D1 =  0 ; //12
            # 1 E2A1 =  1 ; E2B1 =  1 ; E2C1 =  0 ; E2D1 =  1 ; //13
            # 1 E2A1 =  1 ; E2B1 =  1 ; E2C1 =  1 ; E2D1 =  0 ; //14
            # 1 E2A1 =  1 ; E2B1 =  1 ; E2C1 =  1 ; E2D1 =  1 ; //15      

        end

// Ejercicio 2 - Ecuación 2

        initial begin
            #64
            $display ("\n");
            $display("A B C | Y");
            $display("------|--");
            $monitor("%b %b %b | %b", E2A2, E2B2, E2C2, E2F2);
            E2A2 =  0 ; E2B2 =  0 ; E2C2 =  0 ;
            # 1 E2A2 =  0 ; E2B2 =  0 ; E2C2 =  1 ;
            # 1 E2A2 =  0 ; E2B2 =  1 ; E2C2 =  0 ;
            # 1 E2A2 =  0 ; E2B2 =  1 ; E2C2 =  1 ;
            # 1 E2A2 =  1 ; E2B2 =  0 ; E2C2 =  0 ;
            # 1 E2A2 =  1 ; E2B2 =  0 ; E2C2 =  1 ;
            # 1 E2A2 =  1 ; E2B2 =  1 ; E2C2 =  0 ;
            # 1 E2A2 =  1 ; E2B2 =  1 ; E2C2 =  1 ;

        end

// Ejercicio 2 - Ecuación 3

        initial begin
            #72
            $display ("\n");
            $display("A B C D | Y");
            $display("--------|--");
            $monitor("%b %b %b %b | %b", E2A3, E2B3, E2C3, E2D3, E2F3);
            E2A3 =  0 ; E2B3 =  0 ; E2C3 =  0 ; E2D3 =  0 ;
            # 1 E2A3 =  0 ; E2B3 =  0 ; E2C3 =  0 ; E2D3 =  1 ; //1
            # 1 E2A3 =  0 ; E2B3 =  0 ; E2C3 =  1 ; E2D3 =  0 ; //2
            # 1 E2A3 =  0 ; E2B3 =  0 ; E2C3 =  1 ; E2D3 =  1 ; //3
            # 1 E2A3 =  0 ; E2B3 =  1 ; E2C3 =  0 ; E2D3 =  0 ; //4 
            # 1 E2A3 =  0 ; E2B3 =  1 ; E2C3 =  0 ; E2D3 =  1 ; //5
            # 1 E2A3 =  0 ; E2B3 =  1 ; E2C3 =  1 ; E2D3 =  0 ; //6
            # 1 E2A3 =  0 ; E2B3 =  1 ; E2C3 =  1 ; E2D3 =  1 ; //7
            # 1 E2A3 =  1 ; E2B3 =  0 ; E2C3 =  0 ; E2D3 =  0 ; //8
            # 1 E2A3 =  1 ; E2B3 =  0 ; E2C3 =  0 ; E2D3 =  1 ; //9
            # 1 E2A3 =  1 ; E2B3 =  0 ; E2C3 =  1 ; E2D3 =  0 ; //10
            # 1 E2A3 =  1 ; E2B3 =  0 ; E2C3 =  1 ; E2D3 =  1 ; //11    
            # 1 E2A3 =  1 ; E2B3 =  1 ; E2C3 =  0 ; E2D3 =  0 ; //12
            # 1 E2A3 =  1 ; E2B3 =  1 ; E2C3 =  0 ; E2D3 =  1 ; //13
            # 1 E2A3 =  1 ; E2B3 =  1 ; E2C3 =  1 ; E2D3 =  0 ; //14
            # 1 E2A3 =  1 ; E2B3 =  1 ; E2C3 =  1 ; E2D3 =  1 ; //15      
           
        end

// Ejercicio 2 - Ecuación 4

        initial begin
            #90 
            $display ("\n");
            $display("A B C | Y");
            $display("------|--");
            $monitor("%b %b %b | %b", E2A4, E2B4, E2C4, E2F4);
            E2A4 =  0 ; E2B4 =  0 ; E2C4 =  0 ;
            # 1 E2A4 =  0 ; E2B4 =  0 ; E2C4 =  1 ;
            # 1 E2A4 =  0 ; E2B4 =  1 ; E2C4 =  0 ;
            # 1 E2A4 =  0 ; E2B4 =  1 ; E2C4 =  1 ;
            # 1 E2A4 =  1 ; E2B4 =  0 ; E2C4 =  0 ;
            # 1 E2A4 =  1 ; E2B4 =  0 ; E2C4 =  1 ;
            # 1 E2A4 =  1 ; E2B4 =  1 ; E2C4 =  0 ;
            # 1 E2A4 =  1 ; E2B4 =  1 ; E2C4 =  1 ;   

        end

        initial 
        #100 $finish;

initial 
    begin
        $dumpfile("codigo_tb.vcd");
        $dumpvars(0,testbench);
    end
endmodule                   //Fin del modulo
