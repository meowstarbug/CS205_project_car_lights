`timescale 1ns / 1ps

module d_light(d, err, out);
    input [0:0] d, err;
    output [0:0] out;
    err_led nkn(.led(d), .err(err), .actual_led(out));
endmodule

module l_light(clk_3_ro, l, e, err, out);
// works for both left and right lights
    input [2:0] clk_3_ro;
    input [0:0] l, e, err;
    output [2:0] out;
    
    wire [2:0] l_light_wo_err;
    wire [0:0] en;

    assign en = l|e;
    assign l_light_wo_err = (en==1'b1)?clk_3_ro:3'b000;

    err_led_3 nkn(.led(l_light_wo_err), .err(err), .actual_led(out));
endmodule

module p_light(b, p, blink_clk, out, err);
    input [0:0] b, p, blink_clk, err;
    output [0:0] out;
    reg [0:0]tmp_out;

    always @(*)
    begin
        case ({b, p})
            2'b00: tmp_out <= 1'b0;
            2'b10: tmp_out <= blink_clk;
            2'b01: tmp_out <= 1'b1;
            2'b11: tmp_out <= 1'b1;
            default: tmp_out <= 1'b0;
        endcase
    end
    err_led nkn(.led(tmp_out), .err(err), .actual_led(out));
    // assign out = (err==1'b1)?1'b0:tmp_out;
endmodule

module buzzer_control(buzz_clk, l, r, e, out, err);
    input [0:0] buzz_clk;
    input [0:0] l, r, e, err;
    output [0:0] out;
    wire [0:0] en, tmp_out;

    assign en = l|r|e;
    assign tmp_out = (en==1)?buzz_clk:1'b0;
    err_led nkn(.led(tmp_out), .err(err), .actual_led(out));

endmodule // buzzer_control
