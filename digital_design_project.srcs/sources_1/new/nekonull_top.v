`timescale 1ns / 1ps

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
    wire [0:0] buzz_clk; // 500 hz
    wire [2:0] c3r;
    wire [0:0] blink_clk;

    wire [7:0] d_out, l_out, r_out, e_out, b_out, p_out;
    // reg [7:0] seg_off = 8'b1111_1111;

    error_detection error_detection1(.d(d), .l(l), .r(r), .e(e), .b(b), .p(p), .err(err));

    clk_1hz clk_1hz1(.sys_clk(sys_clk), .clk_out(blink_clk));
    clk_3_rotate clk_3_rotate1(.clk_1hz(blink_clk), .out(c3r));
    gen_buzz gen_buzz1(.sys_clk(sys_clk), .out(buzz_clk));

    d_light d_light1(.d(d), .err(err), .out(d_light));
    l_light l_light1(.clk_3_ro(c3r), .l(l), .e(e), .err(err), .out(l_light));
    l_light l_light2(.clk_3_ro(c3r), .l(r), .e(e), .err(err), .out(r_light));
    p_light p_light1(.b(b), .p(p), .blink_clk(blink_clk), .out(p_light), .err(err));

    buzzer_control buzzer_control1(.buzz_clk(buzz_clk), .l(l), .r(r), .e(e), .out(buzzer), .err(err));

    seg_mux_6 seg_mux_61(.d(d), .l(l), .r(r), .e(e), .b(b), .p(p), .err(err), .d_out(d_out), .l_out(l_out), .r_out(r_out), .e_out(e_out), .b_out(b_out), .p_out(p_out));
    seg_output seg_output1(.seg_en(seg_en), .seg_out(seg_out), .seg_clk(buzz_clk),.d0(8'b1111_1111), .d1(p_out), .d2(b_out), .d3(e_out), .d4(r_out), .d5(l_out), .d6(d_out), .d7(8'b1111_1111));


endmodule // nekonull
// msb: named after my cat
// hopefully my teammate doesn't kill me
