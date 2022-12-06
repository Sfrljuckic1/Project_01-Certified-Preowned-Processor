`include "functions.v"
`include "controlcodes.v"
module controller (
	input  [31:0] instr     ,
	// other side
	output        branch    ,
	output        jump      ,
	output        mem_to_reg,
	output        mem_write ,
	output        reg_dst   ,
	output        reg_write ,
	// alu side
	output [ 2:0] alucontrol,
	output        alu_src
);

	functions functions_inst (
		.instr     (instr     ),
		.branch    (branch    ),
		.jump      (jump      ),
		.mem_to_reg(mem_to_reg),
		.mem_write (mem_write ),
		.reg_dst   (reg_dst   ),
		.reg_write (reg_write ),
		.alu_src   (alu_src   )
	);

	controlcodes controlcodes_inst (
		.instr     (instr     ),
		.alucontrol(alucontrol)
	);

endmodule