/*
* 8-bit counter
* Li, Dongli(wind0136@hotmail.com)
*/

module counter8(
		output[7:0] cout,

		input clk,
		input reset);

    reg[7:0] cout;

    always @(posedge clk)
    begin
            if(reset == 1)
                    cout <= 0;
            else
                    cout <= cout + 1;
    end
endmodule
