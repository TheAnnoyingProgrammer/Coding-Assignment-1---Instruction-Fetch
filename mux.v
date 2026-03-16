module mux(
    input [31:0] a_true, b_false,
    input sel,
    output [31:0] y
);

    assign y = (sel) ? a_true : b_false;
    
endmodule 