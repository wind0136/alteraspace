module block_assign(
        output[3:0] c,
        output[3:0] a,
        input[3:0] b,
        input clk);

    reg[3:0] a, c;

    always @(posedge clk)
    begin
        a = b;
        c = a;
    end
    endmodule

    module noblock_assign(
        output[3:0] c,
        output[3:0] a,
        input[3:0] b,
        input clk);

    reg[3:0] a, c;

    always @(posedge clk)
    begin
        a <= b;
        c <= a;
    end
endmodule
