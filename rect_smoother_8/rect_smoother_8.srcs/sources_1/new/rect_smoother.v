`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 04:59:33 PM
// Design Name: 
// Module Name: rect_smoother
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define N 128
`define NUM_HLDR `N/16

module rect_smoother(
    input clk,
    input valid_in,
    input [15:0] data_in,
    output valid_out,
    output [15:0] data_out
    );
    
    // holds data
    reg [15:0] data_hldr [15:0] [`NUM_HLDR - 1 : 0];
    reg [15:0] data_hldr_2 [15:0];
    reg [15:0] data_hldr_3 [15:0];
    reg [15:0] data_hldr_4 [15:0];
    reg [15:0] data_hldr_5 [15:0];
    reg [15:0] data_hldr_6 [15:0];
    reg [15:0] data_hldr_7 [15:0];
    reg [15:0] data_hldr_8 [15:0];
    
    
    reg [`N-1:0] valid_hldr=0;
    reg [1:0] valid_in_reg=0;
    reg [21:0] sum_1;
    reg [21:0] sum_2;
    reg [21:0] sum_3;
    reg [21:0] sum_4;
    reg [21:0] sum_5;
    reg [21:0] sum_6;
    reg [21:0] sum_7;
    reg [21:0] sum_8;
    
    
    reg [21:0] sum_1_reg;
    reg [21:0] sum_2_reg;
    reg [21:0] sum_3_reg;
    reg [21:0] sum_4_reg;
    reg [21:0] sum_5_reg;
    reg [21:0] sum_6_reg;
    reg [21:0] sum_7_reg;
    reg [21:0] sum_8_reg;
    
    wire [22:0] final_sum;
    
    integer i=1;
    integer i_1=1;
    integer i_2=1;
    integer i_3=1;
    integer i_4=1;
    integer i_5=1;
    integer i_6=1;
    integer i_7=1;
    integer i_8=1;
    integer j_1=0;
    integer j_2=0;
    integer j_3=0;
    integer j_4=0;
    integer j_5=0;
    integer j_6=0;
    integer j_7=0;
    integer j_8=0;
    
    
    assign valid_out = valid_in_reg[1];
    assign data_out = (final_sum) >> 7;
    
    assign final_sum = sum_1_reg + sum_2_reg + sum_3_reg + sum_4_reg + sum_5_reg + sum_6_reg + sum_7_reg + sum_8_reg;
    // build sum_1
    always @(*) begin
        sum_1 = 0;
        if (valid_in_reg[0]) begin
            for (j_1=0; j_1 < 16; j_1 = j_1 + 1) begin
                sum_1 = sum_1 + data_hldr_1[j_1];
            end
        end
        else begin
            sum_1 = 0;
        end
    end
    
    // build sum_2
    always @(*) begin
        sum_2 = 0;
        if (valid_in_reg[0]) begin
            for (j_2=0; j_2 < 16; j_2 = j_2 + 1) begin
                    sum_2 = sum_2 + data_hldr_2[j_2];
            end
        end
        else begin
            sum_2 = 0;
        end
    end
    
    
    // build sum_3
    always @(*) begin
        sum_3 = 0;
        if (valid_in_reg[0]) begin
            for (j_3=0; j_3 < 16; j_3 = j_3 + 1) begin
                  sum_3 = sum_3 + data_hldr_3[j_3];
            end
        end
        else begin
            sum_3 = 0;
        end
    end
    
    
    // build sum_4
    always @(*) begin
        sum_4 = 0;
        if (valid_in_reg[0]) begin
            for (j_4=0; j_4 < 16; j_4 = j_4 + 1) begin
                    sum_4 = sum_4 + data_hldr_4[j_4];
            end
        end
        else begin
            sum_4 = 0;
        end
    end
    
    
    // build sum_5
    always @(*) begin
        sum_5 = 0;
        if (valid_in_reg[0]) begin
            for (j_5=0; j_5 < 16; j_5 = j_5 + 1) begin
                sum_5 = sum_5 + data_hldr_5[j_5];
            end
        end
        else begin
            sum_5 = 0;
        end
    end
    
    
    // build sum_6
    always @(*) begin
        sum_6 = 0;
        if (valid_in_reg[0]) begin
            for (j_6=0; j_6 < 16; j_6 = j_6 + 1) begin
                sum_6 = sum_6 + data_hldr_6[j_6];
            end
        end
        else begin
            sum_6 = 0;
        end
    end
    
    
     // build sum_7
    always @(*) begin
        sum_7 = 0;
        if (valid_in_reg[0]) begin
            for (j_7=0; j_7 < 16; j_7 = j_7 + 1) begin
                sum_7 = sum_7 + data_hldr_7[j_7];
            end
        end
        else begin
            sum_7 = 0;
        end
    end
    
    
    
     // build sum_7
    always @(*) begin
        sum_8 = 0;
        if (valid_in_reg[0]) begin
            for (j_8=0; j_8 < 16; j_8 = j_8 + 1) begin
                 sum_8 = sum_8 + data_hldr_8[j_8];
            end
        end
        else begin
            sum_8 = 0;
        end
    end
    
    
    always @(posedge  clk) begin
        sum_1_reg <= sum_1;
        sum_2_reg <= sum_2;
        sum_3_reg <= sum_3;
        sum_4_reg <= sum_4;
        
        sum_5_reg <= sum_5;
        sum_6_reg <= sum_6;
        sum_7_reg <= sum_7;
        sum_8_reg <= sum_8;
    end
    
    always @(posedge clk) begin
        //shift the valid and data
        valid_in_reg[0] <= valid_in;
        valid_in_reg[1] <= valid_in_reg[0];
        
        if (valid_in) begin
            valid_hldr[0] <= valid_in;
            data_hldr_1[0] <= data_in;
            for (i = 1; i < `N-1; i = i + 1) begin
                valid_hldr[i] <= valid_hldr[i - 1];
            end
            
            // shift data_hldr_1
            for (i_1 = 1; i_1 < 16; i_1 = i_1 + 1) begin
                data_hldr_1[i_1] <= data_hldr_1[i_1 - 1];
            end
            
            //shift data_hldr_2
            data_hldr_2[0] <= data_hldr_1[15];
            for (i_2 = 1; i_2 < 16; i_2 = i_2 + 1) begin
                data_hldr_2[i_2] <= data_hldr_2[i_2 - 1];
            end
            
            //shift data_hldr_3
            data_hldr_3[0] <= data_hldr_2[15];
            for (i_3 = 1; i_3 < 16; i_3 = i_3 + 1) begin
                data_hldr_3[i_3] <= data_hldr_3[i_3 - 1];
            end
            
            //shift data_hldr_4
            data_hldr_4[0] <= data_hldr_3[15];
            for (i_4 = 1; i_4 < 16; i_4 = i_4 + 1) begin
                data_hldr_4[i_4] <= data_hldr_4[i_4 - 1];
            end
            
            
            //shift data_hldr_5
            data_hldr_5[0] <= data_hldr_4[15];
            for (i_5 = 1; i_5 < 16; i_5 = i_5 + 1) begin
                data_hldr_5[i_5] <= data_hldr_5[i_5 - 1];
            end
            
            //shift data_hldr_6
            data_hldr_6[0] <= data_hldr_5[15];
            for (i_6 = 1; i_6 < 16; i_6 = i_6 + 1) begin
                data_hldr_6[i_6] <= data_hldr_6[i_6 - 1];
            end
            
            //shift data_hldr_7
            data_hldr_7[0] <= data_hldr_6[15];
            for (i_7 = 1; i_7 < 16; i_7 = i_7 + 1) begin
                data_hldr_7[i_7] <= data_hldr_7[i_7 - 1];
            end
            
            
            //shift data_hldr_8
            data_hldr_8[0] <= data_hldr_7[15];
            for (i_8 = 1; i_8 < 16; i_8 = i_8 + 1) begin
                data_hldr_8[i_8] <= data_hldr_8[i_8 - 1];
            end
        end
    end
    
    
endmodule
