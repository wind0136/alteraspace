module tri_1(output out,
		input en,input in);
`ifdef USE_BUFIF1 
	bufif1 (out, in, en);
`else
	assign out = en? in: 'bz;
`endif
endmodule
