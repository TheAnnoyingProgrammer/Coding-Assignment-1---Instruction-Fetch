module ifIdLatch (
    input      [31:0]  ADR_in, IM_in,
    output reg [31:0]  ADR_out, IM_out,
    input              clk, rst
);

    always @(posedge clk) begin 
        ADR_out <= ADR_in;
        IM_out <= IM_in;    
    end
    
endmodule