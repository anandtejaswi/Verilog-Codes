# Verilog Practical Report – README

This document contains summaries of all Verilog practicals  

---

## 1. Basic Gates

### Theory
Basic logic gates such as AND, OR, NOT, NAND, NOR, XOR, and XNOR perform fundamental Boolean operations. These are the foundation for all combinational and sequential digital circuits.

### Vivado Dashboard
![Basic Gates Dashboard](ImageAssets/basic_gate/2.png)

### Waveform
![Basic Gates Waveform](ImageAssets/basic_gate/1.png)

---



## 2. Multiplexers (2x1 & 4x1)

### Theory
A multiplexer (MUX) selects a single output from multiple inputs using select lines.  
- A **2x1 MUX** chooses between two inputs using one select line.  
- A **4x1 MUX** selects one of four inputs using two select lines.  
MUXes are widely used for data routing and control operations.


### Waveform
![Mux Waveform](ImageAssets/mux/Screenshot%202025-11-19%20200647.png)

---

## 3. Priority Encoder and Decoder

### Theory
A **priority encoder** outputs the binary value of the highest-priority active input.  
A **decoder** converts a binary input into a one-hot output.  
These components are essential for communication systems, interrupt handling, and address decoding.

### Vivado Dashboard
![Priority Encoder Decoder Dashboard](ImageAssets/priority_encod_decod/Screenshot%202025-11-19%20201803.png)

### Waveform
![Priority Encoder Decoder Waveform](ImageAssets/priority_encod_decod/Screenshot%202025-11-19%20201746.png)

---

## 4. Half and Full – Adder & Subtractor

### Theory
Arithmetic operations begin with half and full adders/subtractors:  
- **Half Adder/Subtractor** operate on two bits.  
- **Full Adder/Subtractor** include carry/borrow handling for multi-bit arithmetic.  
These circuits are core components of ALUs and digital processing systems.

### Vivado Dashboard
![Adder Subtractor Dashboard](ImageAssets/adder_subtractor/1.png)

### Waveform
![Adder Subtractor Waveform](ImageAssets/adder_subtractor/2.png)

---

## 5. Universal Adder and Subtractor

### Theory
A universal adder–subtractor performs both addition and subtraction using a mode control input. Subtraction is implemented using the 2’s complement method, enabling efficient arithmetic inside processors and ALUs.

### Vivado Dashboard
![Universal Adder Subtractor Dashboard](ImageAssets/univ_add_sub/Screenshot%202025-11-19%20203044.png)

### Waveform
![Universal Adder Subtractor Waveform](ImageAssets/univ_add_sub/Screenshot%202025-11-19%20203108.png)

---

## 6. SR Latch and SR Flip-Flop

### Theory
An **SR latch** is a level-sensitive bistable device used for simple memory storage.  
The **SR flip-flop** is an edge-triggered version, storing data only on a clock transition.  
Both are fundamental sequential elements.

### Vivado Dashboard
![SR Latch Flip Flop Dashboard](ImageAssets/sr_latch_ff/Screenshot%202025-11-19%20203712.png)

### Waveform
![SR Latch Flip Flop Waveform](ImageAssets/sr_latch_ff/Screenshot%202025-11-19%20203737.png)

---

## 7. D and JK Flip-Flop

### Theory
A **D flip-flop** stores the input value on every clock edge.  
A **JK flip-flop** extends functionality with set, reset, toggle, and hold states.  
These are widely used in counters, registers, and sequential logic design.

### Vivado Dashboard
![D JK Flip Flop Dashboard](ImageAssets/d_jk_ff/Screenshot%202025-11-19%20204222.png)

### Waveform
![D JK Flip Flop Waveform](ImageAssets/d_jk_ff/Screenshot%202025-11-19%20204247.png)

---

## 8. Counter

### Theory
Counters increment or decrement their state on each clock pulse.  
They can be synchronous or asynchronous and are used in timers, event counters, digital clocks, and state machines.

### Vivado Dashboard
![Counter Dashboard](ImageAssets/counter/counter.png)


---

## Thank You
Submitted By: Tejaswi Anand (CSE:A)

---
