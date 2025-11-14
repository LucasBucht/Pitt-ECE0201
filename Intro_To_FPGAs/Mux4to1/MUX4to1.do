restart -f

force U 0
force V 0
force W 0
force X 0
force S1 0
force S0 0
run 10

force U 1
force V 1
force W 1
force X 1
force S1 0
force S0 1
run 10

force U 1
force V 0
force W 1
force X 0
force S1 1
force S0 0
run 10

force U 0
force V 0
force W 1
force X 1
force S1 1
force S0 1
run 10