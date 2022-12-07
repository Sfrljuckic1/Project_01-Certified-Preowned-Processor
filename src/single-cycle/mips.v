`include "controller.v"
`include "datapath.v"
module mips (
    input         clk       ,
    input         rst       ,
    // instruction memory
    input  [31:0] instr_mem_data ,
    output [31:0] instr_mem_addr ,
    // data memory
    input  [31:0] data_mem_rdata,
    output        data_mem_we   ,
    output [31:0] data_mem_addr ,
    output [31:0] data_mem_wdata
);

    wire [2:0] alucontrol;
    wire       alu_src   ;
    wire       branch    ;
    wire       jump      ;
    wire       mem_to_reg;
    wire       reg_dst   ;
    wire       reg_write ;

    controller controller_inst (
        .instr     (instr_mem_data ),
        .alucontrol(alucontrol),
        .alu_src   (alu_src   ),
        .branch    (branch    ),
        .jump      (jump      ),
        .mem_to_reg(mem_to_reg),
        .mem_write (data_mem_we   ),
        .reg_dst   (reg_dst   ),
        .reg_write (reg_write )
    );

    datapath datapath_inst (
        .clk       (clk       ),
        .rst       (rst       ),
        .alucontrol(alucontrol),
        .alu_src   (alu_src   ),
        .branch    (branch    ),
        .jump      (jump      ),
        .mem_to_reg(mem_to_reg),
        .mem_write (data_mem_we   ),
        .reg_dst   (reg_dst   ),
        .reg_write (reg_write ),
        .instr     (instr_mem_data ),
        .pc        (instr_mem_addr ),
        .read_data (data_mem_rdata),
        .alu_result(data_mem_addr ),
        .write_data(data_mem_wdata)
    );

endmodule