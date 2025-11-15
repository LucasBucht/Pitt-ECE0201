# Registers and Register Transfer Level (RTL) Design

### Laboratory Assignment #

### ECE 201: Digital Circuits and Systems

## Learning Objectives

- Implement different types of flip flops with behavioral VHDL,
- Design register storage circuits to hold data,
- Implement and use shift registers to generate serial output, and
- Gain design experience integrating different types of sequential logic circuit.

## Equipment and Materials

- DE10-Lite Board
- Intel Quartus Prime Design Software v18.

## Pre-Lab Assignment

- Read the preface to chapter five of the online book “Free Range VHDL”.
- Read section 5.2 of the online book “Free Range VHDL”.
- Study the behavioral model for a 4:1 Multiplexer provided in section 13.8.
- Apply what you read by explaining the code segment shown in section 13.8 of the VHDL textbook in your
    own words.


## Part I: Behavioral VHDL Models and Registers

You will first implement a rising edge triggered flip-flop using behavioral VHDL. With behavioral VHDL, we
implement circuits by describing how they function, at a high level, rather than the internal circuit structure.

Please carry out the following steps:

1. Section 13.1 contains VHDL for a D Flip Flop Behavioral Model. Create a VHDL file, complete with an
    entity and architecture, that implements the rising edge triggered D flip flop using the behavioral VHDL
    style.
2. Modify the VHDL file to include a load enable signal (EN). The load enable works such that when the
    signal is asserted (EN = ‘1’), the flip flop operates normally. When the load enable signal is not asserted
    (EN = ‘0’), the flip flop maintains its hold state, irrespective of the clock.
3. AlsoModifythe VHDL file to include an asynchronous reset signal. Asynchronous means that resetting
    the flip flop does not depend in any way on the clock signal. When then reset signal is asserted (RST = ‘1’),
    then the flip flop output is immediately changed zero (Q = ‘0’).
4. Determine a sequence of inputs (D, EN, RST and CLK) that will shows that the modified flip flop
    functions properly.
5. List and Describe all the test cases that you will do to simulate.
6. Create a Modelsim do-file that will replicate these test conditions.
7. Simulate your test sequence in Modelsim.
8. Design a register that can store one byte and implement it in a new VHDL file. You should create this
    register such that the entity’s data input/output is an 8-bit std_logic_vector. However, the inside of the
    register should have eight copies of the behavioral flip flop model from the previous steps instantiated. You
    will need to use VHDL PORT MAP statement to create the register. Is this VHDL file behavioral, structural
    or a mix of both?Explain.

## Part II: Register Storage

In this section, you will design a circuit that stores your initials in ASCII format.

The functionality of this circuit is simple. Its purpose is to store data that represents your initials. There is a single
8-bit (1 byte) input, and the user has the ability to choose which initial is being specified via a set of load enable
signals.

Please carry out the following steps:

1. Draw or Sketch(by hand) the internal structure of the ASCII Initial Storage Circuit.
2. List and Describe all the sequential steps that need to take place to store your initials within the circuit.
3. Create a Modelsim do-file that replicates those steps.
4. Simulate your do-file, demonstrating the functionality of your circuit. Due to the complexity of the simulation,
     it is IMPERATIVE that your simulation waveforms are neat and legible. Arrange and order signals ac-
    cording to their type/direction (e.g. inputs, outputs, etc.). Use dividers (right click → Add → New Divider) to
    label signals and groups. Display multi-bit signal busses in hexadecimal (right click → Radix → Hexadecimal).
    Set the zoom level such that values can be clearly read (Wave → Zoom → Zoom In). Waveform formatting
    can be saved in a do-file so that setup does not have to be repeated each time (File → Save Format → wave.do).
    This do file can be copy/pasted to the beginning of your test do file. See Figure 2 for an example of a neatly
    formatted waveform.
5. Synthesize your circuit for the FPGA.
6. Modify the circuit design such that the initials are displayed as hexadecimal digits on the seven-segment
    displays (Figure 3-17 of DE-10 Guide). Redraw your circuit diagram to make additions that show how the
    displays are connected and what signals are used to drive them. Note that this does not mean the displays
    must show the digits, just that the hexadecimal values of the digits will appear on the displays. This can be
    accomplished quickly by using the display decoder module you developed for lab seven.
7. Map the Clock and Reset signals to push buttons (Figure 3-13 of DE-10 Guide).Map the data input bus to
    the slide switches (Figure 3-15 of DE-10 User Guide).Map the data input bus to the LEDs (Figure 3-16 of
    DE-10 User Guide) so that you can see the states you will input.
8. Map the enable signals to the slide switches. There is a constraint that prevents this from happening properly. 
    Explain.
9. Overcome this constraint by Modifying your circuit once again. Redraw your circuit once more to adjust
    for these small changes. (Hint: Consider using some of the combinational logic building blocks we recently
    studied.)
10. Demonstrate your circuit to the teaching staff. The checkoff procedure is as follows:
        (a) Clear the circuit.
        (b) Set your initials and show the TA.
        (c) The TA will then attempt to store their initials.

## Part III: Shift Registers

In this section, you will examine how shift registers operate.

Please carry out the following steps:

1. Design an 8-bit serial shift register with the capability for parallel loading.
2. Sketch your schematic by hand.
3. Simulate the loading, and then shifting out, of the ASCII ‘a’ character (0x61).
4. On the Modelsim simulation waveform, Annotate each bit of the parallel input as it appears on the single
    bit output of the shifter.

## Part IV: Register Transfer Level Design – Serial ASCII Transmitter

For this final part of the lab, you will combine all the circuits from the previous sections and combine it with your
knowledge of combinational logic circuits to create a complex register transfer level design. This is an open-ended
design challenge and there is no one solution.

Please carry out the following steps:

1. Design a circuit that either a) selects one of the initials based on user input and shifts it out serially or b)
    automatically and repeatedly shifts out one or more initials on its own. You are free to solve this design
    challenge by using an assortment of the combinational and sequential logic blocks you have used to date
    (e.g., logic, MUXes, decoders, encoders, registers, counters, etc.).
2. Sketch your schematic by hand and explain your design.
3. Simulate your circuit functioning. Since everyone’s simulation may be different, please annotate the simulation
    results.
4. Synthesize your circuit. Include LEDs to visualize the serial output.
5. Demonstrate your VHDL code and simulation result to an instructor or TA for your Part IV check-off.
6. For five extra credit points, display your circuit output on the oscilloscope.


