`timescale 1ns / 1ps

module seg_mux_6(
    d, l, r, e, b, p, err, 
    d_out, l_out, r_out, e_out, b_out, p_out
    );
    input [0:0] d, l, r, e, b, p, err;
    output [7:0] d_out, l_out, r_out, e_out, b_out, p_out;
    seg_mux seg_mux_d(.err(err), .letter(d), .err_seg(8'b1000_0110), .letter_seg(8'b1010_0001), .out(d_out));
    seg_mux seg_mux_l(.err(err), .letter(l), .err_seg(8'b1010_1111), .letter_seg(8'b1100_0111), .out(l_out));
    seg_mux seg_mux_r(.err(err), .letter(r), .err_seg(8'b1010_1111), .letter_seg(8'b1010_1111), .out(r_out));
    seg_mux seg_mux_e(.err(err), .letter(e), .err_seg(8'b1010_0011), .letter_seg(8'b1000_0110), .out(e_out));
    seg_mux seg_mux_b(.err(err), .letter(b), .err_seg(8'b1010_1111), .letter_seg(8'b1000_0011), .out(b_out));
    seg_mux seg_mux_p(.err(err), .letter(p), .err_seg(8'b1111_1111), .letter_seg(8'b1000_1100), .out(p_out));
endmodule


module seg_mux(err, letter, err_seg, letter_seg, out);
    input [0:0] err, letter;
    input [7:0] err_seg, letter_seg;
    output reg [7:0] out;

    always@(*)begin
        case ({err, letter})
            2'b00: out <= 8'b1111_1111;
            2'b01: out <= letter_seg;
            2'b10: out <= err_seg;
            2'b11: out <= err_seg;
        endcase
    end

endmodule
