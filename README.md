# DDCO Project: Verilog Counters

This repository contains Verilog implementations of 3-bit counters (up counter and down counter) along with their testbenches.
A PDF with the expected results is attached within the repo.

## Files Overview

- `counter.v`: Implementation of a 3-bit up counter
- `downcounter.v`: Implementation of a 3-bit down counter
- `counter_tb.v`: Testbench for the up counter
- `downcountertb.v`: Testbench for the down counter

## Implementation Details

### Up Counter
The up counter increments by 1 on each clock cycle when reset is not active. It resets to 0 when the reset signal is asserted (active low).

### Down Counter
The down counter decrements by 1 on each clock cycle when reset is not active. It also resets to 0 when the reset signal is asserted (active low).

## How to Run the Code

### Prerequisites
- Install a Verilog simulator such as:
  - [Icarus Verilog](https://iverilog.icarus.com/) (open-source) - **this is where I have run my project**
  - [ModelSim](https://www.mentor.com/products/fpga/verification-simulation/modelsim/) (commercial, free student edition available)
  - [Xilinx Vivado](https://www.xilinx.com/products/design-tools/vivado.html) (if working with Xilinx FPGAs)

### Using Icarus Verilog

1. Compile the design and testbench:
   ```bash
   # For the up counter
   iverilog -o counter_sim counter.v counter_tb.v
   
   # For the down counter
   iverilog -o downcounter_sim downcounter.v downcountertb.v
   ```

2. Run the simulation:
   ```bash
   # For the up counter
   vvp counter_sim
   
   # For the down counter
   vvp downcounter_sim
   ```

3. View the waveforms (using GTKWave):
   ```bash
   # For the up counter
   gtkwave counter.vcd
   
   # For the down counter
   gtkwave downcounter.vcd
   ```

### Using ModelSim

1. Open ModelSim and create a new project
2. Add the design files and testbench files to the project
3. Compile the files
4. Start the simulation with the testbench as the top module
5. Run the simulation and observe the waveforms

### Using Xilinx Vivado

1. Create a new project in Vivado
2. Add the design files to the project
3. Set the top module as the counter or downcounter
4. Run simulation using the appropriate testbench
5. Analyze the results using the waveform viewer

## Expected Results

- **Up Counter**: The 3-bit counter will count from 0 to 7 repeatedly (000 → 001 → 010 → ... → 111 → 000)
- **Down Counter**: The 3-bit counter will count from 7 to 0 repeatedly (111 → 110 → 101 → ... → 000 → 111)

## License

This project is available for educational purposes.
