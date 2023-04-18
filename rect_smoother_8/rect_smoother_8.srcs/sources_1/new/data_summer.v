`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 12:02:52 AM
// Design Name: 
// Module Name: data_summer
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


module data_summer(
    input valid_in,
    input  [15:0] data_1,
    input  [15:0] data_2,
    input  [15:0] data_3,
    input  [15:0] data_4,
    input  [15:0] data_5,
    input  [15:0] data_6,
    input  [15:0] data_7,
    input  [15:0] data_8,
    input  [15:0] data_9,
    input  [15:0] data_10,
    input  [15:0] data_11,
    input  [15:0] data_12,
    input  [15:0] data_13,
    input  [15:0] data_14,
    input  [15:0] data_15,
    input  [15:0] data_16,
    output [21:0] sum
    );
    
    assign sum = data_1 + data_2 + data_3 + data_4 + data_5 + data_6 + data_7 + data_8 + data_9 + data_10 + data_11 + data_12 + data_13 + data_14 + data_15 + data_16;
    
endmodule
