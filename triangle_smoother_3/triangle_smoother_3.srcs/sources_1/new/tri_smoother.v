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
`define N 3
module tri_smoother(
    input clk,
    input valid_in,
    input [15:0] data_in,
    output valid_out,
    output [15:0] data_out
    );
    
    reg [15:0] data_hldr [`N-2:0];
    reg [`N-2:0] valid_hldr=0;
    wire [18:0] sum;
    integer i=1;
    
    
    assign valid_out = valid_in;
    assign data_out = sum >> 1;
    
    assign sum = (valid_hldr[0] ? data_out[0] >> 1 : 0) + (valid_hldr[1] ? data_out[1] : 0) + (valid_hldr[2] ? data_out[2] >> 1 : 0);
    
    
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
