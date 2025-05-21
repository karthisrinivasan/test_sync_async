`timescale 1ns / 1ps

module tb_buffer_with_source_sink
(
    input rst,
    input clk,
    output src_valid,
    output src_ready,
    output buf_ready
);
    parameter DATA_WIDTH = 8;

    // reg clk;
    // reg rst;

    wire [DATA_WIDTH-1:0] src_data;
    wire src_valid;
    wire src_ready;

    wire [DATA_WIDTH-1:0] buf_out;
    wire buf_valid;
    wire buf_ready;

    // Instantiate clock
    // initial clk = 0;
    // always #5 clk = ~clk;

    // DUT: Buffer
    buffer_ready_valid buffer (
        .clk(clk),
        .rst(rst),
        .in_data(src_data),
        .in_valid(src_valid),
        .in_ready(src_ready),
        .out_data(buf_out),
        .out_valid(buf_valid),
        .out_ready(buf_ready)
    );

    // Source
    data_source source (
        .clk(clk),
        .rst(rst),
        .out_data(src_data),
        .out_valid(src_valid),
        .out_ready(src_ready)
    );

    // Sink
    data_sink sink (
        .clk(clk),
        .rst(rst),
        .in_data(buf_out),
        .in_valid(buf_valid),
        .in_ready(buf_ready)
    );

    // Test sequence
    // initial begin
        // rst = 1;
        // #12 rst = 0;
        // #100 $finish;
    // end
endmodule
