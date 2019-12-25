`timescale 1ns / 1ps

module gen_buzz(sys_clk, out);
    input [0:0] sys_clk;
    output[0:0] out;

    clk_1khz clk_1khz1(.sys_clk(sys_clk), .out(out));

endmodule

