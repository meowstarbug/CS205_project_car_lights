`timescale 1ns / 1ps

module clk_3_rotate(clk_1hz, out);
    input [0:0] clk_1hz;
    output reg [2:0] out;

    reg [1:0] curr_num = 2'b00;

    always @(posedge clk_1hz) begin
        if ((curr_num == 2)|(curr_num == 3)) begin
            curr_num <= 0;
        end
        else begin
            curr_num <= curr_num + 1;
        end
    end

    always @(posedge clk_1hz) begin
        case (curr_num)
            0: out <= 3'b100;
            1: out <= 3'b010;
            2: out <= 3'b001;
            default: out <= 3'b000;
        endcase
    end
endmodule

module clk_1hz(
    input clk,
    output reg clk_out = 0,
    output reg [28:0] cnt = 0 
    );
    parameter [28:0] period = 29'd5000_0000;
    always@(posedge clk)
        if(cnt==period)begin
            clk_out = ~clk_out;
            cnt <= 0;
        end
        else
            cnt <= cnt+1;
 endmodule

module clk_500hz(clk_10mhz, out);
    input [0:0] clk_10mhz;
    output reg [0:0] out;
    
    reg [15:0] cnt=0;
    always @ (posedge clk_10mhz)
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

module clk_10mhz(sys_clk,out);

    input sys_clk;
    output reg out=0;

    reg [18:0] cnt=0;
    always @ (posedge sys_clk)
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