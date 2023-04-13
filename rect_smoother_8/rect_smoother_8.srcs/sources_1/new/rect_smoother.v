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
`define N 8
module rect_smoother(
    input clk,
    input valid_in,
    input [15:0] data_in,
    output valid_out,
    output [15:0] data_out
    );
    
    reg [15:0] data_hldr [`N-2:0];
    reg [`N-2:0] valid_hldr=0;
    reg [18:0] sum;
    integer i=1;
    integer j=0;
    
    
    assign valid_out = valid_in;
    assign data_out = sum >> 3;
    
    
    // build the sum
    always @(*) begin
        if (valid_in) begin
            sum = data_in;
            for (j=0; j < `N-1; j = j + 1) begin
                if (valid_hldr[j]) begin
                    sum = sum + data_hldr[j];
                end
                else begin
                    sum = sum + 0;
                end
            end
        end
        else begin
            sum = 0;
        end
    end
    
    
    
    always @(posedge clk) begin
        //shift the valid and data
        if (valid_in) begin
            valid_hldr[0] <= valid_in;
            data_hldr[0] <= data_in;
            for (i = 1; i < `N-1; i = i + 1) begin
                valid_hldr[i] <= valid_hldr[i - 1];
                data_hldr[i] <= data_hldr[i - 1];
            end
        end
    end
    
    
endmodule
