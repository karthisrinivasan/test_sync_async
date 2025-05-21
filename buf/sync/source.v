`define DATA_WIDTH 8
`define N 4

module data_source 
(
    input wire clk,
    input wire rst,
    output reg [`DATA_WIDTH-1:0] out_data,
    output reg out_valid,
    input wire out_ready
);
    reg [`DATA_WIDTH-1:0] data_array [0:`N-1];
    integer i;

    initial begin
        data_array[0] = 8'h11;
        data_array[1] = 8'h22;
        data_array[2] = 8'h33;
        data_array[3] = 8'h44;
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            i <= 0;
            out_valid <= 0;
            out_data <= 0;
        end else begin
            if (i < `N) begin
                out_data <= data_array[i];
                out_valid <= 1;
                if (out_ready) begin
                    i <= i + 1;
                end
            end else begin
                out_valid <= 0;
            end
        end
    end
endmodule
