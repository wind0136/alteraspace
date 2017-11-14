module add_count4(
        output cout,
        output[3:0] qout,
        input[3:0] data,
        input clk, input reset, input load);

    reg[3:0] qout;

    always @(posedge clk)
    begin
        if (!reset) qout = 4'h0;
        else if (load) qout = data;
        else qout = qout + 1;
    end

    assign cout = (qout == 4'hf)?1:0;
endmodule
