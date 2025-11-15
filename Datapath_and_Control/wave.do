onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /calculator/clk
add wave -noupdate -divider -height 25 {Data Selector}
add wave -noupdate -divider Inputs
add wave -noupdate -radix binary /calculator/Data_In
add wave -noupdate -radix binary /calculator/MUX_OUT
add wave -noupdate -radix binary /calculator/data_sel
add wave -noupdate -divider Outputs
add wave -noupdate -radix binary /calculator/Write
add wave -noupdate -divider -height 25 {ABCD Register}
add wave -noupdate -divider Inputs
add wave -noupdate -radix binary /calculator/Write
add wave -noupdate -radix binary /calculator/Write_Adress
add wave -noupdate -radix binary /calculator/Read_Adress
add wave -noupdate -divider Outputs
add wave -noupdate -radix binary -childformat {{/calculator/Read_Data(7) -radix binary} {/calculator/Read_Data(6) -radix binary} {/calculator/Read_Data(5) -radix binary} {/calculator/Read_Data(4) -radix binary} {/calculator/Read_Data(3) -radix binary} {/calculator/Read_Data(2) -radix binary} {/calculator/Read_Data(1) -radix binary} {/calculator/Read_Data(0) -radix binary}} -subitemconfig {/calculator/Read_Data(7) {-height 15 -radix binary} /calculator/Read_Data(6) {-height 15 -radix binary} /calculator/Read_Data(5) {-height 15 -radix binary} /calculator/Read_Data(4) {-height 15 -radix binary} /calculator/Read_Data(3) {-height 15 -radix binary} /calculator/Read_Data(2) {-height 15 -radix binary} /calculator/Read_Data(1) {-height 15 -radix binary} /calculator/Read_Data(0) {-height 15 -radix binary}} /calculator/Read_Data
add wave -noupdate -divider -height 25 X
add wave -noupdate -divider Inputs
add wave -noupdate -radix binary /calculator/Read_Data
add wave -noupdate -radix binary /calculator/OneHot(1)
add wave -noupdate -divider Outputs
add wave -noupdate -radix binary /calculator/xOut
add wave -noupdate -divider -height 25 Y
add wave -noupdate -divider Inputs
add wave -noupdate -radix binary /calculator/Read_Data
add wave -noupdate -radix binary /calculator/OneHot(0)
add wave -noupdate -divider Outputs
add wave -noupdate -radix binary /calculator/yOut
add wave -noupdate -divider -height 25 {One Hot Decoder}
add wave -noupdate -radix binary /calculator/en
add wave -noupdate -radix binary /calculator/OneHot
add wave -noupdate -divider -height 25 ALU
add wave -noupdate -radix binary /calculator/ALU_sel
add wave -noupdate -divider -height 25 Hex
add wave -noupdate -radix binary /calculator/HEX0
add wave -noupdate -radix binary /calculator/HEX1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{SET A} {94 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ns} {112 ns}
