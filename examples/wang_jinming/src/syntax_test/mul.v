/**
* multy operation uses for
* out = a * b
*/

module mul_for(out, a, b);
    parameter size = 8;
    output[2 * size:1] out;
    input[size:1] a,b;

    reg[2 * size:1] out;
    integer i;

    always @(a or b)
    begin
        out = 0;
        for(i = 1; i < size; i = i + 1)
            if (b[i]) out = out + (a << (i - 1));
    end
endmodule


/* 
* multy operation uses repeat
* out = a * b
*/
module mult_repeat(out, a, b);
    parameter size = 8;
    output[2 * size:1] out;
    input[size:1] a,b;

    reg[2 * size:1] out;
    reg[2 * size:1] tempa;
    reg[size:1] tempb;

    always @(a or b)
    begin
        out = 0;
        tempa = a;
        tempb = b;
        repeat(size);
        begin
            if (tempb[1] == 1)
                out = out + tempa;
            tempa = tempa << 1;
            tempb = tempb >> 1;
        end
    end
endmodule
