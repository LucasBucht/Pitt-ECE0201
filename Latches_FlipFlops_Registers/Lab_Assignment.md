# Latches, Flip-Flops and Registers

### Laboratory Assignment #

### ECE 201: Digital Circuits and Systems

## Learning Objectives

After completing this lab, we will be able to:

- Explain the fundamental logic circuits used in construction of computer memories,
- Implement sequential logic circuits using an HDL, and
- Use sequential logic circuits to store and recall information.

## Equipment and Materials

- DE10-Lite Board
- Intel Quartus Prime Design Software v18.

## Pre-Lab Assignment

Prior to attending your assigned laboratory section, please complete the following tasks:

- Watch the first half of the following video that explains how basic computer memory elements are con-
    structed using logic gates: Registers and RAM. Please note, for this assignment you only need to watch up
    until the 5:20 mark. You will watch the remainder of the video for a subsequent lab.
- Sketch a schematic for the circuit that you will implement in Part V. Make sure to label all of the inputs and
    outputs for each component.


## Part I: Reset-Set (RS) Latch Circuit

Intel FPGAs include flip-flops that are available for implementing a user’s circuit. We will show how to make use
of these flip-flops in Part IV of this exercise. But first we will show how storage elements can be created in an
FPGA without using its dedicated flip-flops.

So that the design tool does not optimize away the circuit, we preserve the internal signals in the circuit by including
 a compiler directive in the code. In Figure 2, the directive KEEP is included by using a VHDL ATTRIBUTE
statement to instruct the Quartus compiler to use separate logic elements for each of the signals R<sub>g</sub>, S<sub>g</sub>, Q<sub>a</sub>, and Q<sub>b</sub>.

Please carry out the following steps:

1. Create a new Quartus project for your DE-series board.
2. Generate a VHDL file with the code in Figure 2 and include it in the project.
3. Compile the code.
4. Simulate the behavior of your VHDL code by using ModelSim and a do file. 
    You may need to initialize signals in your VHDL to get proper
    behavior.

## Part II: Gated D Latch

Please carry out the following steps:

1. Create a new Quartus project. Generate a VHDL file for the gated D
    latch. Use the KEEP directive to ensure that separate logic elements are used to implement the signals R,
    S<sub>g</sub>, R<sub>g</sub>, Q<sub>a</sub>, and Q<sub>b</sub>.
2. Compile your project.
3. Verify that the latch works properly for all input conditions by using functional simulation. Examine the
    timing characteristics of the circuit by using timing simulation.
4. Create a new Quartus project which will be used for implementation of the gated D latch on your DE-series
    board. This project should consist of a top-level module that contains the appropriate input and output ports
    (pins) for your board. Instantiate your latch in this top-level module. Use switch SW<sub>0</sub> to drive the D input
    of the latch. Use SW<sub>1</sub> as the Clk input. Connect the Q output to LED<sub>0</sub>.
5. Include the required pin assignments, and then compile your project and program the compiled circuit onto
    your DE-series board.
6. Test the functionality of your circuit by toggling the D and Clk switches and observing the Q output

## Part III: D Flip-Flop

Please carry out the following steps:
1. Create a new Quartus project. Generate a VHDL file that instantiates two copies of your gated D latch
    module from Part II to implement the D flip-flop.
2. Include in your project the appropriate input and output ports for your DE-series board. Use switch SW<sub>0</sub> to
    drive the D input of the flip-flop. Use SW<sub>1</sub> as the Clock input. Connect the Q output to LED<sub>0</sub>.
3. Include the required pin assignments and then compile your project.
4. Use simulation to verify correct operation.
5. Program the circuit onto your DE-series board.
6. Test its functionality by toggling the D and Clock switches and observing the Q output.
7. Demonstrate your VHDL code and simulation result to an instructor or TA for your Part III check-off.

## Part IV: Storage Element Comparison

Please carry out the following steps:

1. Create a new Quartus project.
2. Write a VHDL file that instantiates the three storage elements.
3. Compile your code.
4. Simulate your design using ModelSim. Use a do file to force the inputs D and Clock. 
    Use functional simulation to obtain the three output signals. Observe the different behavior of the
    three storage elements.
5. Demonstrate your VHDL code and simulation result to an instructor or TA for your Part IV check-off.
6. For five extra credit points, map D and Clock to the switches, as before, and Q<sub>a</sub>,Q<sub>b</sub>, and Q<sub>c</sub> to LEDs, then
    demonstrate the waveform behavior on your board.


