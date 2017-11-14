
`define ADD 3'd0
`define SUB 3'd1
`define AND 3'd2
`define OR  3'd3
`define NOT 3'd4

module easy_alu(
        output[7:0] out,
        input [3:0] opcode,
        input[7:0] a,
        input[7:0] b,
        input clk);

    reg cout;
    reg[7:0] out;

    always @(clk)
        case (opcode)
            `ADD: out = a + b;
            `SUB: out = a - b;
            `AND: out = a & b;
            `OR: out = a | b;
            `NOT: out = ~a;
            default out = 8'hx;
        endcase
endmodule

