`define DATA_WIDTH 8

module buffer_ready_valid 
(
    input wire clk,
    input wire rst,

    // Input side
    input wire [`DATA_WIDTH-1:0] in_data,
    input wire in_valid,
    output wire in_ready,

    // Output side
    output reg [`DATA_WIDTH-1:0] out_data,
    output reg out_valid,
    input wire out_ready
);

    reg full;
    reg [`DATA_WIDTH-1:0] buffer;

    assign in_ready = !full;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            full <= 0;
            out_valid <= 0;
        end else begin
            // Input handshake
            if (in_valid && in_ready) begin
                buffer <= in_data;
                full <= 1;
                out_valid <= 1;
            end

            // Output handshake
            if (out_valid && out_ready) begin
                full <= 0;
                out_valid <= 0;
            end

            // Update output
            if (full) begin
                out_data <= buffer;
            end
        end
    end
endmodule
