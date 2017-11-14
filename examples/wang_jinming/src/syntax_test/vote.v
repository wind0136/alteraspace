/*
* vote operation
* pass = 1 if vote > 4
*/

module vote7(
        output pass,
        input[6:0] vote);
    reg pass;

    reg[2:0] sum;
    integer i;

    always @(vote)
    begin
        sum = 0;
        for(i = 0; i <= 6; i++)
        begin
            if(vote[i] == 1)
                sum = sum + 1;
            if (sum[1] == 1)
                pass = 1;
            else
                pass = 0;
        end
    end
endmodule
