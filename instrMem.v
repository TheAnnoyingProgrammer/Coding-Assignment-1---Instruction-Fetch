module instrMem (
    input  [31:0] im_in,
    input         clk,
    output reg [31:0] im_out
);

reg [31:0] instruction [0:9];

initial begin
    instruction[0] = 32'hA00000AA;
    instruction[1] = 32'h10000011;
    instruction[2] = 32'h20000022;
    instruction[3] = 32'h30000033;
    instruction[4] = 32'h40000044;
    instruction[5] = 32'h50000055;
    instruction[6] = 32'h60000066;
    instruction[7] = 32'h70000077;
    instruction[8] = 32'h80000088;
    instruction[9] = 32'h90000099;
end

always @(posedge clk) begin
    if (im_in[3:0] < 10)
        im_out <= instruction[im_in[3:0]];
    else
        im_out <= 32'b0;
end

endmodule