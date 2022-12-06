module functions (
	input  [31:0] instr     ,
	output        branch    ,
	output        jump      ,
	output        mem_to_reg, // control signals V
	output        mem_write , // V
	output        reg_dst   , // V
	output        reg_write , // V
	output        alu_src //end control signals
);

	wire [5:0] opcode;
	assign opcode = instr[31:26]; //These bits of the 32-bit instruction hold the opcode Value

	wire [5:0] func_code;
	assign func_code = instr[5:0];

	//Decides what the instruction wanting to be executed is and sets the control signals accordingly  
	wire addition = ((opcode == 6'h00) & (func_code == 6'h20));
	wire subtract = ((opcode == 6'h00) & (func_code == 6'h22));
	wire and_op = ((opcode == 6'h00) & (func_code == 6'h24));
	wire or_op  = ((opcode == 6'h00) & (func_code == 6'h25));
	wire set_less_than = ((opcode == 6'h00) & (func_code == 6'h2A));

	// store/load word
	wire loadword = (opcode == 6'h23);
	wire storeword = (opcode == 6'h2B);

	wire branchequals  = (opcode == 6'h04);
	wire imm_add = (opcode == 6'h08);
	wire jump_op    = (opcode == 6'h02);

	assign branch     = branchequals;
	assign jump       = jump_op;
	assign mem_to_reg = loadword;
	assign mem_write  = storeword;
	assign reg_dst    = addition | subtract | and_op | or_op | set_less_than;
	assign reg_write  = addition | subtract | and_op | or_op | set_less_than | imm_add | loadword;
	assign alu_src    = imm_add | loadword | storeword;

endmodule