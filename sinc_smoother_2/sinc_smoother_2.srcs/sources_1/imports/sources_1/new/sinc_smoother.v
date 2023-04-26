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
`define N 177
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
    reg [(`Q_BITS + `D_BITS) : 0] conv_hldr [`N - 1: 0];
    reg [`N-2:0] valid_hldr=0;
    reg [2:0] valid_in_reg=0;
    reg [(`Q_BITS + `D_BITS) + 1 :0] p_sum_1=0;
    reg [(`Q_BITS + `D_BITS) + 1 :0] p_sum_2=0;
    reg [(`Q_BITS + `D_BITS) + 1 :0] p_sum_3=0;
    reg [(`Q_BITS + `D_BITS) + 1 :0] p_sum_4=0;
    reg [(`Q_BITS + `D_BITS) + 1 :0] p_sum_5=0;
    reg [(`Q_BITS + `D_BITS) + 1 :0] p_sum_6=0;
    
    reg [(`Q_BITS + `D_BITS) - 1 :0] p_sum_1_small=0;
    reg [(`Q_BITS + `D_BITS) - 1 :0] p_sum_2_small=0;
    reg [(`Q_BITS + `D_BITS) - 1 :0] p_sum_3_small=0;
    reg [(`Q_BITS + `D_BITS) - 1 :0] p_sum_4_small=0;
    reg [(`Q_BITS + `D_BITS) - 1 :0] p_sum_5_small=0;
    reg [(`Q_BITS + `D_BITS) - 1 :0] p_sum_6_small=0;
    
    reg [(`Q_BITS + `D_BITS) + 1 :0] n_sum_1=0;
    reg [(`Q_BITS + `D_BITS) + 1 :0] n_sum_2=0;
    reg [(`Q_BITS + `D_BITS) + 1 :0] n_sum_3=0;
    reg [(`Q_BITS + `D_BITS) + 1 :0] n_sum_4=0;
    reg [(`Q_BITS + `D_BITS) + 1 :0] n_sum_5=0;
    
    reg [(`Q_BITS + `D_BITS) - 1 :0] n_sum_1_small=0;
    reg [(`Q_BITS + `D_BITS) - 1 :0] n_sum_2_small=0;
    reg [(`Q_BITS + `D_BITS) - 1 :0] n_sum_3_small=0;
    reg [(`Q_BITS + `D_BITS) - 1 :0] n_sum_4_small=0;
    reg [(`Q_BITS + `D_BITS) - 1 :0] n_sum_5_small=0;
    
    integer i=1;
    integer j=0;
    integer z=0;
    
    wire [`Q_BITS : 0] coef [`N - 1:0];
    
    
    // define the coefficients of the impulse response
    assign coef[0] = `Q_BITS'd1;
    assign coef[1] = `Q_BITS'd1;
    assign coef[2] = `Q_BITS'd1;
    assign coef[3] = `Q_BITS'd2;
    assign coef[4] = `Q_BITS'd2;
    assign coef[5] = `Q_BITS'd3;
    assign coef[6] = `Q_BITS'd3;
    assign coef[7] = `Q_BITS'd4;
    assign coef[8] = `Q_BITS'd5;
    assign coef[9] = `Q_BITS'd5;
    assign coef[10] = `Q_BITS'd6;
    assign coef[11] = `Q_BITS'd7;
    assign coef[12] = `Q_BITS'd8;
    assign coef[13] = `Q_BITS'd9;
    assign coef[14] = `Q_BITS'd10;
    assign coef[15] = `Q_BITS'd11;
    assign coef[16] = `Q_BITS'd12;
    assign coef[17] = `Q_BITS'd13;
    assign coef[18] = `Q_BITS'd14;
    assign coef[19] = `Q_BITS'd15;
    assign coef[20] = `Q_BITS'd16;
    assign coef[21] = `Q_BITS'd17;
    assign coef[22] = `Q_BITS'd18;
    assign coef[23] = `Q_BITS'd19;
    assign coef[24] = `Q_BITS'd20;
    assign coef[25] = `Q_BITS'd20;
    assign coef[26] = `Q_BITS'd20;
    assign coef[27] = `Q_BITS'd21;
    assign coef[28] = `Q_BITS'd20;
    assign coef[29] = `Q_BITS'd20;
    assign coef[30] = `Q_BITS'd19;
    assign coef[31] = `Q_BITS'd18;
    assign coef[32] = `Q_BITS'd17;
    assign coef[33] = `Q_BITS'd15;
    assign coef[34] = `Q_BITS'd13;
    assign coef[35] = `Q_BITS'd11;
    assign coef[36] = `Q_BITS'd7;
    assign coef[37] = `Q_BITS'd4;
    assign coef[38] = `Q_BITS'd0;
    assign coef[39] = `Q_BITS'd4;
    assign coef[40] = `Q_BITS'd10;
    assign coef[41] = `Q_BITS'd16;
    assign coef[42] = `Q_BITS'd23;
    assign coef[43] = `Q_BITS'd30;
    assign coef[44] = `Q_BITS'd39;
    assign coef[45] = `Q_BITS'd48;
    assign coef[46] = `Q_BITS'd57;
    assign coef[47] = `Q_BITS'd68;
    assign coef[48] = `Q_BITS'd79;
    assign coef[49] = `Q_BITS'd91;
    assign coef[50] = `Q_BITS'd104;
    assign coef[51] = `Q_BITS'd118;
    assign coef[52] = `Q_BITS'd132;
    assign coef[53] = `Q_BITS'd147;
    assign coef[54] = `Q_BITS'd163;
    assign coef[55] = `Q_BITS'd180;
    assign coef[56] = `Q_BITS'd197;
    assign coef[57] = `Q_BITS'd214;
    assign coef[58] = `Q_BITS'd232;
    assign coef[59] = `Q_BITS'd251;
    assign coef[60] = `Q_BITS'd270;
    assign coef[61] = `Q_BITS'd290;
    assign coef[62] = `Q_BITS'd309;
    assign coef[63] = `Q_BITS'd329;
    assign coef[64] = `Q_BITS'd349;
    assign coef[65] = `Q_BITS'd370;
    assign coef[66] = `Q_BITS'd390;
    assign coef[67] = `Q_BITS'd410;
    assign coef[68] = `Q_BITS'd430;
    assign coef[69] = `Q_BITS'd450;
    assign coef[70] = `Q_BITS'd469;
    assign coef[71] = `Q_BITS'd488;
    assign coef[72] = `Q_BITS'd506;
    assign coef[73] = `Q_BITS'd524;
    assign coef[74] = `Q_BITS'd541;
    assign coef[75] = `Q_BITS'd558;
    assign coef[76] = `Q_BITS'd573;
    assign coef[77] = `Q_BITS'd588;
    assign coef[78] = `Q_BITS'd601;
    assign coef[79] = `Q_BITS'd614;
    assign coef[80] = `Q_BITS'd625;
    assign coef[81] = `Q_BITS'd635;
    assign coef[82] = `Q_BITS'd644;
    assign coef[83] = `Q_BITS'd652;
    assign coef[84] = `Q_BITS'd658;
    assign coef[85] = `Q_BITS'd663;
    assign coef[86] = `Q_BITS'd666;
    assign coef[87] = `Q_BITS'd669;
    assign coef[88] = `Q_BITS'd669;    
    
    
    
    
    
    
    // assign outputs
    // valid_out must be delayed 2 clock cycles (1 to add to data_hldr, 1 to perform the multiplication)
    assign valid_out = valid_in_reg[1];
    
    // assign the final sum
    assign data_out = ((p_sum_1_small + p_sum_2_small + p_sum_3_small + p_sum_4_small + p_sum_5_small + p_sum_6_small) - (n_sum_1_small + n_sum_2_small + n_sum_3_small + n_sum_4_small + n_sum_5_small)) >> `Q_BITS;
    
    
    always @(posedge clk) begin
        if (p_sum_1 > 33'h7FFFFFFF) begin
            p_sum_1_small <= 31'h7FFFFFFF;
        end
        else begin
            p_sum_1_small <= p_sum_1[30:0];
        end
        
        if (p_sum_2 > 33'h7FFFFFFF) begin
            p_sum_2_small <= 31'h7FFFFFFF;
        end
        else begin
            p_sum_2_small <= p_sum_2[30:0];
        end
        
        if (p_sum_3 > 33'h7FFFFFFF) begin
            p_sum_3_small <= 31'h7FFFFFFF;
        end
        else begin
            p_sum_3_small <= p_sum_3[30:0];
        end
        
        if (p_sum_4 > 33'h7FFFFFFF) begin
            p_sum_4_small <= 31'h7FFFFFFF;
        end
        else begin
            p_sum_4_small <= p_sum_4[30:0];
        end
        
        if (p_sum_5 > 33'h7FFFFFFF) begin
            p_sum_5_small <= 31'h7FFFFFFF;
        end
        else begin
            p_sum_5_small <= p_sum_5[30:0];
        end
        
        if (p_sum_6 > 33'h7FFFFFFF) begin
            p_sum_6_small <= 31'h7FFFFFFF;
        end
        else begin
            p_sum_6_small <= p_sum_6[30:0];
        end
        
        
        if (n_sum_1 > 33'h7FFFFFFF) begin
            n_sum_1_small <= 31'h7FFFFFFF;
        end
        else begin
            n_sum_1_small <= n_sum_1[30:0];
        end
        
        if (n_sum_2 > 33'h7FFFFFFF) begin
            n_sum_2_small <= 31'h7FFFFFFF;
        end
        else begin
            n_sum_2_small <= n_sum_2[30:0];
        end
        
        if (n_sum_3 > 33'h7FFFFFFF) begin
            n_sum_3_small <= 31'h7FFFFFFF;
        end
        else begin
            n_sum_3_small <= n_sum_3[30:0];
        end
        
        if (n_sum_4 > 33'h7FFFFFFF) begin
            n_sum_4_small <= 31'h7FFFFFFF;
        end
        else begin
            n_sum_4_small <= n_sum_4[30:0];
        end
        
        if (n_sum_5 > 33'h7FFFFFFF) begin
            n_sum_5_small <= 31'h7FFFFFFF;
        end
        else begin
            n_sum_5_small <= n_sum_5[30:0];
        end
    end
    always @(*) begin
        n_sum_1 = 0;
        n_sum_2 = 0;
        n_sum_3 = 0;
        n_sum_4 = 0;
        n_sum_5 = 0;
        p_sum_1 = 0;
        p_sum_2 = 0;
        p_sum_3 = 0;
        p_sum_4 = 0;
        p_sum_5 = 0;
        p_sum_6 = 0;
        for (z = 0; z < `N; z = z + 1) begin
            // add the negative results into n_sum
            if (z >= 0 && z <= 13)
                n_sum_1 = n_sum_1 + conv_hldr[z];
            else if (z >= 14 && z <= 25)
                n_sum_2 = n_sum_2 + conv_hldr[z];
            else if (z >= 26 && z <= 37)
                n_sum_5 = n_sum_5 + conv_hldr[z];
            else if (z >= 139 && z <= 152) 
                n_sum_3 = n_sum_3 + conv_hldr[z];
            else if ( z >= 153)
                n_sum_4 = n_sum_4 + conv_hldr[z];
            else if (z >= 39 && z <= 54)  // add the positive results into p_sum
                p_sum_1 = p_sum_1 + conv_hldr[z];
            else if (z >= 55 && z <= 70)
                p_sum_2 = p_sum_2 + conv_hldr[z];
            else if (z >= 71 && z <= 86) 
                p_sum_3 = p_sum_3 + conv_hldr[z];
            else if (z >= 87 && z <= 102) 
                p_sum_4 = p_sum_4 + conv_hldr[z];
            else if (z >= 103 && z <= 118)
                p_sum_5 = p_sum_5 + conv_hldr[z];
            else if (z >= 119 && z <= 137)
                p_sum_6 = p_sum_6 + conv_hldr[z];
        end 
    end
    
    // perform parrallel multiplication for scaled values
    always @(posedge clk) begin
        // create proper shifts for the valid
        valid_in_reg[0] <= valid_in;
        valid_in_reg[1] <= valid_in_reg[0];
        valid_in_reg[2] <= valid_in_reg[1];
        for (j = 0; j < `N; j = j + 1) begin
            if (j > 88) begin
                conv_hldr[j] <= valid_hldr[j] ? coef[176 - j] * data_hldr[j] : 0;
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
