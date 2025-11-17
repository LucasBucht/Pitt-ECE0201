# Datapath and Control

### Laboratory Assignment #

### ECE 201: Digital Circuits and Systems

## Learning Objectives

After completing this lab, we will be able to:

- Use Siemens HDL Designer to more quickly develop components,
- Integrate and build new components using block diagrams, and
- Realize the compute and memory components of a simple calculator!

## Equipment and Materials

- DE10-Lite Board
- Siemens HDL Designer 2024
- Intel Quartus Prime Design Software v18.

## Part I: HDL Designer Tutorial

We will begin this lab with a short tutorial on the new software tool that you will be using, Siemens HDL Designer.
This tool is very powerful and will help you to rapidly design, simulate, and integrate components. However, a
limitation is that this tool is only licensed for computers in the Benedum 1211 and 1223 labs.

Please carry out the following steps:

1. Start HDL Designer using the icon on the Desktop or Start Menu.
2. Select "Next" when the setup wizard is displayed.
3. Select "Next" when the set default language selector appears. This will set all VHDL versions to defaults.
4. Select "FPGA" and "Intel FPGA (Altera)" and then click "Next" to continue.
5. Click "New Simulator" to add a simulator option to the tool.
6. Specify "ModelSim" and set the path of the simulator to C:\modelsim_dlx64_2024.1\win64pe
    using the "Browse" button.
7. Ensurethe your newly defined "ModelSim" simulator is selected and click "Next" to continue.
8. Ensure that "QUARTUS" is selected as your default synthesis tool. It should be found automatically. If it is
    not, please specify the location C:\Quartus\_lite\18.1\quartusor ask a teaching team member
    for help.
9. Click "Finish" to complete the initial setup wizard. If, for any reason, this wizard must be repeated, there is
    a link to do so in the Help menu of the application.
10. If the "New Content" window appears, just click "Cancel" for now.
11. Select both Tasks => Set Generate Always and Tasks => Set Compile Always. The menu and selections can
    be seen in Figure 9. We will see what these do later.

Great work! With that, your HDL Designer environment is set up!


Next, we will create a project in which to work.

1. Create a new project by clicking File => New => Project.
2. Enter a name, directory, and default working library name. An example is provided in Figure 11 to follow.
3. At the "Project Summary" window, click "Next" to continue.
4. At the "Project Content" window, ensure that "Open the Project" is selected. Click "Finish" to complete
    project creation!

Well done! Your project should now be created and open! Now we will create some "Design Content" within your
project. Each component that you use in your final design will be created this way. Please carry out the following
steps:

1. Click File => New => Design Content to open the "Design Content Creation Wizard".
2. Select the "VHDL File" option in the left menu and the "Combined" option in the right menu. This selection
    tells the tool to expect both entity and architecture definitions in a single file.
3. Specify a name for the entity as well as a name for its architecture. These names together will define the
    component as a whole. The entity name should describe what the component is or does. The architecture
    name is typically just "behav". The library, file case, and file format fields should autopopulate and can be
    left as they are.
4. The new Design Unit that you have created should appear in the Design Explorer! Double Click it to open
    it in the editor.
5. Enter VHDL for the MUX into the editor. You may use the code in Figure 18 to follow. Note that this code
    is quite similar to MUXes that you have developed in the past! Also note that the tool handles creating some
    of this code for you! When you have completed your code, save the file and exit the editor. If there are any
    errors, the editor will let you know upon each save! What a nifty feature!
6. For our next trick, we will now simulate the design unit that we have created! In the Design Explorer, click
    the MUX once to highlight it. Then click the ModelSim logo in the toolbar above.
7. Click "OK" when the "Start ModelSim" window appears. You can leave all settings as they are.
8. From this point, the simulation takes place as it has previously. However, please use the following format
    to set values in the Modelsim command window and your do files. If not, you may experience difficulties.
       - For binary:force -freeze sim:/mux4to1x8bits/C 8’b10101010 0
       - For hexadecimal:force -freeze sim:/mux4to1x8bits/C 8’hAA 0
9. Perform a simulation in Modelsim showing that the multiplexer works. Like the previous MUX you built,
    you do not need to create an exhaustive simulation. Just demonstrate that each selection case works for a
    given input bit pattern. Annotate each test case on the waveform you submit.
10. Design an 8-bit register in VHDL and add it to your project library (File => New => Design Content). This
register should be synchronous to the rising edge of the clock, have an asynchronous reset, and load enable
signal. You will note that this is the same register that you developed for a previous lab. The VHDL that
you already developed can be reused here!
11. Design a 2:4 decoder in VHDL and add it to your project library (File => New => Design Content).


## Part II: Register File

For this assignment, you will design a register file. The register file can store one byte of data in each of four
storage locations. The register file can also read out the stored data on an output bus.

Before we begin our design, we are going to learn how to perform some other useful actions in HDL designer.

1. Create a new entity in HDL Designer by selecting File => New => Design Content. This time, select "Block
    Diagram" in the "File Types" menu.
2. Save the schematic and give it a name (e.g., REGFILE4x8).
3. Instantiate components by using the "Add Component" toolbar button, seen in Figure 24.
4. Select a component from the "Component Browser" to add it to your design. Alternatively, you may click
    and drag components from the Design Explorer into your block diagram.
5. Select a component from the "Component Browser" to add it to your design. Alternatively, you may click
    and drag components from the Design Explorer into your block diagram.
6. Add multi-bit busses (std_logic_vector) using the "Add Bus" toolbar button. Use these busses to connect
    the ports of components together. In Figure 29 below, we connect two MUXes with a bus. This connection
    is just an example, not what you will do for your design.
7. Add single-bit signals (std_logic) using the "Add Signal" toolbar button. Use these signals to connect the
    single-bit ports or pull one signal from a bus. Figure 31 is just an example, not what you will do for your
    design.
8. Rip multi-bit busses (std_logic_vector) from other busses using the "Ripper" toolbar button. Using this
    function requires clicking the drop-down selection arrow next to the "Add Bus" button, as seen in Figure 32.
    Figure 33 is just an example, not what you will do for your design.
9. Add input and output ports to your design using the "Add Port" button in the toolbar, as seen in Figure 34.
    Figure 35 is just an example, not what you will do for your design.
10. You may even reshape your component to give it symbol that makes it more understandable. Right click
    on the component block, then select Shape => Autoshape to see your options. Using the "Mux" shape, we
    can make our MUX look more like a multiplexer symbol. Figure 35 shows an example of this function.

Please carry out the following steps:

1. Sketch the design and internal structure of the register file by hand.
2. Translate your register file sketch into a VHDL design via a block diagram. Use the tutorial reference steps
    above to guide you through the process. You have already built the three components that you will need for
    the register. You only need to connect them together!
3. Generate VHDL from your schematic by selecting the generate HDL action. This action is represented by
    the toolbar icon seen in Figure 37.
4. View the generated VHDL by selecting HDL → View Generated HDL. If the generated VHDL does not
    appear, that means there are errors. Check the log window to see where these errors are located.
5. Read the generated VHDL and be sure that it makes sense.
6. Create a brief test plan that covers storing a value in each location and reading each one out.
7. Translate this test plan into a do file.
8. Simulate your complete register file design in ModelSim.
9. Annotate your waveform as needed so that we can see which part of the test is being conducted where.
10. Create a new block diagram that will serve as the top level of the register file design.
11. Instantiate your register file into this top-level block diagram.
12. Include hexadecimal display decoders for the Write Data and Read Data lines. This will require you to
create a new component for the display decoder. However, you may simply copy over the VHDL that you
have already developed! This component can then be placed within your top-level design and connected to
the register file block! To route the output signals to the seven-segment displays, the outputs of the display
decoders can be connected directly to output ports. You may also choose to display Write Address and Read
Address on seven-segment displays or individual LEDs. However, this is not required.
13. Modify your top-level design to deal with the I/O constraints of your development board Like in a Lab 10,
we do not have enough buttons and switches to support our full design. For Clock, Reset, Write Address,
and Read Address, you will need six I/O input pins. Assuming Clock and Reset are connected to the buttons,
Write Address and Read Address can be connected to switches. This will leave six remaining switches to
connect to Write Data. We recommend that you connect these switches to the least significant bits of Write
Data (the lowest six). The remianing most significant bits (the highest two) can then be hardcoded to zero.
This can be done using one final VHDL component in your top-level design. We will not be able to test the
full range of inputs. However, we will be able to modify enough bits that we can test the full functionality
of our design!
14. Synthesize the design by clicking the Quartus Synthesis Flow Icon from the toolbar.
15. Select the FPGA on your development board, the MAX10M50DAF484C7G. Leave the other settings un-
    changed and click "OK". The results of the synthesis will be contained in your project folder as a ready-to-go
    Quartus project.
16. Open the project file of this design in Quartus. Proceed with synthesis, pin mapping, and other tasks as you
    have done previously.
17. Demonstrate your design to a teaching team member. Show them proper writing and reading of two different
    data patterns to two different locations in your register file.

## Part III: Arithmetic Logic Unit

Next, we are going to build the most powerful component that we have thus far in the course. The arithmetic logic
unit (ALU) is the core of a computer. This block will perform a calculation on two 8-bit input values. We will
call them A and B. This ALU will have four operations:Addition, Logical AND, Logical OR, and Inversion.
Inversion will only invert the variable A. The ALU will include a selection input that will allow the user to choose
which operation is performed.

Please carry out the following steps:

1. Create a complete logic block diagram for this design. This block should look very similar to the logic
    block given in Figure 21 above for the register file. Also write a quick table that describes the direction,
    size, and function of each signal. This should look very similar to Table 1 above.
2. Design the ALU component using whatever combination of VHDL or block diagrams that you desire.
3. Create a brief test plan that covers one example case of each ALU operation.
4. Translate this test plan into a do file.
5. Simulate your ALU component design in ModelSim and confirm that it works correctly.

## Part IV: Calculator

In this section, you will put together the register file and ALU components that you have created previously. You
are to design a simple calculator that performs a calculation on two operands, X and Y. The calculator is comprised
of the following components:

- The Register File is used to store numerical values that can be used in the computation.
- Registers X and Y are used to store the current operands. Their values are retrieved from the register file.
- An ALU with four operations: Addition, Logical AND, Logical OR, and Inversion.
- A Data Selector that allows either the Data In signal or ALU output signal to be sent into the Register File.
    This allows us to save the previous result!

A simplified diagram of this design is visible as Figure 40 to follow. Note that this simplified figure does not
include all signals. Think carefully about the signals that each component needs to function. Be sure that all
inputs are satisfied.

Please carry out the following steps:

1. Sketch a detailed version of your design by hand. Show all inputs/outputs and signals.
2. Design a VHDL block diagram that implements the above datapath. This will be the top level of your
    design.
3. Create a brief test plan. Think carefully about what is needed to test each part. For the register file, you will
    first need to load data. You may reuse parts of your test plan from Part II. You will then need to get the data
    into the Variable Registers. What other signals will need to be used to make this happen? For the ALU, you
    may reuse parts of your Part III test plan. Finally, pay special mind to the feedback. One of your test cases
    will need to store a result from the ALU. A following test case will have to use that result.
4. Translate this test plan into a do file.
5. Simulate your complete design in ModelSim.
6. Annotate your waveform as needed so that we can see which part of the test is being conducted where.
7. Synthesize your complete design.
8. Demonstrate your design to a teaching team member. Show them one example of each ALU operation on
    data elements in the register file. Also show them one case of storing the result back in the register file and
    a following case using that result.
