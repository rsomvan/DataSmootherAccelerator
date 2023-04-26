`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2023 01:09:33 AM
// Design Name: 
// Module Name: top
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

`define DELAY_BITS 17
`define DELAY_NUM 100000

module top(
    input CLK,
    input vauxp6,
    input vauxn6,
    input vauxp7,
    input vauxn7,
    input vauxp15,
    input vauxn15,
    input vauxp14,
    input vauxn14,
    input vp_in,
    input vn_in,
    output reg [15:0] LED,
    output UART_TXD
    );

    //DELAY SIGNAL
    reg [`DELAY_BITS - 1:0] delay_cnt=0;
    
    // signals for UART
    wire        tready;
    wire        ready;
    wire        tstart;
    reg         start=0;
    wire [ 7:0] tbus;
    reg  [ 2:0] bcount=0;
    reg [31:0] uart_buf=0;
    
    // ADC Signals
    wire ADC_en;
    wire [15:0] ADC_data;
    wire ADC_ready;
    
    // smoother signals
    wire smooth_ready;
    wire [15:0] smooth_data;
    
    // Read Data in from ADC
    xadc_wiz_0  XLXI_7 (
        .daddr_in(7'h16), // XA1/AD6
        .dclk_in(CLK), 
        .den_in(ADC_en), 
        .di_in(0), 
        .dwe_in(0), 
        .busy_out(),                    
        .vauxp6(vauxp6),
        .vauxn6(vauxn6),
        .vauxp7(vauxp7),
        .vauxn7(vauxn7),
        .vauxp14(vauxp14),
        .vauxn14(vauxn14),
        .vauxp15(vauxp15),
        .vauxn15(vauxn15),
        .vn_in(vn_in), 
        .vp_in(vp_in), 
        .alarm_out(), 
        .do_out(ADC_data), 
        //.reset_in(),
        .eoc_out(ADC_en),
        .channel_out(),
        .drdy_out(ADC_ready)
    );

    // LED DEBUG:
    always @(posedge(CLK)) begin            
        if(ADC_ready == 1'b1) begin
            case (ADC_data[15:12])
            1:  LED <= 16'b11;
            2:  LED <= 16'b111;
            3:  LED <= 16'b1111;
            4:  LED <= 16'b11111;
            5:  LED <= 16'b111111;
            6:  LED <= 16'b1111111; 
            7:  LED <= 16'b11111111;
            8:  LED <= 16'b1111111111;
            10: LED <= 16'b11111111111;
            11: LED <= 16'b111111111111;
            12: LED <= 16'b1111111111111;
            13: LED <= 16'b11111111111111;
            14: LED <= 16'b111111111111111;
            15: LED <= 16'b1111111111111111;                        
            default: LED <= 16'b1; 
            endcase
        end
    end
    
    // DELAY Loop
    always @(posedge CLK) begin
        if (delay_cnt > `DELAY_NUM) begin
            if (ADC_ready) begin
                delay_cnt <= 0;
            end
        end
        else begin
            delay_cnt <= delay_cnt + 1;
        end
    end
    
    
     //instantiate data smoother
    sinc_smoother ss0 (
        .clk(CLK),
        .valid_in(ADC_ready && (delay_cnt > `DELAY_NUM)),
        .data_in(ADC_data),
        .valid_out(smooth_ready),
        .data_out(smooth_data)
    );
    
    
    // prepare the uart buffer for transmission
    always @(posedge CLK) begin
        if (smooth_ready) begin
            uart_buf <= {16'h0, smooth_data};
            start <= 1;
            bcount <= 2;
        end
        else begin
            uart_buf <= 0;
            start <= 0;
            bcount <= 0;
        end
    end
    
    
    // send the ascii output to computer over UART
    uart_buf_con tx_con (
        .clk    (CLK   ),
        .bcount (bcount),
        .tbuf   (uart_buf  ),  
        .start  (start ), 
        .ready  (ready ), 
        .tstart (tstart),
        .tready (tready),
        .tbus   (tbus  )
    );
    
    uart_tx get_tx (
        .clk    (CLK),
        .start  (tstart),
        .tbus   (tbus),
        .tx     (UART_TXD),
        .ready  (tready)
    );
  

endmodule
