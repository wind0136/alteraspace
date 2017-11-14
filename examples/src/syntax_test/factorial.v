`timescale 1ns/1ns

module factorial32(
    output[31:0] out,
    input clk, input reset,
    input[3:0] n);

    reg[31:0] out;
    always @(posedge clk)
    begin
        if (!reset) 
            out <= 0;
        else 
            out <= 2 * do_fact(n);
    end

    function[31:0] do_fact(input[3:0] n);
    reg[3:0] i;
    begin
        do_fact = n ? 1 : 0;
        for (i = 2; i <= n; i = i + 1)
            do_fact = do_fact * i;
    end
    endfunction
endmodule

`define CYCLE 50
module factor_tb;
    reg[3:0] n;
    reg reset, clk;
    wire[31:0] result;

    initial begin
        n = 0; reset = 1; clk = 0;
        for(n = 0; n <=15; n = n + 1)
            #100 n = n;
    end

    initial $monitor($time, ,, "clk = %d n= %d, result = %d", clk, n, result);

    always #`CYCLE clk = ~clk;

    factorial32 factor(.out(result), .clk(clk), .reset(reset), .n(n));
endmodule 
