#set size square
set size 1,1
set xrange [6.0:50681.0]
set yrange [1:45]
set logscale x

#set key right bottom box
set key left top Left reverse
set xlabel '内存消耗'
set ylabel '实例数量'
# [SM] fix
#set title 'log_unsafe_node'
set terminal pdf color dashed font "Times-Roman,10"
set output 'log_unsafe_node.number_of_nodes_created.pdf'
plot 'log_unsafe_node-accumulated.plain.number_of_nodes_created.data' using 3:0 with lines lw 6 lt 1 title 'KLEE' , 'log_unsafe_node-accumulated.simset.number_of_nodes_created.data' using 3:0 with lines lw 6 lt 3 title 'FastSE' 
