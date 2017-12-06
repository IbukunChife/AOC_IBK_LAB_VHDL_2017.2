onerror {exit -code 1}
vlib work
vlog -work work somador8.vo
vlog -work work WaveformSomador8it.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.somador8_vlg_vec_tst -voptargs="+acc"
vcd file -direction somador8.msim.vcd
vcd add -internal somador8_vlg_vec_tst/*
vcd add -internal somador8_vlg_vec_tst/i1/*
run -all
quit -f
