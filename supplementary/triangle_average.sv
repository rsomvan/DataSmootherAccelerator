`define ADC_BITS 12
`define NUM_SAMPLES 3

module averager(
    input clk,
    input reset,
    input logic [$clog2(`ADC_BITS) - 1:0] ADC_reading,
    input logic ADC_en,
    output logic [$clog2(`ADC_BITS)  1:0] smooth_out,
    output new_out
);



logic [`NUM_SAMPLES-1:0][$clog2(`ADC_BITS)-1:0] holder;
logic [$clog2(`ADC_BITS):0] smooth_out;

always @(posedge clk) begin
    if (reset) begin
        holder <= 0;
        smooth_en <= 0;
    end
    else begin
        if (ADC_en) begin
            new_out <= 1;
            // shift values over
            for (int i = 0; i < `NUM_SAMPLES-1; i = i + 1) begin
                holder[i] <= holder[i + 1];
            end
            holder[i] <= ADC_reading;
        end
        else begin
            new_out <= 0;
        end
    end
end

// index NUM_SAMPLES and NUM_SAMPLES.

// generate the conversion 
assign smooth_out = (holder[0]/2 + holder[1] + holder[2]/2)/2;