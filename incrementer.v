module incrementer(
    input   [31:0]  inc_in,
    output  [31:0]  inc_out
);

    assign inc_out = inc_in + 1;    
    
endmodule 