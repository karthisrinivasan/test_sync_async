module tst (clk, in, out);

    input wire clk;
    input wire [7:0] in;
    output reg [7:0] out;

    always @(posedge clk) 
    begin
        out <= in;
    end

endmodule