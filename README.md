# RTL Fundamentals
A collection of basic Verilog RTL design and simulation exercises created while reviewing digital design fundamentals.
The goal of this repository is to strengthen my understanding of RTL design, Verilog syntax, testbench development, simulation, and waveform.

## Tools

- Verilog
- Icarus Verilog
- GTKWave
- Git
- Ubuntu Linux

## Projects
### 1. 2-to-1 Multiplexer
A combinational circuit that selects one of two input signals based on a select signal.
Folder: `mux2to1/`

Topics practiced:
- Combinational logic
- Continuous assignment
- Conditional operator
- Verilog testbench
- Waveform analysis
---
### 2. 4-bit Synchronous Counter
A 4-bit counter that increments on each positive clock edge and uses a synchronous reset.
Folder: `counter4bit/`

Topics practiced:
- Sequential logic
- Clock and positive edge
- Synchronous reset
- Non-blocking assignment
- Counter overflow
---
### 3. Simple Moore FSM
A three-state finite state machine:
IDLE -> RUN -> DONE -> IDLE
Folder: `simple_fsm/`

Topics practiced:
- Finite State Machine
- State register
- Next-state logic
- Output logic
- Moore FSM
- Combinational and sequential logic
---
### 4. PWM Generator
A basic 4-bit PWM generator using a counter and comparator.
The testbench verifies approximately:
- 25% duty cycle
- 50% duty cycle
- 75% duty cycle
Folder: `pwm_generator/`

Topics practiced:
- PWM fundamentals
- Counter-based PWM generation
- Comparator logic
- Duty cycle
- RTL simulation
## Simulation Flow
Each exercise follows the same basic workflow:
RTL Design > Testbench > Icarus Verilog Compilation > Simulation > Simulation > VCD Wave
