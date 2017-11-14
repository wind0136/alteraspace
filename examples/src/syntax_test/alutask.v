/*
* examples of TASK
*/

module alutask(
        output[3:0] c,
        input[1:0] code,
        input[3:0] a,
        input[3:0] b);

    reg[3:0] c;

    task my_and;
        output[3:0] c;
        input[3:0] a;
        input[3:0] b;

        integer i;
        begin
            for(i = 0; i <= 3; i++)
                c[i] = a[i] & b[i];
        end
    endtask

    always @(code or a or b)
    begin
        case(code)
            2'b00: my_and(c, a, b);
            2'b01: c = a | b;
            2'b10: c = a - b;
            2'b11: c = a + b;
        endcase
    end
    endmodule

    /* test code of alutask module. */
    module alutask_tb;
    reg[3:0] a;
    reg[3:0] b;
    reg[1:0] opcode;
    wire[3:0] c;
    parameter DELAY = 10;

    alutask ALU(.c(c), .code(opcode), .a(a), .b(b));

    initial
    begin
        opcode = 2'b00; a = 4'd0; b = 4'd0;
        #DELAY opcode = 2'b00; a = 4'b1101; b = 4'b1100;
        #DELAY opcode = 2'b01; a = 4'b1101; b = 4'b1100;
        #DELAY opcode = 2'b10; a = 4'b1101; b = 4'b1100;
        #DELAY opcode = 2'b11; a = 4'b1101; b = 4'b1100;
        #DELAY $finish;
    end

    initial $monitor($time, ,, "opcode = %b a = %b b = %b c = %b",
        opcode, a, b, c);
endmodule


