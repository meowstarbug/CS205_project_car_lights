`timescale 1ns / 1ps

/*
I still need: 
    to test: led logic, err logic, buzzer
    testing: 
    tested:

    segment tube showing state letters
    (chart of segment tube)
    ripple clock for turning lights
    top module to stitch everything up
*/

module nekonull(
    d, l, r, e, b, p, 
    seg_en, seg_out, 
    sys_clk, buzzer, 
    d_light, p_light, l_light, r_light
);
    input [0:0] d, l, r, e, b, p;
    input [0:0] sys_clk;

    output[7:0] seg_en, seg_out;
    output[0:0] buzzer;

    output[0:0] d_light, p_light;
    output[2:0] l_light, r_light;

    wire [0:0] err;

    // unfinished modules
    wire c3r;
    wire blink_clk;
    wire buzz_clk;
    // seg tube not included

    error_detection error_detection1(.d(d), .l(l), .r(r), .e(e), .b(b), .p(p), .err());

    d_light d_light1(.d(d), .err(err), .out(d_light));
    l_light l_light1(.clk_3_ro(c3r), .l(l), .e(e), .err(err), .out(l_light));
    l_light l_light2(.clk_3_ro(c3r), .l(r), .e(e), .err(err), .out(r_light));
    p_light p_light1(.b(b), .p(p), .blink_clk(blink_clk), .out(p_light));

    buzzer_control buzzer_control1(.buzz_clk(buzz_clk), .l(l), .r(r), .e(e), .out(buzzer));

endmodule // nekonull
// msb: named after my cat
// hopefully my teammate doesn't kill me
