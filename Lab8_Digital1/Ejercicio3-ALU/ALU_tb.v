// Luis Pedro Molina Velásquez
// Carné 18822 - Sección 12
// Laboratorio 8
// Ejercicio 3 - ALU

module testbench ();

reg [3:0]A ; reg [3:0]B ; reg [2:0]Comando ; 
wire [3:0]Resultado ;

ALU alu(A, B, Comando, Resultado);

initial begin
    
    #1
    $display(" ");
    $display(" ALU ");
    $display(" ");
    $display(" A       B     COM  | RESULTADO");
    $display(" -------------------|-----------");
    $monitor(" %b   %b   %b     %b    ", A, B, Comando, Resultado);
       A = 4'b0000 ; B = 4'b0000 ; Comando = 3'b000 ;
    #1 A = 4'b0001 ; B = 4'b0010 ; Comando = 3'b000 ;  // 1 + 2 = 3
    #1 A = 4'b1000 ; B = 4'b0110 ; Comando = 3'b000 ;  // 8 + 6 = 14
    #1 A = 4'b1111 ; B = 4'b0011 ; Comando = 3'b001 ;  // 15 - 3 = 12
    #1 A = 4'b0011 ; B = 4'b0001 ; Comando = 3'b001 ;  // 3 - 1 = 2
    #1 A = 4'b1011 ; B = 4'b0010 ; Comando = 3'b010 ;  // A & B = 0010
    #1 A = 4'b0110 ; B = 4'b1111 ; Comando = 3'b010 ;  // A & B = 0110
    #1 A = 4'b0001 ; B = 4'b0010 ; Comando = 3'b100 ;  // A | B = 0011
    #1 A = 4'b0000 ; B = 4'b0100 ; Comando = 3'b100 ;  // A | B = 0100
    #1 A = 4'b1010 ; B = 4'b0101 ; Comando = 3'b101 ;  // A &~B = 1010
    #1 A = 4'b1111 ; B = 4'b0010 ; Comando = 3'b101 ;  // A &~B = 1101
    #1 A = 4'b1011 ; B = 4'b0000 ; Comando = 3'b110 ;  // ~A| B = 0100
    #1 A = 4'b1000 ; B = 4'b0001 ; Comando = 3'b110 ;  // ~A| B = 0111
    #1 A = 4'b1000 ; B = 4'b0000 ; Comando = 3'b111 ;  // A < B = 0000
    #1 A = 4'b0010 ; B = 4'b1000 ; Comando = 3'b111 ;  // A < B = 0001

end

    initial
    #15 $finish;

initial 
    begin
        $dumpfile("ALU_tb.vcd");
        $dumpvars(0,testbench);
    end

endmodule