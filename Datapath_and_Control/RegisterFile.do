restart -f

force -freeze sim:/toplevelblock/clk 0 0, 1 {5 ns} -r 10
force rst 0

force Write_Data 00010111
force Write_Adress 1
run 10

force Write_Data 11010110
force Write_Adress 2
run 10

force Write_Data 10010001
force Write_Adress 0
run 10

force Write_Data 11110000
force Write_Adress 3
run 10

force Read_Adress 0
run 10

force Read_Adress 1
run 10

force Read_Adress 2
run 10

force Read_Adress 3
run 10

force rst 1
run 10

force 0
run 10
