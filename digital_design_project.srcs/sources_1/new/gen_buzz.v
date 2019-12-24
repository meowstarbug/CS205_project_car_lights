`timescale 1ns / 1ps

module gen_buzz(sys_clk, out);
    input [0:0] sys_clk;
    output[0:0] out;

    wire [0:0] nkn;

 clk_10mhz clk_10mhz1(.sys_clk(sys_clk), .out(nkn));
 clk_500hz clk_500hz1(.clk_10mhz(nkn), .out(out));
endmodule

