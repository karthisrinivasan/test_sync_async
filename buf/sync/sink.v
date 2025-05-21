`define DATA_WIDTH 8

module data_sink 
(
    input wire clk,
    input wire rst,
    input wire [`DATA_WIDTH-1:0] in_data,
    input wire in_valid,
    output reg in_ready
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            in_ready <= 0;
        end else begin
            // Simple sink: always ready
            in_ready <= 1;
            // if (in_valid && in_ready) begin
            //     $display("Data Sink Received: %h at time %t", in_data, $time);
            // end
        end
    end
endmodule
