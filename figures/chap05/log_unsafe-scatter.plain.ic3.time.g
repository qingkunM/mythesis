set size square
set xrange [0.05:612.0]
set yrange [0.05:612.0]
set key at 200,0.2  reverse box
set key off
set logscale x
set logscale y
set xlabel 'KLEE'
set ylabel 'FastSE'
#set title 'log_unsafe-scatter - time'
set terminal pdf color font "Times-Roman,10" size 5,5
set output 'log_unsafe-scatter.plain.ic3.time.pdf'
set pointsize 1.0
set arrow from 0.05,306.0 to 306.0,306.0 nohead
set arrow from 306.0,0.05 to 306.0,306.0 nohead
set arrow from 0.05,153.0 to 153.0,153.0 nohead
set arrow from 153.0,0.05 to 153.0,153.0 nohead

plot x notitle lt 1, 2*x notitle lt 1, x/2 notitle lt 1, 10*x notitle lt 1, x/10 notitle lt 1, 'log_unsafe-scatter.plain.ic3.time.data' using ($2==0 ? $3 : -1):($2==0 ? $4 : -1) title 'safe' with points pointtype 2 lt 3, 'log_unsafe-scatter.plain.ic3.time.data' using ($2==1 ? $3 : -1):($2==1 ? $4 : -1) title 'unsafe' with points pointtype 6 lt 1

