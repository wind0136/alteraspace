`timescale 1ns/1ns
/*
* Test bench of hdl/adder8.v
*/

`include "hdl/adder8.v"

module adder8_tb;
    reg[7:0] a,b;
    reg cin;

    wire[7:0] sum;
    wire cout;
    integer i,j;

    adder8 adder(.cout(cout), .sum(sum), .cin(cin), .ina(a), .inb(b));

    always #5 cin = ~cin;

    initial
    begin
        a=0;b=0;cin=0;
        for(i=1; i<16; i=i+1)
            #10 a=i;
    end

    initial
    begin
        for(j = 1; j < 16; j=j+1)
            #10 b=j;
    end

    initial
    begin
        $monitor($time,,,"%d + %d + %b = {%b,%d}", a, b, cin, cout, sum); 
    end
endmodule
