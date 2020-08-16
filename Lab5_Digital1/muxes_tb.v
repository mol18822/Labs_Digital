// Luis Pedro Molina Velásquez - Carné 18822 
// Electrónica Digital 1 - Sección 12
// Laboratorio 5

// Testbench 

module testbench;

    // Definición de variables para Tabla 1, Tabla 2 y Salidas

    reg T1A1, T1B1, T1C1, T1A2, T1B2, T1C2, T1A3, T1B3, T1C3;
    reg T2A1, T2B1, T2C1, T2A2, T2B2, T2C2, T2A3, T2B3, T2C3;
    wire F1, F2, F3, F4, F5, F6;

    // Construcción de modulos

    // Módulos para Tabla 1 - Mux 8:1, Mux 4:1 y Mux 2:1
    t1mux8a1 m1(F1, T1A1, T1B1, T1C1);
    t1mux4a1 m2(F2, T1A2, T1B2, T1C2);
    t1mux2a1 m3(F3, T1A3, T1B3, T1C3);

    // Módulos para Tabla 2 - Mux 8:1, Mux 4:1 y Mux 2:1
    t2mux8a1 m4(F4, T2A1, T2B1, T2C1);
    t2mux4a1 m5(F5, T2A2, T2B2, T2C2);
    t2mux2a1 m6(F6, T2A3, T2B3, T2C3);

// Tabla 1 - mux 8:1

        initial begin
            $display("Tabla 1 - Mux 8:1");
            $display(" A B C | Y");
            $display("------| -");
            $monitor("%b %b %b | %b", T1A1, T1B1, T1C1, F1);
            T1A1 = 0 ; T1B1 = 0 ; T1C1 = 0 ;
            #1 T1A1 = 0 ; T1B1 = 0 ; T1C1 = 1 ;
            #1 T1A1 = 0 ; T1B1 = 1 ; T1C1 = 0 ;
            #1 T1A1 = 0 ; T1B1 = 1 ; T1C1 = 1 ;
            #1 T1A1 = 1 ; T1B1 = 0 ; T1C1 = 0 ;
            #1 T1A1 = 1 ; T1B1 = 0 ; T1C1 = 1 ;
            #1 T1A1 = 1 ; T1B1 = 1 ; T1C1 = 0 ;
            #1 T1A1 = 1 ; T1B1 = 1 ; T1C1 = 1 ;
        end

// Tabla 1 - mux 4:1

        initial begin
            #8
            $display("\n\n");
            $display("Tabla 1 - Mux 4:1");
            $display(" A B C | Y");
            $display("------| -");
            $monitor("%b %b %b | %b", T1A2, T1B2, T1C2, F2);
            T1A2 = 0 ; T1B2 = 0 ; T1C2 = 0 ;
            #1 T1A2 = 0 ; T1B2 = 0 ; T1C2 = 1 ;
            #1 T1A2 = 0 ; T1B2 = 1 ; T1C2 = 0 ;
            #1 T1A2 = 0 ; T1B2 = 1 ; T1C2 = 1 ;
            #1 T1A2 = 1 ; T1B2 = 0 ; T1C2 = 0 ;
            #1 T1A2 = 1 ; T1B2 = 0 ; T1C2 = 1 ;
            #1 T1A2 = 1 ; T1B2 = 1 ; T1C2 = 0 ;
            #1 T1A2 = 1 ; T1B2 = 1 ; T1C2 = 1 ;          
        end

// Tabla 1 - mux 2:1

        initial begin
            #16 
            $display("\n\n");
            $display("Tabla 1 - Mux 2:1");
            $display(" A B C | Y");
            $display("------| -");
            $monitor("%b %b %b | %b", T1A3, T1B3, T1C3, F3);
            T1A3 = 0 ; T1B3 = 0 ; T1C3 = 0 ;
            #1 T1A3 = 0 ; T1B3 = 0 ; T1C3 = 1 ;
            #1 T1A3 = 0 ; T1B3 = 1 ; T1C3 = 0 ;
            #1 T1A3 = 0 ; T1B3 = 1 ; T1C3 = 1 ;
            #1 T1A3 = 1 ; T1B3 = 0 ; T1C3 = 0 ;
            #1 T1A3 = 1 ; T1B3 = 0 ; T1C3 = 1 ;
            #1 T1A3 = 1 ; T1B3 = 1 ; T1C3 = 0 ;
            #1 T1A3 = 1 ; T1B3 = 1 ; T1C3 = 1 ;
        end

// Tabla 2 - mux 8:1

        initial begin
            #24
            $display("\n\n");
            $display("Tabla 2 - Mux 8:1");
            $display(" A B C | Y");
            $display("------| -");
            $monitor("%b %b %b | %b", T2A1, T2B1, T2C1, F4);
            T2A1 = 0 ; T2B1 = 0 ; T2C1 = 0 ;
            #1 T2A1 = 0 ; T2B1 = 0 ; T2C1 = 1 ;
            #1 T2A1 = 0 ; T2B1 = 1 ; T2C1 = 0 ;
            #1 T2A1 = 0 ; T2B1 = 1 ; T2C1 = 1 ;
            #1 T2A1 = 1 ; T2B1 = 0 ; T2C1 = 0 ;
            #1 T2A1 = 1 ; T2B1 = 0 ; T2C1 = 1 ;
            #1 T2A1 = 1 ; T2B1 = 1 ; T2C1 = 0 ;
            #1 T2A1 = 1 ; T2B1 = 1 ; T2C1 = 1 ;
        end

// Tabla 2 - mux 4:1 

        initial begin
            #32
            $display("\n\n");
            $display("Tabla 2 - Mux 4:1");
            $display(" A B C | Y");
            $display("------| -");
            $monitor("%b %b %b | %b", T2A2, T2B2, T2C2, F5);
            T2A2 = 0 ; T2B2 = 0 ; T2C2 = 0 ;
            #1 T2A2 = 0 ; T2B2 = 0 ; T2C2 = 1 ;
            #1 T2A2 = 0 ; T2B2 = 1 ; T2C2 = 0 ;
            #1 T2A2 = 0 ; T2B2 = 1 ; T2C2 = 1 ;
            #1 T2A2 = 1 ; T2B2 = 0 ; T2C2 = 0 ;
            #1 T2A2 = 1 ; T2B2 = 0 ; T2C2 = 1 ;
            #1 T2A2 = 1 ; T2B2 = 1 ; T2C2 = 0 ;
            #1 T2A2 = 1 ; T2B2 = 1 ; T2C2 = 1 ;
        end

// Tabla 2 - mux 2:1

        initial begin
            #40
            $display("\n\n");
            $display("Tabla 2 - Mux 2:1");
            $display(" A B C | Y");
            $display("------| -");
            $monitor("%b %b %b | %b", T2A3, T2B3, T2C3, F6);
            T2A3 = 0 ; T2B3 = 0 ; T2C3 = 0 ;
            #1 T2A3 = 0 ; T2B3 = 0 ; T2C3 = 1 ;
            #1 T2A3 = 0 ; T2B3 = 1 ; T2C3 = 0 ;
            #1 T2A3 = 0 ; T2B3 = 1 ; T2C3 = 1 ;
            #1 T2A3 = 1 ; T2B3 = 0 ; T2C3 = 0 ;
            #1 T2A3 = 1 ; T2B3 = 0 ; T2C3 = 1 ;
            #1 T2A3 = 1 ; T2B3 = 1 ; T2C3 = 0 ;
            #1 T2A3 = 1 ; T2B3 = 1 ; T2C3 = 1 ;
        end

        initial 
        #51 $finish;

initial
    begin
        $dumpfile("muxes_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule           // Fin del módulo

  