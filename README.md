# Day 58: 1024:1 Multiplexer Using 8:1 Multiplexers

## 📌 Project Overview
This project implements a **1024:1 Multiplexer using 8:1 Multiplexer modules** with Verilog HDL. The design demonstrates hierarchical modeling by combining smaller multiplexers to build a larger multiplexer.

## 🎯 Aim
To design and simulate a 1024:1 MUX using 8:1 MUX modules and verify its operation using a testbench in Xilinx Vivado.

## 📖 Theory
A multiplexer (MUX) is a combinational circuit that selects one input from multiple inputs and forwards it to a single output based on the select lines.

A 1024:1 MUX has:
- **1024 data inputs**
- **10 select lines**, because 2¹⁰ = 1024
- **1 output**

An 8:1 MUX has 8 data inputs and 3 select lines. Multiple 8:1 MUX modules can be connected in stages to construct a larger multiplexer.

## ⚙️ Design Concept
The 1024 inputs are selected through multiple stages of 8:1 multiplexers.

- **Stage 1:** 128 MUX modules select from the 1024 input signals.
- **Stage 2:** 16 MUX modules select from the 128 outputs of Stage 1.
- **Stage 3:** 2 MUX modules select from the 16 outputs of Stage 2.
- **Stage 4:** A final selection stage combines the remaining outputs.

**Note:** Because 1024 is not an exact power of 8, the final stages require careful handling. A practical implementation can use a mixed hierarchy of 8:1 and smaller multiplexers, or use a 1024:1 top-level design with the selection logic arranged appropriately.

## 🛠️ Tools Used
- Verilog HDL
- Xilinx Vivado
- Verilog testbench
- Behavioral simulation

## 🧪 Verification
The testbench applies different select-line values to verify that the output corresponds to the selected input.

## 📊 Expected Result
The simulation should confirm that the selected input is correctly transferred to the output for the tested select-line values.

## 📚 Key Learning Outcomes
- Understanding multiplexer operation
- Designing large MUX circuits using smaller modules
- Learning hierarchical Verilog design
- Understanding select-line requirements
- Verifying RTL designs using simulation in Vivado

## 🏁 Conclusion
The project demonstrates how hierarchical multiplexer design can be used to implement a large data-selection circuit. The design and testbench help verify the selection behavior of the 1024:1 MUX.

## 🔖 Tags
`Verilog HDL` `VLSI` `Digital Design` `Multiplexer` `RTL Design` `Xilinx Vivado` `FPGA`
