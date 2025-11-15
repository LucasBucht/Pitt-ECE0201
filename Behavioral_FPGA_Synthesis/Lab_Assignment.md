# Arithmetic Circuits and Behavioral VHDL

### Laboratory Assignment #

### ECE 201: Digital Circuits and Systems

## Learning Objectives

After completing this lab, we will be able to:

- Interpret synthesized VHDL netlists,
- Write behavioral VHDL, and
- Design and implement arithmetic circuits.

## Equipment and Materials

- DE10-Lite Board
- Intel Quartus Prime Design Software v18.

## Pre-Lab Assignment

Prior to attending your assigned laboratory section, please complete the following tasks:

- Briefly read sections 5.2 through 5.5 of the Free Range VHDL text
- Watch this interesting video that provides a different perspective on the adder circuit: XOR & the Half
    Adder - Computerphile



## Part I: Synthesis of a Ripple-Carry Adder

We wish to design an 8-bit ripple carry adder (RCA) circuit. You will examine the results from synthesizing your
VHDL using the netlist viewers in Quartus.

Begin by examining each of three VHDL files on the Canvas assignment page for this lab:

- Full_Adder.vhd – contains a gate-level description of a full adder circuit (inputs: x, y, cin, outputs: s,
    cout). The VHDL file implements the circuit using only two-input logic gates.
- Four_Bit_RCA.vhd – instantiates four Full_Adder components and connects them using port maps to
    create a four-bit ripple carry adder. Note that using the => operator in port maps is recommended to eliminate
    confusion that may occur when declaring mappings via the ordering of the signal list. Note that, in line 24,
    you need to declare the intermediate signals, and, in lines 28-31, you need to put correct signal names to
    replace these question marks.
- lab8_part1.vhd – incomplete top-level entity file that you can work on. Writing the top-level VHDL in
    this way will help you to avoid confusion between the names of component ports and names of signals that
    are relevant to your design. You should follow a similar format each time you are asked to create a new
    top-level entity.

Please carry out the following steps:

1. Sketch, by hand, a schematic that represents the full adder logic diagram exactly as implemented in the file
    Full_Adder.vhd. You should clearly label inputs x, y, cin, outputs s, cout and signals w<sub>0</sub> ,w<sub>1</sub> ,w<sub>2</sub> ,w<sub>3</sub> ,w<sub>4</sub> ,
    w<sub>5</sub> ,w<sub>6</sub>. Include this schematic in your report.
2. Calculate the total cost to implement an eight-bit ripple carry adder circuit using the full-adder implementation 
    from the previous step. Use the cost calculation from class, where cost = (number of gates) + (number
    of inputs to each gate).
3. Create a new Quartus project for this lab, and add the VHDL file named lab8.vhd to the project.
    Make this file the top-level entity for your project.
4. Add Full_Adder.vhd and Four_Bit_RCA.vhd to the project.
5. Design an 8-bit ripple-carry adder using port map. You may do this by either instantiating eight copies of
    the full-adder circuit or two copies of the 4-bit ripple-carry adder example circuit (remember to replace the
    question marks there). Complete the 8-bit adder in your file lab8.vhd where entity names are given
    to you.
6. Select "Start Analysis and Synthesis" to compile your circuit of lab8.vhd.
7. Go to Tools > Netlist Viewers > RTL Viewer. Examine the RTL viewer result and think about how it
    corresponds to the VHDL code that you wrote (Note: you can expand component blocks by double clicking
    on them in the RTL viewer).
8. Take a screenshot of the synthesized logic network for the 8-bit adder circuit (from the RTL viewer). Include
    this screenshot in your report.
9. Calculate the total cost of the logic circuit diagram as shown in the RTL Viewer. Compare the result to
    the cost you calculated by hand previously in Step 3. Briefly explain the differences. Comment on the
    significance of these results to creating large scale digital circuit designs.
10. Go to Tools > Netlist Viewers > Technology Map Viewer. Include a screenshot of the output in your report.
11. Demonstrate your VHDL code and synthesis result in the RTL and Technology Map Viewers to an instructor
or TA for your Part I check-off.

## Part II: Behavioral VHDL MUX

In this part, you will practice writing behavioral VHDL code to implement a multiplexer (MUX). VHDL behavioral 
models, by definition, use process statements, whose syntax is shown in Figure 1. Please carry out the
following steps:

1. Design a 4-bit 4:1 MUX using either IF or CASE statements. Similar to the previous labs, choose one from
    U, V, W, X (each is a 4-bit bundled signal) according to S. Write your VHDL for the MUX in a new vhd file
    named mux_4b_4to1.vhd, and make it your top-level entity.
2. Select Start Analysis and Synthesis to compile your circuit.
3. Go to Tools > Netlist Viewers > RTL Viewer. Examine the RTL viewer result. Include a screenshot in your
    report.
4. Compare the RTL synthesis result to the result of a dataflow model implementation with selected signal
    assignments of this 4-bit 4:1 MUX (Figure 2 shows its RTL viewer). Are there any significant differences
    in how the compiler decide to implement the two designs?

## Part III: VHDL Arithmetic

In this part, you will practice utilizing VHDL arithmetic libraries to implement an adder circuit. Please carry out
the following steps:

1. Use the IEEE.NUMERIC_STD library and the + operator to design an 8-bit binary adder. Write VHDL to
    implement this adder in a new vhd file and make it your top-level entity.
2. Select Start Analysis and Synthesis to compile your circuit.
3. Go to Tools > Netlist Viewers > RTL Viewer. Examine the result and include a screenshot in your report.
4. Go to Tools > Netlist Viewers > Technology Map Viewer. Include a screenshot in your report.
5. Compare the synthesis results (both RTL and Technology Map Viewer) to the previous ripple carry adder
    synthesis results in Part I. Other than the logic functions themselves, are there any significant differences in
    how the compiler synthesized this adder circuit versus the previous adder?

## Part IV: Behavioral VHDL MUX

In this section, you will model timing and effects of propagation delay using VHDL. Please carry out the following
steps:

1. Assume that AND gates have a delay of 2ns, OR gates have a delay of 2ns, XOR gates have a delay of
    4ns, and NOT gates have a delay of 1ns. Use the VHDL after statement to incorporate these delays into the
    design of the Full_Adder.vhd from Part I (see lecture notes for an example).
2. Re-simulate your 8-bit ripple carry adder in lab8_part1.vhd, and measure the propagation delay for one stage
    of your RCA (i.e., measure the time from when the inputs change until when the carry-out for that stage
    reaches steady state). In the report, show simulation result with one test case, annotate the waveform with
    input change timestamp and output (of that stage) change timestamp, and report the delay for that stage.
3. Examine your ripple carry adder RTL schematic obtained in Part I Step 8. What would you expect to be
    the propagation delay of one stage from that RTL schematic? How does this compare to your simulated
    propagation delay above? What disadvantage does it tell about the RTL synthesis?
4. Calculate the expected critical path delay of your whole (i.e., all stages) 8-bit RCA implemented via full
    adders with the handwritten schematic in Part I Step 2.
5. Contemplate all the possible input to your adder and find a test case (i.e., a set of values for the input signals)
    that relies on the critical path and thus suffers the longest delay from input to output. Simulate this test case,
    show your simulation result, and annotate the measured delay on the waveform.
6. In your report, write down the chosen values for the input signals (A, B) and record delays to carry-out
    (Cout) and the MSB of sum (S7).
7. Demonstrate your VHDL code and simulation result showing critical path delay to an instructor or TA for
    your Part IV check-off. Prepare to briefly explain how you find this test case.
