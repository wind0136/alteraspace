/*
* 2-1 mux with cont assign
*/
module assign_mux21(input[1:0] in,
        input sel,
        output out);

    assign out=(sel == 1'b1)?in[1]:in[0];
endmodule


/**
* 8-1 mux
*/
module mux8_1(output cout,
        input[7:0] cin,
        input[2:0] sel);

    reg cout;

    always @(cin or sel)
        case(sel)
            3'b000: cout = cin[0];
            3'b001: cout = cin[1];
            3'b010: cout = cin[2];
            3'b011: cout = cin[3];
            3'b100: cout = cin[4];
            3'b101: cout = cin[5];
            3'b110: cout = cin[6];
            3'b111: cout = cin[7];
            default: cout = 1'bx;
        endcase
endmodule


/**
* 8-1 mux with casez
*/
module mux8_1_z(output cout,
        input[7:0] cin,
        input[2:0] sel);

    reg cout;
    always @(cin or sel)
        casez(sel)
            3'b??1: cout = cin[1];
            3'b?1?: cout = cin[2];
            3'b?11: cout = cin[3];
            3'b1??: cout = cin[4];
            3'b1?1: cout = cin[5];
            3'b11?: cout = cin[6];
            3'b111: cout = cin[7];
            default: cout = cin[0];
        endcase
endmodule
