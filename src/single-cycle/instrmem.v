module instrmem (
	input  [ 5:0] addr,
	output [31:0] data
);

	reg [31:0] data;

	//Holds the instructions to be run here. Supports up to 32 instructions.
	always @(addr) begin
		case(addr)
			00 : data = 32'h20020005;
			01 : data = 32'h20070003;
			02 : data = 32'h2003000c;
			03 : data = 32'h00e22025;
			04 : data = 32'h00642824;
			05 : data = 32'h00a42820;
			06 : data = 32'h10a70008;
			07 : data = 32'h0064302a;
			08 : data = 32'h10c00001;
			09 : data = 32'h2005000a;
			10 : data = 32'h00e2302a;
			11 : data = 32'h00c53820;
			12 : data = 32'h00e23822;
			13 : data = 32'h0800000f;
			14 : data = 32'h8c070000;
			15 : data = 32'hac470047;
			16 : data = 32'h00000000;
			17 : data = 32'h00000000;
			18 : data = 32'h00000000;
			19 : data = 32'h00000000;
			20 : data = 32'h00000000;
			21 : data = 32'h00000000;
			22 : data = 32'h00000000;
			23 : data = 32'h00000000;
			24 : data = 32'h00000000;
			25 : data = 32'h00000000;
			26 : data = 32'h00000000;
			27 : data = 32'h00000000;
			28 : data = 32'h00000000;
			29 : data = 32'h00000000;
			30 : data = 32'h00000000;
			31 : data = 32'h00000000;
		endcase
	end

endmodule