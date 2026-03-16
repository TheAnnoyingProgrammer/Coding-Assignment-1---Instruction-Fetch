module pc (
    input      [31:0]  pc_in,
    output reg [31:0]  pc_out,
    input              clk, rst
);

    always @(posedge clk or posedge rst) begin
        if(rst) 
            pc_out <= 0;
        else 
            pc_out <= pc_in;    
    end
    
endmodule