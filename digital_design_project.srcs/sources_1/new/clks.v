`timescale 1ns / 1ps

module clk_3_rotate(clk_1hz, out);
    input [0:0] clk_1hz;
    output reg [2:0] out;

    reg [1:0] curr_num = 2'b00;

    always @(posedge clk_1hz) begin
        if (curr_num == 2) begin
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
    sys_clk, clk_out
    );
    input sys_clk;
    output reg clk_out = 0;
    reg [28:0] cnt = 0;
    parameter [28:0] period = 29'd4999_9999;
    
    always@(posedge sys_clk)
        if(cnt==period)begin
            clk_out = ~clk_out;
            cnt <= 0;
        end
        else
            cnt <= cnt+1;
endmodule

module clk_1khz(sys_clk,out);

    input sys_clk;
    output reg out=0;

    reg [18:0] cnt=0;
    always @ (posedge sys_clk)
    begin
        if(cnt == 49999)
        begin
            cnt <= 0;
            out <= ~out;
        end
        else
            cnt <= cnt+1;
    end


endmodule