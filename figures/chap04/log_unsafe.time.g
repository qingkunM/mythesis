#set size square
set size 1,1
set xrange [0.01:1109.32]
set yrange [1:45]
set logscale x

#set key right bottom box
set key left top Left reverse
set xlabel '时间（秒）'
set ylabel '实例数量'
# [SM] fix
#set title 'log_unsafe'
set terminal pdf color dashed font "Times-Roman,10"
set output 'log_unsafe.time.pdf'
plot 'log_unsafe-accumulated.plain.time.data' using 3:0 with lines lw 6 lt 1 title 'KLEE', 'log_unsafe-accumulated.ic3.time.data' using 3:0 with lines lw 6 lt 4 title 'FastSE'
