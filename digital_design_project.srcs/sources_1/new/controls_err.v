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

module err_led_3(led, err, actual_led);
    input [0:0] err;
    input [2:0] led;
    output [2:0] actual_led;
    assign actual_led = (err==0)?led:3'b000;
endmodule
