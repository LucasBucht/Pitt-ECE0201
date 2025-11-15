# Introduction to Field-Programmable Gate Arrays

### Laboratory Assignment #

### ECE 201: Digital Circuits and Systems

## Learning Objectives

After completing this lab, you will be able to:

- Explain the basics of field-programmable gate arrays (FPGAs),
- Describe logic circuits using a hardware description language and synthesize them on to an FPGA chip, and
- Connect simple input and output devices to an FPGA chip.

## Equipment and Materials

- DE10-Lite Board
- Intel Quartus Prime Design Software v15.1 or v18.

## Pre-Lab Assignment

Prior to attending your assigned laboratory section, please complete the following tasks:

- Browse through the datasheet for the FPGA you will use, the Intel Max 10 FPGA. Specifically, look at the
    chip floorplan shown inFigure 1and the programmable logic elements shown inFigure 5.
- Familiarize yourself with the user manual for the FPGA development board that houses your FPGA chip,
    the DE10-Lite.
- Review the VHDL code given in lecture.


## Part I: Quartus Setup and Tutorials

Refer to the Canvas page’s "Tutorials and Software Setup" section and follow the three-step tutorial to completion.
Understanding the process flow of creating, simulating, and programming an FPGA project on your board will be
critical for this lab and all subsequent labs.

## Part II: Rock-Paper-Scissors!

In this lab, you will see how your design of Rock-Paper-Scissors from Lab 5 can be implemented in VHDL on an
FPGA. The DE10-Lite board provide ten switches and lights, calledSW 9 − 0 andLEDR 9 − 0. The switches can be
used to provide inputs, and the lights can be used as output devices. Four switches on the board will be used to
provide the inputs A 1 , A 0 , B 1 , and B 0. Three LEDs will be used for WA, E, and WB.

The DE-series boards have hardwired connections between its FPGA chip and the switches and lights. To use the
switches and lights, it is necessary to include in your Quartus project the correct pin assignments. These are given
in your board’s user manual.

Figure 2 below provides a VHDL outline to use in this project. Copying and pasting VHDL from this PDF
is likely to cause issues. In order to avoid these issues and to help you remember the syntax, please retype it
manually.

Please perform the following steps to implement your Lab 5 Rock-Paper-Scissors circuit on your FPGA:

1. Create a new Quartus project for your circuit. Select the target chip that corresponds to your DE-series
    board (10M50DAF484C7G).
2. Create a VHDL entity for the code in Figure 2 and include it in your project.
3. Use combinational logic to program your circuit from Lab 5. Redraw your circuit in your submission
    template.
4. Compile your design.
5. Simulate your design using ModelSim. Create a do file that executes all possible input combinations.
6. Use the Pin Planner in Quartus to map pins on the FPGA to the inputs and outputs of your design.
7. Recompile your design.
8. Download the compiled circuit into the FPGA chip by using the Quartus Programmer tool. Test the func-
    tionality of the circuit by toggling the switches and observing the LEDs.
9. Demonstrate your FPGA programmed with Part II functionality to a TA for check-off.

## Part III: 4:1 MUX

Please follow the tutorials linked on Canvas. After completing the tutorial:

1. Create a new Quartus project named MUX4to1.
2. Create a new VHDL file and use combinational logic to create a 4-to-1 multiplexer as shown in Figure 3
    below. The VHDL has been started in Figure 4. Do not copy and paste as it creates issues with Quartus.
3. Compile your design.
4. Simulate your design in ModelSim. Use a do file and use force enough input combinations that you are
    satisfied with your design. You do not need to force all input combinations.
5. Use the Pin Planner in Quartus to map pins on the FPGA to the inputs and outputs of your design.
6. Recompile your design.
7. Download the compiled circuit into the FPGA chip by using the Quartus Programmer tool. Test the func-
    tionality of the circuit by toggling the switches and observing the LEDs.
8. Demonstrate your FPGA programmed with Part III functionality to a TA for check-off.
