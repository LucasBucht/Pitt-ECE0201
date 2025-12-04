onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fsm_datapath/Data_In
add wave -noupdate /fsm_datapath/Run
add wave -noupdate /fsm_datapath/clk
add wave -noupdate /fsm_datapath/rst
add wave -noupdate /fsm_datapath/CPU_Bus
add wave -noupdate /fsm_datapath/Done
add wave -noupdate -divider Register
add wave -noupdate -radix octal /fsm_datapath/Register_File/U_9/A
add wave -noupdate -radix octal /fsm_datapath/Register_File/U_9/B
add wave -noupdate -radix octal /fsm_datapath/Register_File/U_9/C
add wave -noupdate -radix octal /fsm_datapath/Register_File/U_9/D
add wave -noupdate -radix octal /fsm_datapath/Register_File/U_9/E
add wave -noupdate -radix octal /fsm_datapath/Register_File/U_9/F
add wave -noupdate -radix octal /fsm_datapath/Register_File/U_9/G
add wave -noupdate -radix octal /fsm_datapath/Register_File/U_9/H
add wave -noupdate -divider States
add wave -noupdate /fsm_datapath/Controller/current_state
add wave -noupdate /fsm_datapath/Controller/next_state
add wave -noupdate -divider F
add wave -noupdate /fsm_datapath/F/data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1050 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 224
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {940 ns}
