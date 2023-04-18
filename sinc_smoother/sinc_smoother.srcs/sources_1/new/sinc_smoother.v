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
`define N 20
`define D_BITS 16
`define Q_BITS 15
module sinc_smoother(
    input clk,
    input valid_in,
    input [15:0] data_in,
    output valid_out,
    output [15:0] data_out
    );
    
    reg [15:0] data_hldr [`N-2:0];
    reg [(`Q_BITS + `D_BITS) - 1 : 0] conv_hldr [`N - 1: 0];
    reg [`N-2:0] valid_hldr=0;
    reg [1:0] valid_in_reg=0;
    reg [(`Q_BITS + `D_BITS) - 1:0] p_sum=0;
    reg [(`Q_BITS + `D_BITS) - 1:0] n_sum=0;
    integer i=1;
    integer j=0;
    integer z=0;
    
    wire [`Q_BITS : 0] coef [`N - 1:0];
    
    
    // define the coefficients of the impulse response
    assign coef[0] = `Q_BITS'd0;
    assign coef[1] = `Q_BITS'd6;
    assign coef[2] = `Q_BITS'd50;
    assign coef[3] = `Q_BITS'd146;
    assign coef[4] = `Q_BITS'd209;
    assign coef[5] = `Q_BITS'd0;
    assign coef[6] = `Q_BITS'd798;
    assign coef[7] = `Q_BITS'd2328;
    assign coef[8] = `Q_BITS'd4304;
    assign coef[9] = `Q_BITS'd6016;
    assign coef[10] = `Q_BITS'd6697;
    
    // assign outputs
    // valid_out must be delayed 2 clock cycles (1 to add to data_hldr, 1 to perform the multiplication)
    assign valid_out = valid_in_reg[1];
    
    // assign the final sum
    assign data_out = (p_sum - n_sum) >> `Q_BITS;
    
    
    
    always @(*) begin
        n_sum = 0;
        p_sum = 0;
        for (z = 0; z < `N; z = z + 1) begin
            // add the negative results into n_sum
            if ((z >= 1 && z <= 4) || (z >= 16 && z <= 19)) begin
                n_sum = n_sum + conv_hldr[z];
            end
            else begin // add the positive results into p_sum
                p_sum = p_sum + conv_hldr[z];
            end
        end
    end
    
    
    // perform parrallel multiplication for scaled values
    always @(posedge clk) begin
        // create proper shifts for the valid
        valid_in_reg[0] <= valid_in;
        valid_in_reg[1] <= valid_in_reg[0];

        for (j = 0; j < `N; j = j + 1) begin
            if (j > 10) begin
                conv_hldr[j] <= valid_hldr[j] ? coef[20 - j] * data_hldr[j] : 0;
            end
            else begin
                conv_hldr[j] <= valid_hldr[j] ? coef[j] * data_hldr[j] : 0;
            end
        end
    end

    // collect new data
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
