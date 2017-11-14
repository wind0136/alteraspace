module serial1(
        output q, output a,
        input clk);
    reg q, a;
    always @(posedge clk)
    begin
        q = ~q;
        a = ~q;
    end
endmodule

module serial2(
        output q, output a,
        input clk);
    reg q, a;
    always @(posedge clk)
    begin
        a = ~q;
        q = ~q;
    end
endmodule

module paral1(
        output q, output a,
        input clk);
    reg q, a;
    always @(posedge clk)
    begin
        q = ~q;
    end

    always @(posedge clk)
    begin
        a = ~q;
    end
endmodule

module paral2(
        output q, output a,
        input clk);
    reg q, a;

    always @(posedge clk)
    begin
        a = ~q;
    end

    always @(posedge clk)
    begin
        q = ~q;
    end

endmodule
