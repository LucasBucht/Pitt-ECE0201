restart -f

force -freeze sim:/fsm_datapath/clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/fsm_datapath/rst 1 0
force -freeze sim:/fsm_datapath/Run 1 0
force -freeze sim:/fsm_datapath/Data_In 9'o130 0
run 200
force -freeze sim:/fsm_datapath/rst 0 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o130 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o545 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o140 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o030 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o534 0
run 100
run 100
run 100
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o120 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o677 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o432 0
run 100
run 100
run 100
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o630 0
run 100
run 100
run 100
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o053 0
run 100
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o100 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o102 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o350 0
run 100
run 100
run 100
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o160 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o001 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o110 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o000 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o170 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o000 0
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o275 0
run 100
run 100
run 100
run 100
force -freeze sim:/fsm_datapath/DATA_IN 9'o276 0
run 100
run 100
run 100
run 100
