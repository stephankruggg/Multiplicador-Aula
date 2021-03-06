transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Multiplicador.vho}

vcom -93 -work work {D:/Quartus/quartus/bin64/Multiplicador/multiplicador_tb.vhd}

vsim -t 1ps -L altera_mf -L altera -L lpm -L sgate -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L gate_work -L work -voptargs="+acc"  multiplicador_tb

add wave *
view structure
view signals
run 2160 ns
