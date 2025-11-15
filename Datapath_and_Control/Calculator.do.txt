restart -f

// Set Up Clock Signal
force -freeze sim:/calculator/clk 1 0, 0 {5 ns} -r 10

// Set Reset to 0
force rst 0


// Write to A, B, C, and D

// A
force Write_Adress 0
// Set Data In
force Data_In 120
// Set Data Select to Data In
force data_sel 0
// Run
run 10

// B
force Write_Adress 1
// Set Data In
force Data_In 67
// Set Data Select to Data In
force data_sel 0
// Run
run 10

// C
force Write_Adress 2
// Set Data In
force Data_In 88
// Set Data Select to Data In
force data_sel 0
// Run
run 10

// D
force Write_Adress 3
// Set Data In
force Data_In 41
// Set Data Select to Data In
force data_sel 0
// Run
run 10


// Load X and Y

// Load A into X
force Read_Adress 0
force en 1
run 10

//Load C into Y
force Read_Adress 2
force en 0
run 10

// Select Add in the ALU
force ALU_sel 0
run 10

// Select AND in the ALU
force ALU_sel 1
run 10

// Select Invert in the ALU
force ALU_sel 3
run 10
