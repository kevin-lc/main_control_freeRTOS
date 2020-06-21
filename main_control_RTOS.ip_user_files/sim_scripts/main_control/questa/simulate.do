onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib main_control_opt

do {wave.do}

view wave
view structure
view signals

do {main_control.udo}

run -all

quit -force
