`timescale 1ns/1ns
`include "counter8.v"

module counter8_tb;
    reg reset, clk;
    wire[7:0] out;

    parameter DELAY=100;

    counter8 cunt(.cout(out), .clk(clk), .reset(reset));

    always #(DELAY / 2)  clk = ~clk;

    initial
    begin
        clk = 0;
        reset = 0;

        #DELAY reset = 1;
        #DELAY reset = 0;
    end

    initial $monitor($time, ,, "clk=%d reset = %d out = %d", clk, reset, out);
endmodule
