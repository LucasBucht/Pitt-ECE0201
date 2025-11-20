restart -f

force clk 0
force en 1
force rst 0
run 10

force data_in 9'b001111000
force clk 1
run 10
force clk 0
run 10

force clk 1
force data_in 9'b101010101
run 10

force clk 0
run 10

force data_in 9'b000000000
force clk 1
run 10
force clk 0
run 10
