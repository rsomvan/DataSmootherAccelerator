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
`define SHIFT_VAL 7

module rect_smoother(
    input clk,
    input valid_in,
    input [15:0] data_in,
    output valid_out,
    output [15:0] data_out
    );
    
    // internal variables
    reg [15:0] data_hldr [`NUM_HLDR - 1 : 0] [15:0];
    reg [1:0] valid_in_reg=0;
    wire [21:0] sum [`NUM_HLDR - 1 : 0];
    reg [21:0] sum_reg [`NUM_HLDR - 1 : 0];
    reg [22:0] final_sum;
    
    //loop variables
    integer fsum_ind=0;
    integer sreg_ind=0;
    integer slot_ind=1;
    integer shift_ind=0;
    integer inner_ind=0;
    
    // assign outputs correctly
    assign valid_out = valid_in_reg[1];
    assign data_out = (final_sum) >> `SHIFT_VAL;
    
    // build the final sum
    always @(*) begin
        final_sum = 0;
        for (fsum_ind = 0; fsum_ind < `NUM_HLDR; fsum_ind = fsum_ind + 1) begin
            final_sum = final_sum + sum_reg[fsum_ind];
        end
    end
    
    
    //register the combinational sums
    always @(posedge clk) begin
        for (sreg_ind=0; sreg_ind < `NUM_HLDR; sreg_ind = sreg_ind + 1) begin
            sum_reg[sreg_ind] <= sum[sreg_ind];
        end
    end
    
     
    // build the individual sums in parrallel
    genvar sum_ind;
    generate
        for (sum_ind = 0; sum_ind < `NUM_HLDR; sum_ind = sum_ind + 1) begin
            data_summer ds0 (.valid_in(valid_in_reg[0]), .data_1(data_hldr[sum_ind][15]), .data_2(data_hldr[sum_ind][14]),
            .data_3(data_hldr[sum_ind][13]), .data_4(data_hldr[sum_ind][12]), .data_5(data_hldr[sum_ind][11]), .data_6(data_hldr[sum_ind][10]), .data_7(data_hldr[sum_ind][9]),
            .data_8(data_hldr[sum_ind][8]), .data_9(data_hldr[sum_ind][7]), .data_10(data_hldr[sum_ind][6]), .data_11(data_hldr[sum_ind][5]), .data_12(data_hldr[sum_ind][4]),
            .data_13(data_hldr[sum_ind][3]), .data_14(data_hldr[sum_ind][2]), .data_15(data_hldr[sum_ind][1]), .data_16(data_hldr[sum_ind][0]), .sum(sum[sum_ind]));
        end
    endgenerate
    
    
    always @(posedge clk) begin
        //shift the valid and data
        valid_in_reg[0] <= valid_in;
        valid_in_reg[1] <= valid_in_reg[0];
        
        if (valid_in) begin
            // grab the new incoming data
            data_hldr[0][0] <= data_in;
            
            // shift the data at the ends to next slot
            for (slot_ind = 1; slot_ind < `NUM_HLDR; slot_ind = slot_ind + 1) begin
                data_hldr[slot_ind][0] <= data_hldr[slot_ind - 1][15];
            end
            
            // internally shift the data remaining in the same slot
            for (shift_ind = 0; shift_ind < `NUM_HLDR; shift_ind = shift_ind + 1) begin
                for (inner_ind = 1; inner_ind < 16; inner_ind = inner_ind + 1) begin
                    data_hldr[shift_ind][inner_ind] <= data_hldr[shift_ind][inner_ind - 1];
                end
            end
        end  
    end
    
    
endmodule
