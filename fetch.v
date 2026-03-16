module fetch(
    input           clk, rst, ex_mem_pc_src,
    input   [31:0]  ex_mem_npc,
    output  [31:0]  if_id_instr, if_id_npc
);

    wire [31:0] pc_out, pc_mux, next_pc, instr_data;

    mux m0(
        .y(pc_mux),
        .a_true(ex_mem_npc),
        .b_false(next_pc),
        .sel(ex_mem_pc_src)
    );

    pc pc0(
        .clk(clk),
        .rst(rst),
        .pc_in(pc_mux),
        .pc_out(pc_out)
    );

    incrementer in0(
        .inc_in(pc_out),
        .inc_out(next_pc)
    );

    instrMem inMem0(
        .im_in(pc_out),
        .im_out(instr_data),
        .clk(clk)
    );

    ifIdLatch ifIdLatch0(
        .clk(clk),
        .rst(rst),
        .ADR_in(next_pc),
        .IM_in(instr_data),
        .ADR_out(if_id_npc),
        .IM_out(if_id_instr)
    );

endmodule