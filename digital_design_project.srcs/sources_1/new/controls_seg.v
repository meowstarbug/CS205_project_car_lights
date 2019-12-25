`timescale 1ns / 1ps

module seg_mux_6(
    d, l, r, e, b, p, err, 
    d_out, l_out, r_out, e_out, b_out, p_out
    );
    seg_mux seg_mux_d(.err(err), .letter(d), .err_seg(8'b1000_0110), .letter_seg(8'b1010_0001), .out(d_out));
    seg_mux seg_mux_l(.err(err), .letter(l), .err_seg(8'b1010_1111), .letter_seg(8'b1100_0111), .out(l_out));
    seg_mux seg_mux_r(.err(err), .letter(r), .err_seg(8'b1010_1111), .letter_seg(8'b1010_1111), .out(r_out));
    seg_mux seg_mux_e(.err(err), .letter(e), .err_seg(8'b1010_0111), .letter_seg(8'b1000_0110), .out(e_out));
    seg_mux seg_mux_b(.err(err), .letter(b), .err_seg(8'b1010_1111), .letter_seg(8'b1000_0011), .out(b_out));
    seg_mux seg_mux_p(.err(err), .letter(p), .err_seg(8'b1111_1111), .letter_seg(8'b1000_1100), .out(p_out));
endmodule


module seg_mux(err, letter, err_seg, letter_seg, out);
    input [0:0] err, letter;
    input [7:0] err_seg, letter_seg;
    output [7:0] out;

    assign out = (letter == 1'b1) ? letter_seg:8'b0000_0000;
    assign out = (err == 1'b1) ? err_seg:out;

endmodule;
