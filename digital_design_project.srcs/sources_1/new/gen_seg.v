`timescale 1ns / 1ps

module seg_output(
    seg_en, seg_out, seg_clk, 
    d0, d1, d2, d3, d4, d5, d6, d7
);
    input [7:0] d0, d1, d2, d3, d4, d5, d6, d7;
    // the actual stuff you want in your seg, 0-7 = r-l
    input [0:0] seg_clk;
    // use 500hz clk from buzzer
    output reg [7:0] seg_en, seg_out;

    reg [2:0] curr_num = 3'b000;

    always @(posedge seg_clk) begin
        if (curr_num == 7) begin
            curr_num <= 0;
        end
        else begin
            curr_num <= curr_num + 1;
        end
    end

    always @(posedge seg_clk) begin
        case (curr_num)
            0: begin seg_en<=8'b1111_1110; seg_out<=d0; end
            1: begin seg_en<=8'b1111_1101; seg_out<=d1; end
            2: begin seg_en<=8'b1111_1011; seg_out<=d2; end
            3: begin seg_en<=8'b1111_0111; seg_out<=d3; end
            4: begin seg_en<=8'b1110_1111; seg_out<=d4; end
            5: begin seg_en<=8'b1101_1111; seg_out<=d5; end
            6: begin seg_en<=8'b1011_1111; seg_out<=d6; end
            7: begin seg_en<=8'b0111_1111; seg_out<=d7; end
            default: begin seg_en<=8'b1111_1111; seg_out<=8'b0000_0000; end
        endcase
    end
endmodule

