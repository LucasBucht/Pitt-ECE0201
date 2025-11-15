# Finite State Machines

### Laboratory Assignment #

### ECE 201: Digital Circuits and Systems

## Learning Objectives

After completing this lab, we will be able to:

- Design a simple finite state machine using logic components,
- Make effective use of clocking circuits, and
- Design a finite state machine using behavioral VHDL!

## Equipment and Materials

- DE10-Lite Board
- Intel Quartus Prime Design Software v18.

## Part I: Finite State Machines

You will first implement a simple finite state machine in VHDL using D flip flops and logic.

Please carry out the following steps:

1. Design a finite state machine that counts repeatedly according to the first six values of Recamán’s sequence.
    Your design should be synchronous with respect to CLK and be implemented using rising edge triggered D
    Flip Flops. The input/output specification of the FSM is specified in Table??below.
2. Implement your FSM logic design in VHDL.
3. Simulate your FSM clearly showing that it counts using the correct sequence. In addition to the count
    sequence, make sure to test the functionality of GO and RST. Clearly Annotate your simulation waveforms
    so that it is readable.
4. Synthesize your design and load it on to your FPGA. You must figure out a mapping for the inputs and
    outputs. To display the outputs, you may use either the seven-segment displays with a hexadecimal output
    OR individual LEDs with a binary output.
5. Photograph your synthesized design running on your FPGA board in each of the count states.
6. Submit photos of each of the counts along with your lab report.

## Part II: Clocking Circuitry

Next, we wish to modify the circuit so that it uses an external clocking source rather than a button for clock. The
DE10-Lite board has internal clocking circuitry than can be used to generate a clock signal at a rate of 50 MHz.

Please carry out the following steps:

1. Read section 3.2 of the DE10-Lite User Manual. This section will explain the internal clocking circuitry
    and how to map it on the FPGA pin planner.
2. The internal clocking circuitry produces an oscillating square wave with a frequency of 50 MHz. We wish
    to use this clocking circuitry to drive the clock input of our counter and have the results visibly displayed
    on the 7-segement or LED displays. Explain why simply hooking up the clock circuitry output to your
    counter’s clock will not function properly.
3. The figure below is a circuit that can be used to solve the aforementioned clocking problem. There is a
    binary counter that counts according to a typical sequence (e.g. 0, 1, 2, 3, ...). This counter is driven by a
    50 MHz clock. The output of the counter is fed to a multi-input NOR gate. The output of this gate drives
    the ENABLE input of a second counter. This second counter is also driven by the 50 MHz clock. Examine
    this circuit and Explain how it can be used to solve the clocking problem and allow for the clock output to
    be visibly displayed.
4. Design and Implement a circuit on your FPGA that will allow your counter to count automatically using
    the clocking circuitry and display the output on either the seven-segment or LED displays. Draw/Sketch
    your design.
       - Do not attempt to simulate the entire design. Given the clock rates used, this would be problematic.
       - It is beneficial to consider a structural approach to your VHDL where submodules are combined to
          form larger ones. Doing so will save you time and effort.
5. Synthesize your design.
6. Demonstrate your circuit to the teaching staff. Show that is counts in the proper sequence with the only
    when the GO button is pressed and can be reset back to zero on command.

## Part III: Behavioral Models for FSMs

Similar to the other circuits we learned about, FSMs can be described in VHDL using behavioral models rather
than structural models.

Please carry out the following steps:

1. Study the synchronous counter state machine example on CANVAS. This counter counts from 0 to 3, has
    an asynchronous reset, and triggers on the rising edge of the clock. Notice that there are two concurrent
    processes, one for determining current state and another for the output logic. This implements what is
    referred to as a Moore-type FSM.
2. Use this template to Recreate the Recamán’s Sequence counter from part I.
3. Performa simulation in ModelSim, using this redesigned VHDL, that replicates your simulation results
    from part I, question 3.
4. Synthesize your VHDL and examine the RTL Viewer results.
5. Compare the synthesis tool’s implementation to your implementation from part I.
6. Explain any differences and similarities between your design and the design determined by the tools.

## Part IV: FSM Design using Behavioral Models

In this section, you will design a circuit that counts according to the Fibonacci sequence. Your counter should
output the first 14 values of the sequence before repeating itself. The top-level structure and input / output specification 
is the same as for the previous counter. The only difference is the count sequence. You may design this
counter using behavioral or structural VHDL. It is your choice.

Please carry out the following steps:

1. Design your circuit.
2. Sketch your design. You may describe it at any abstraction level that you wish (e.g. state diagram, logic
    level, etc.).
3. Implement your design using VHDL. You are free to solve this design challenge by using an assortment
    of the combinational and sequential logic blocks you have used to date (e.g., logic, MUXes, decoders,
    encoders, registers, counters, etc.).
4. Synthesize your circuit on to the FPGA.
5. Demonstrate your circuit to the teaching staff, Your demonstration should be such that:
    - The internal clocking circuitry is used to drive clock signals, allowing the counter to run automatically.
    - The counter should hold its state when the GO button is not asserted and go back to its initial state
       when RESET is asserted.
    - The output of the counter should be visible using one of the FPGA board’s display mechanisms.


