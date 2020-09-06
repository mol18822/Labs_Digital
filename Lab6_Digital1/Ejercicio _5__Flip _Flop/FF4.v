// Luis Pedro Molina Velásquez - 18822
// Electrónica Digital 1 - Sección 12
// Laboratorio 6 - Ejercicio 5 

// Flip Flop tipo D 1 bit

module FFD(input clk, reset, D, output reg Q);

    always @ (posedge clk or posedge reset) begin
        if(reset)
            Q <= 1'b0;
        else 
            Q <= D; 
    end
endmodule

module FFD2(input clk, reset, input [1:0]D, output reg [1:0]Q);
                                                                                           
    always @ (posedge clk or posedge reset)begin
        if(reset)
            Q <= 2'b00;
        else
            Q[1] <= D[1];
            Q[0] <= D[0];
    end 
endmodule

module FFD4(input clk, reset, input [3:0], output reg [3:0]Q);

    always @ (posedge clk or posedge reset)begin
        if(reset)
            Q <= 2'b00;
        else
            Q[1] <= D[1];
            Q[0] <= D[0];
    end 
