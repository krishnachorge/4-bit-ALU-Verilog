#🔷 4-Bit ALU using Verilog HDL

A structural Verilog HDL implementation of a **4-bit Arithmetic Logic Unit (ALU)** designed and simulated using **AMD/Xilinx Vivado**.

The ALU performs arithmetic and logical operations on two 4-bit inputs and uses a 4-bit selection signal to choose the required operation.

---

##📌 Project Overview

The 4-bit ALU accepts:

- `A[3:0]` – 4-bit input A
- `B[3:0]` – 4-bit input B
- `SEL[3:0]` – 4-bit operation selection signal

and produces:

- `Y[3:0]` – 4-bit ALU output

The design is built using smaller reusable modules such as half adders, full adders, half subtractors, full subtractors and basic logic gates.

---

## ⚙️ Operations

| SEL | Operation |
|-----|-----------|
| `0000` | ADD |
| `0001` | SUB |
| `0010` | AND |
| `0011` | NAND |
| `0100` | OR |
| `0101` | NOR |
| `0110` | XOR |
| `0111` | XNOR |
| `1000` | NOT |
| `1001–1111` | Reserved / Future Operations |

---

##🧩 Block-Level Design

The ALU generates the result of each operation using separate hardware blocks.

```text
                 A[3:0] ─────────────┬─────────────────────────────┐
                                     │                             │
                 B[3:0] ─────────────┼─────────────────────────────┤
                                     │                             │
                              ┌──────▼──────┐                      │
                              │ Arithmetic  │                      │
                              │   Units     │                      │
                              └──────┬──────┘                      │
                                     │                             │
                              ADD / SUB Results                   │
                                                                   │
                              ┌──────────────┐                      │
                              │ Logic Units  │                      │
                              │ AND/NAND     │                      │
                              │ OR/NOR       │                      │
                              │ XOR/XNOR     │                      │
                              │ NOT          │                      │
                              └──────┬───────┘                      │
                                     │                             │
                                     └──────────┬──────────────────┘
                                                │
                                      ┌─────────▼─────────┐
                 SEL[3:0] ──────────►│  Selection Logic  │
                                      │     16:1 MUX       │
                                      └─────────┬─────────┘
                                                │
                                             Y[3:0]




## 📁 Project Structure
four-bit-alu/
│
├── RTL/
│   ├── half_adder.v
│   ├── half_subtractor.v
│   ├── full_adder_using_half_adders.v
│   ├── full_subtractor_using_half_subtractors.v
│   ├── four_bit_adder.v
│   ├── four_bit_subtractor.v
│   ├── four_bit_and.v
│   ├── four_bit_nand.v
│   ├── four_bit_or.v
│   ├── four_bit_nor.v
│   ├── four_bit_xor.v
│   ├── four_bit_xnor.v
│   ├── FOUR_BIT_NOT.v
│   └── FOUR_BIT_ALU.v
│
├── SIMULATION/
│   └── four_bit_alu_tb.v
│
└── README.md


## 🏗️ Design Approach
The project follows a modular and hierarchical design approach.



### ➕ Arithmetic Section
The addition circuit is constructed using:
Half Adder
    ↓
Full Adder
    ↓
4-Bit Ripple Carry Adder

The subtraction circuit follows:
Half Subtractor
    ↓
Full Subtractor
    ↓
4-Bit Ripple Borrow Subtractor



### 🔢 Logic Section
Separate 4-bit modules are used for:
- AND
- NAND
- OR
- NOR
- XOR
- XNOR
- NOT

### 🎛️ Selection Logic
All operation results are generated internally and the SEL[3:0] signal selects which result appears at the ALU output.
A 16-to-1 selection structure is used so that additional operations can be added in the future.


## 💻 Verilog Design Style
The arithmetic and logic blocks are implemented mainly using structural/gate-level Verilog.

The selection section uses combinational RTL using:
always @(*)

and:
case (SEL)

This allows the operation selected by SEL to be routed to the output.



## 🧪 Simulation
The complete ALU was functionally simulated in Vivado Behavioral Simulation.

The testbench applies different values of:
A
B
SEL

and observes:
Y

The simulation verifies the implemented arithmetic and logical operations.



## 🛠️ Tools Used
- Verilog HDL
- AMD/Xilinx Vivado ML Edition
- Vivado Behavioral Simulation
- RTL Synthesis
- FPGA Implementation
- GitHub



## 📚 Learning Outcomes
Through this project, the following concepts were practiced:
- Gate-level Verilog
- Structural modeling
- Module instantiation
- Hierarchical digital design
- Half adder and full adder
- Ripple carry addition
- Half subtractor and full subtractor
- Ripple borrow subtraction
- Combinational logic
- Multiplexer-based selection
- Verilog testbench creation
- Behavioral simulation
- RTL synthesis
- FPGA implementation



## 🚀 Future Improvements
Possible future improvements include:
- Addition of more ALU operations
- Status flags such as Carry, Borrow, Zero and Overflow
- 8-bit and 16-bit versions
- Improved verification using SystemVerilog
- FPGA board implementation
- Integration with a larger processor or digital system



## 👨‍💻 Author
Krishna Rajendra Chorge
Electronics & Computer Engineering




## 📄 License
This project is created for educational and learning purposes.


