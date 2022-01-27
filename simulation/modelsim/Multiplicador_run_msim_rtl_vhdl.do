transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Quartus/quartus/bin64/Multiplicador/somadorsubtrator.vhd}
vcom -93 -work work {D:/Quartus/quartus/bin64/Multiplicador/registrador_r.vhd}
vcom -93 -work work {D:/Quartus/quartus/bin64/Multiplicador/registrador.vhd}
vcom -93 -work work {D:/Quartus/quartus/bin64/Multiplicador/mux2para1.vhd}
vcom -93 -work work {D:/Quartus/quartus/bin64/Multiplicador/igualazero.vhd}
vcom -93 -work work {D:/Quartus/quartus/bin64/Multiplicador/bo.vhd}
vcom -93 -work work {D:/Quartus/quartus/bin64/Multiplicador/bc.vhd}
vcom -93 -work work {D:/Quartus/quartus/bin64/Multiplicador/multiplicador.vhd}

vcom -93 -work work {D:/Quartus/quartus/bin64/Multiplicador/multiplicador_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  multiplicador_tb

add wave *
view structure
view signals
run 2060 ns
