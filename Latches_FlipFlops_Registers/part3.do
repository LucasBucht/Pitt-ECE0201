restart -f

force -freeze sim:/storageelementcomparison/Clk 0 0, 1 {10 ps} -r 20

force d 0
run 8

force d 1
run 4

force d 0
run 2

force d 1
run 3

force d 0 
run 4

force d 1 
run 3

force d 0
run 2

force d 1  
run 2

force d 0
run 4

force d 1
run 2

force d 0 
run 2

force d 1 
run 6

force d 0
run 8
