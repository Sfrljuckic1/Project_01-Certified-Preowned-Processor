# Project_01-Certified-Preowned-Processor

**Project Guidelines**

This project adds to the ALU project in both functionality and complexity, and puts your understanding of Chapter 4.4 to the test. Gain more experience and understanding in Verilog.

Tasks

  1. (100 pts) At a minimum, implement the single-cycle implementation as described in 4.4, handling the subset of instructions (ALU funcs, lw/sw, beq, jump) mentioned.
  2. (20 pts Extra) Implement 5-stage pipelining as shown in 4.7.



**Contributors**

  * Jose Pavon
  * David Bohon
  * Selim Frljuckic
  
  
  
**Learned Notes/Features**
  
* For the MIPS 32-bit single cycle, we built a simple implementation using the datapath of the previous section 4.3 and added a simple control function. This simple implementation covers load word (lw), store word (sw), branch equal (beq), and the arithmetic-logical instructions add, sub, OR,, and set on less than. We then enhanced the design to include a jump instruction (j). 

* In order to run: place the instruction's 32 bit value in the instrmem file in the order you'd like them to execute (This website has a converter: https://www.eg.bucknell.edu/~csci320/mips_web/). After this do: _$ iverilog -o tb.vvp tb.v_, _$vvp tb.vvp_, _$gtkwave dump.vcd_ in order to view the waves.

* The single cycle executes from the testbench file into the top file. Instr mem is then accessed to get the first instruction and then the datapath is followed according to how an actual CPU evaluates instructions. 

* Understanding how a single cycle cpu works was pretty easy but once again relearning how Verilog works was the toughest part of the project.

* Setting the different control signals is actually really easy since you just need to know what instruction is being run based on the opcode and then assert the signals accordingly. 

* This project gave us a new appreciation for the parts that are the foundation of our computer. Once you strip it down, each of the parts are very simple yet complex enough to support any and all algorithms/programs someone may want to make.
