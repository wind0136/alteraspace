module h_add(
	output s, output c,
	input a, input b, input ci);

`ifdef USE_GATE
	wire s1, m1, m2, m3;
	and (m1, a, b),
	    (m2, b, ci),
	    (m3, a, ci);
	or (c, m1, m2, m3);

	xor (s1, a, b),
	    (s, s1, ci);
`else
`ifdef USE_ASSIGN
	assign s = a ^ b ^ ci;
	assign c = (a & b) | (a & c) | (b & c);
`else 
`ifdef USE_RTL
    reg c;
    reg s;
	always @(a or b)
    begin
	{c, s} = a + b + ci;
    end
`endif
`endif
`endif
endmodule
