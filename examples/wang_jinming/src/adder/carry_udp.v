primitive carry_udp(
	output c,
	input a, input b,
	input ci);

	table
		// ci, a, b, c
		   0   0  0: 0;
		   0   1  0: 0;
		   0   0  1: 0;
		   0   1  1: 1;
		   1   0  0: 0;
		   1   0  1: 1;
		   1   1  0: 1;
		   1   1  1: 1;
	endtable
endprimitive
