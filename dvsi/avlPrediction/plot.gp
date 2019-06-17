set format xy
set xlabel "AVL Index Size"
set ylabel "Time(ns) (logscale)" 
#move legend to top left
#set key right top
#move lenged outside
set key right bottom
#to get the colors run in gnuplot terminal:
#show palette colornames
#set yrange[0:1.2]
set logscale y
#set logscale x
set format x "%.0sx10^{%T}"
#set xrange [10000:18000]
set xtics 10000, 30000, 180000
set size ratio 0.5
plot "results.txt"  index 0 using 1:2 with linespoints   title "Measured"  linecolor rgb "black"  pt 6 pointsize 2, \
""  index 1 using 1:2  with linespoints  title "Predicted" linecolor rgb "black"  pt 2 pointsize 2



set terminal postscript eps  enhanced color font 'Helvetica,24' linewidth 2
set output 'avlIndexPrediction.eps'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,

