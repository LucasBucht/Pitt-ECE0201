# Logic Design with Combinational Building Blocks

### Laboratory Assignment #

### ECE 201: Digital Circuits and Systems

## Learning Objectives

After completing this lab, we will be able to:

- Design combinational logic circuits using an HDL and
- Convert simple algorithms into equivalent logic circuits.

## Equipment and Materials

- DE10-Lite Board
- Intel Quartus Prime Design Software v15.1 or v18.
- Modelsim

## Pre-Lab Assignment

Prior to attending your assigned laboratory section, please complete the following tasks:

- Watch this video that provides more background on FPGAs and a demonstrates how they can be used via a
    brief design example: Ben Heck’s FPGA Dev Board Tutorial
- Derive the logic functions and design the circuits necessary to complete parts I-III

## Part I: Singular Display Driver

We wish to display hexadecimal values on the seven-segment displays of our FPGA. There are six seven-segment
displays on our boards, labeled HEX 0 through HEX 5. Using switches SW 3 − 0 to represent the binary equivalents
of 0x0 through 0xF, we will display those hexadecimal values on HEX 0.

1. Create a new project which will be used to implement the desired circuit on the Intel FPGA DE-series board.
    The name of the project should be bhd_converter.
2. Write a VHDL file that provides the necessary functionality described above. This file should be named display_decoder.vhd.
    Note: The intent of this exercise is to manually derive the logic functions needed for the seven-segment
    displays. Therefore, we will only use simple VHDL assignment statements in our code and specify each
    logic function as a Boolean expression.
3. Select the target chip that corresponds to your DE-series board (10M50DAF484C7G).
4. In the top left, the Project Manager has the Hierarchy selected. Change it so that Files is selected. Right
    click the VHDL file, and set it as the top level entity. This is required when our project’s name and file’s
    name differ. Analysis and synthesis may fail if this step isn’t followed!
5. Verify the functionality of the design by generating waveforms with Modelsim. Robust testing is expected
    to guarantee minimal issues going forward.
6. Assign the pins on the FPGA to connect to the switches and seven-segment displays. Make sure to include
    the necessary pin assignments.
7. Compile the project and download the compiled circuit into the FPGA chip.
8. Test the functionality of the design by toggling the switches and observing the displays.

## Part II: Multiple Display Drivers

Now that we’ve created a singular display driver, we wish to create multiple instantiations of it in a single VHDL
file. To do this, we will use the concept of port mapping. Using switches SW<sub>3 − 0</sub> to control HEX<sub>0</sub> and switches
SW<sub>7 − 4</sub> to control HEX<sub>1</sub> , we will allow both seven-segment displays to be manipulated at the same time with
recycled code.

1. Within the bhd_converter project that we created in Part I, create a new VHDL file with the name dual_digit_display.vhd.
    Set this file as the new top level entity.
2. Once our entity has been created, it’s time to declare our display_decoder.vhd’s entity as a component.
    Refer to the Free Range VHDL textbook for details on how this is accomplished.
3. With the component properly added, we can now instantiate multiple instances of our display decoder. This
    can be done with port mapping in our file’s architecture. Refer to the Free Range VHDL textbook for
    details on how this is accomplished.
4. Verify the functionality of design by generating waveforms with Modelsim.
5. Assign the pins on the FPGA to connect to the switches and seven-segment displays. Make sure to include
    the necessary pin assignments.
6. Compile the project and download the compiled circuit into the FPGA chip.
7. Test the functionality of the design by toggling the switches and observing the displays
8. Demonstrate the programmed FPGA’s functionality to a TA for a check-off for Part II.


## Part III: Binary to Hexadecimal & Decimal Converter

We wish to design a circuit that converts a four-bit binary number V=v<sub>3</sub>v<sub>2</sub>v<sub>1</sub>v<sub>0</sub> into its hexadecimal equivalent
h<sub>0</sub> and its two-digit decimal equivalent D=d<sub>1</sub>d<sub>0</sub>. It includes a comparator that checks when the value of V is greater than nine, and
uses the output of this comparator in the control of the seven-segment displays. We are to complete the design of
this circuit.

To make the design process more approachable, we will explain each logic block’s functionality in isolation.

- The Display Decoder is what was created in Part I of this lab. There will be three instantiations of this
    component in the final circuit, and it will not need to be revised (assuming it was originally implemented
    correctly).
- The Comparator: The outputs for the comparator circuit can be specified using a single Boolean expression, 
    with the four inputs V<sub>3 − 0</sub>. Design this Boolean expression by making a truth table that shows the
    valuations of the inputs V<sub>3 − 0</sub> for which has to be one.
- CircuitA: Has to provide output values that properly implement Table 1 when V > 9. CircuitA needs to
    be designed such that the input V = 1010 gives an output A = 0000, the input V = 1011 gives the output
    A= 0001,.. ., and the input V = 1111 gives the output A = 0101. Design circuitA by making a truth
    table with the inputs V<sub>3 − 0</sub> and the outputs A<sub>3 − 0</sub>.
- Circuit B: Given our display decoder’s input must be a four-bit value, simply passing the comparator’s
    output will not be sufficient. Therefore, Circuit B’s one-bit input must be converted to a four-bit value while
    still retaining its binary value.
- The Multiplexer: The purpose of this multiplexer is to drive digit d<sub>0</sub> with the value of V when z= 0, and
    the value of A when z= 1. To design circuitA, consider the following. For the input values V ≤ 9 , the
    circuitA does not matter, because the multiplexer in Figure 1 just selects V in these cases. But for the input
    values V > 9 , the multiplexer will select A.

Please perform the following steps:

1. Create seperate VHDL files for all each type of entity in the figure. This will include
    - An entity to implement the Comparator. The file and entity should be namedcomparator.vhd.
    - An entity to implement Circuit A. The file and entity should be namedcircuit_a.vhd.
    - An entity to implement Circuit B. The file and entity should be namedcircuit_b.vhd.
    - An entity to implement the Multiplexer. The file and entity should be namedmux_4b_2to1.vhd.
2. Verify the functionality of the design by generating waveforms with Modelsim. Tests should be performed
    onallentities created to ensure fewer problems with later integration.
3. Once all of the designs have been properly tested in isolation, they can all be instantiated as components in
    a single file. Create one more file to tie everything together; its name should bebhd_converter.vhd.
4. In this file, instantiate all the previously constructed entities as components, and perform port mapping such
    that the final circuit schematic is achieved.
5. Verify the functionality of the design by generating waveforms with Modelsim. In the context of a complete
    project, the file with maps individual components to each other is called thetop-level entity.
6. Assign the pins on the FPGA to connect to the switches and seven-segment displays. Make sure to include
    the necessary pin assignments.
7. Compile the project and download the compiled circuit into the FPGA chip.
8. Rigorously test the functionality of the design.
9. Demonstrate the programmed FPGA’s functionality to a TA for a check-off for Part III.
