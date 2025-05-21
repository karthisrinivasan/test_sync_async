module tst (clk, in1, in2, in3, in4, in5, out);

    input wire clk;
    input wire [0:0] in1;
    input wire [0:0] in2;
    input wire [0:0] in3;
    input wire [0:0] in4;
    input wire [0:0] in5;
    output reg [0:0] out;
           reg [0:0] mid1;

    always @(posedge clk) 
    begin
        // mid1 <= in1*in2*in3*in4*in5;
        // mid1 <= in1*in2*in3*in4*in5;
        // out <= mid1;
        // mid1 <= in1*in2;
        out <= in1*in2*in3*in4*in5;
    end

endmodule