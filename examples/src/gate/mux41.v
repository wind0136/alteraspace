module mux41(
		output out, input[4:1] in, input[2:1] ctl);
	
	wire notctl1, notctl2, w, x, y, z;
	not (notctl1, ctl[1]), (notctl2, ctl[2]);	

	and (w, in[1], notctl1, notctl2),
		(x, in[2], notctl1, ctl[2]),
		(y, in[3], ctl[1], notctl2),
		(z, in[4], ctl[1], ctl[2]);

	or (out, w, x, y, z);

endmodule
