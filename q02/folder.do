vlog -sv q02_dut.sv
vlog -sv q02.sv

vsim -voptargs=+acc -t ns -onfinish stop q02_dut

add wave *
run -all
