`timescale 10ns/1ns

module wave_fork;
    parameter cycle = 5;
    reg wave;

    initial
        fork
                     wave = 0;
            #(cycle)     wave = 1;
            #(2 * cycle) wave = 0;
            #(3 * cycle) wave = 1;
            #(4 * cycle) wave = 0;
            #(5 * cycle) wave = 1;
            #(6 * cycle) $finish;
        join
    initial $monitor($time, , ,"wave = %d", wave);
endmodule
