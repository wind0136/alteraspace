module h_add(
	output s, output c,
	input a, input b);

`ifdef USE_GATE
	and(c, a, b);
	xor(s, a, b);
`else
`ifdef USE_ASSIGN
	assign s = a ^ b;
	assign c = a & b;
`else 
`ifdef USE_CASE
    reg c;
    reg s;
	always @(a or b)
	begin
        case ({a,b})
            2'b00: begin c = 0; s = 0; end
            2'b01: begin c = 0; s = 1; end
            2'b10: begin c = 0; s = 1; end
            2'b11: begin c = 1; s = 0; end
        endcase
    end
`else
`ifdef USE_RTL
    reg c;
    reg s;
	always @(a or b)
    begin
        c = a ^ b;
        s = a & b;
    end
`endif
`endif
`endif
`endif
endmodule
