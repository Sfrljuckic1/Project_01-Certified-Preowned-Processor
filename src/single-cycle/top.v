`include "instrmem.v"
`include "mips.v"
`include "datamem.v"
module top (
	input clk, // clock
	input reset  // synchronous reset active high
);

	wire [31:0] instr_mem_data ;
	wire [31:0] instr_mem_addr ;
	wire [31:0] data_mem_rdata;
	wire        data_mem_we   ;
	wire [31:0] data_mem_addr ;
	wire [31:0] data_mem_wdata;

	instrmem instrmem_inst (
		.addr(instr_mem_addr[7:2]),
		.data(instr_mem_data     )
	);

	mips mips_inst (
		.clk       (clk       ),
		.rst       (reset     ),
		.instr_mem_data (instr_mem_data ),
		.instr_mem_addr (instr_mem_addr ),
		.data_mem_rdata(data_mem_rdata),
		.data_mem_we   (data_mem_we   ),
		.data_mem_addr (data_mem_addr ),
		.data_mem_wdata(data_mem_wdata)
	);

	datamem datamem_inst (
		.clk  (clk       ),
		.we   (data_mem_we   ),
		.addr (data_mem_addr ),
		.wdata(data_mem_wdata),
		.rdata(data_mem_rdata)
	);

endmodule