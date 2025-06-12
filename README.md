# ComputerArchitecture_Pipeline

The project builds on earlier work by implementing a **5-stage pipelined processor**, handling real-world instruction sets, pipeline hazards, and performance considerations.

---

## Objective

Refactor the existing datapath into a **5-stage pipelined architecture** with full instruction support and hazard handling. The pipeline consists of:

- **IF** – Instruction Fetch  
- **ID** – Instruction Decode  
- **EX** – Execute  
- **MEM** – Memory Operation  
- **WB** – Write Back

---

## Key Features

- Hazard detection and handling (data hazards, control hazards)
- Data forwarding and stalling logic
- Heavy instructions (like `mul`) are stretched across 5 cycles
- Support for conditional branches (`BEQ`, `JNZ`, etc.)
- Register forwarding from `EX` and `MEM` stages to `ID`
- Custom comparator module to check instruction correctness and pipeline behavior

---

## Test Program

The pipeline is tested using realistic MIPS assembly sequences, including:

- Multiplication and accumulation loops
- Branch-dependent loops (`JNZ`, `BEQ`)
- Stack and recursion logic (`jal`, `jr`)
- ASCII string manipulation in `toupper`

A sample program includes this logic:

```asm
toupper:
  lb $t2, 0($a0)
  beq $t2, $0, exit
  blt $t2, 97, next
  bgt $t2, 122, next
  sub $t2, $t2, 32
  sb $t2, 0($a0)
next:
  addi $a0, $a0, 1
  j toupper
exit:
  jr $ra
