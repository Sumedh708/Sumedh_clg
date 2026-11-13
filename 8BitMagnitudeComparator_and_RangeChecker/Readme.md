Dual-Mode 8-Bit Comparator & Range Checker

A configurable digital hardware implementation on a Spartan-7 FPGA (xc7s50csga324-1), featuring a dual-mode architecture that switches between a full 8-bit magnitude comparator and an 8-bit range checker using a push-button control input.

🚀 Features

Comparator Mode (push = 1):

Performs a full 8-bit magnitude comparison between an input value and a boundary bus.

Outputs Greater (LD[0]), Equal (LD[1]), and Less (LD[2]).

Range Checker Mode (push = 0):

Evaluates whether the 8-bit value falls strictly between a 4-bit minimum and 4-bit maximum threshold specified within the boundary bus (Upper nibble: Min, Lower nibble: Max).

Indicated via LD[3].

Hierarchical Design: Built using structural Verilog primitives, 1-bit comparator blocks, and generate loops.

📂 Project Structure

prj.v - Top-level module integrating the comparator and range checker logic with mode selection.

Comparator_8bit.v - Hierarchical 8-bit comparator constructed from 1-bit comparator units using a genvar loop.

RangeChecker.v - Range checking module evaluating upper and lower nibbles.

prj_tb.v - Testbench for simulation verification across multiple test vectors.

constraints.xdc - Physical pin mapping and LVCMOS33 I/O standards for the Spartan-7 FPGA board.

🛠️ Requirements & Tools

FPGA Board: Spartan-7 (xc7s50csga324-1)

Synthesis & Simulation Tool: Xilinx Vivado Design Suite

👨‍💻 Author

Name: Sumedh

USN: NN25ECE184

Branch & Section: ECE D Section

Contact: sumedhmallya@gmail.com
