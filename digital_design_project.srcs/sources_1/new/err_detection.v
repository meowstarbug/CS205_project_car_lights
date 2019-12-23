`timescale 1ns / 1ps

module error_detection(
    d, l, r, e, b, p, err
    );
    input [0:0] d, l, r, e, b, p;
    output [0:0] err;

    // l+r, d/l/r + p
    
    assign err = (l&r) + (d|l|r)&p;
endmodule

module err_led(led, err, actual_led);
    input [0:0] led, err;
    output [0:0] actual_led;
    assign actual_led = led&(~err);
endmodule
