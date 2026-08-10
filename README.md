Priority Encoder

Description

A priority encoder is a combinational digital circuit that converts multiple input signals into a binary code based on the highest-priority active input.

In this project, a 4-input priority encoder is designed using Verilog HDL. The inputs are "D[3:0]", where "D[3]" has the highest priority and "D[0]" has the lowest priority.

Features

- 4 input lines
- 2 output lines
- Priority-based encoding
- Valid output to indicate an active input
- Verilog HDL implementation
- Includes testbench and simulation output

Priority Order

"D[3] > D[2] > D[1] > D[0]"

Input| Output Y| Valid
0000| 00| 0
0001| 00| 1
0010| 01| 1
0011| 01| 1
0100| 10| 1
0101| 10| 1
0111| 10| 1
1000| 11| 1
1010| 11| 1
1111| 11| 1

When more than one input is HIGH, the encoder selects the input with the highest priority.

Files

- "priority_encoder.v" – Verilog design code
- "priority_encoder_tb.v" – Testbench
- "simulation_output.txt" – Simulation results
- "README.md" – Project documentation

Tools Used

- Verilog HDL
- Icarus Verilog / ModelSim / Vivado
- GTKWave (optional for waveform viewing)
- GitHub

Working Principle

The circuit checks the inputs from "D[3]" to "D[0]". The first HIGH input found is considered the highest-priority input, and its binary position is produced at the output "Y".

The "valid" signal becomes HIGH whenever at least one input is active.

Conclusion

The 4-input priority encoder was successfully designed and verified using Verilog HDL. The testbench confirms that the highest-priority active input is correctly encoded into a 2-bit binary output.

author spandana 

