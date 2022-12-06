# Project_01-Certified-Preowned-Processor
This project adds to the ALU project in both functionality and complexity, and puts your understanding of Chapter 4.4 to the test. Gain more experience and understanding in Verilog.

Tasks

  1. (100 pts) At a minimum, implement the single-cycle implementation as described in 4.4, handling the subset of instructions (ALU funcs, lw/sw, beq, jump) mentioned.
  2. (20 pts) Implement 5-stage pipelining as shown in 4.7.

Contributors

  Jose Pavon
  David Bohon
  Selim Frljuckic
  
Learned Notes/Features
  
- For the MIPS 32-bit single cycle, we built a simple implementation using the datapath of the previous section 4.3 and added a simple control function. This simple implementation covers load word (lw), store word (sw), branch equal (beq), and the arithmetic-logical instructions add, sub, OR,, and set on less than. We then enhanced the design to include a jump instruction (j). 

-The single cycle executes in this order: Top, Imem, Mips, controller, maindec-aludec, mips, datapath, regfile-alu-sign_extend, demem. So in order to get the 5 stage pipelining to work, a seperate file must be made for each register (IFID, IDEX, EXMEM, and MEMWB) and the appropiate info must be passed in. IFID goes after the imem phase, IDEX before the regfile or alu stage, EXMEM after the ALU stage and MEMWB is after dmem.
