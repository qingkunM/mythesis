#set size square
set size 1,1
set xrange [1:1000]
set yrange [1:84]
set logscale x

#set key right bottom box
set key left top Left reverse
set xlabel '时间（秒）'
set ylabel '实例数量'
# [SM] fix
#set title 'log'
set terminal pdf color dashed font "Times-Roman,10"
set output 'log.time.pdf'
plot 'log-accumulated.plain.time.data' using 3:0 with lines lw 6 lt 1 title 'KLEE-Fix' , 'log-accumulated.simset.time.data' using 3:0 with lines lw 6 lt 3 title 'FastSE' , 'log-accumulated.ipa.time.data' using 3:0 with lines lw 6 lt 5 title 'KLEE' 
