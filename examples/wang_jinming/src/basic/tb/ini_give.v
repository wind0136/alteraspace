`timescale 1ns/1ns

module init_give;
    reg a,b,c;

    initial
    begin
        a = 0;b = 1;c = 0;

    #50	a = 1; b = 0;
    #50	a = 0; c = 1;
    #50	b = 1;
    #50	b = 0; c = 0;
    #50	$finish;
    end
endmodule

