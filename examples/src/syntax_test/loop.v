/* 
* loop examples of for, while and repeat
*/

/*
* Example of for
*/
module loop_for;

    integer i;

    initial
    begin
        $display("example of for");
        for (i = 0; i < 4; i = i + 1)
            $display("i = %h", i);
    end
endmodule

/*
* Example of while
*/
module loop_while;

    integer i;

    initial
    begin
        i = 0;
        $display("example of while");
        while(i < 4)
        begin
            $display("i = %h", i);
            i = i + 1;
        end
    end
endmodule

/*
* Example of repeat
*/
module loop_repeat;

    integer i;

    initial
    begin
        i = 0;
        $display("example of repeat");
        repeat(4)
        begin
            $display("i = %h", i);
            i = i + 1;
        end
    end
endmodule
