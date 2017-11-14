/*
* full adder with 8 bit.
*/

module adder8(
		output cout,
		output[7:0] sum,

		input cin,
		input[7:0] ina,
		input[7:0] inb);

    assign {cout, sum} = ina + inb + cin;

endmodule
