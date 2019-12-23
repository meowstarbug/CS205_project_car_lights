`timescale 1ns / 1ps

module gen_500hz(clk, out);
    input [0:0] clk;
    output reg [0:0] out;
    
    reg [18:0] cnt=0;
    always @ (posedge clk)
    begin
        if(cnt >= 19999)
        begin
            cnt <= 0;
            out <= ~out;
        end
        else
            cnt <= cnt+1;
    end
endmodule


module gen_10mhz(clk,out);

    input clk;
    output reg out=0;

    reg [18:0] cnt=0;
    always @ (posedge clk)
    begin
        if(cnt >= 499999)
        begin
            cnt <= 0;
            out <= ~out;
        end
        else
            cnt <= cnt+1;
    end


endmodule
