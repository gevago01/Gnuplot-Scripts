set format xy
set xlabel "Query Radius (degrees)"
set ylabel "Cell Accesses" 
#move legend to top left
#set key right top
#move lenged outside
set key right bottom
#to get the colors run in gnuplot terminal:
#show palette colornames
#set yrange[0:1.2]
#set logscale y
#set logscale x
set size ratio 0.5

plot "results.txt"  index 0 using 1:2 with linespoints   title "Measured"  linecolor rgb "black"  pt 1 pointsize 2, \
""  index 1 using 1:2  with linespoints  title "Predicted" linecolor rgb "black"  pt 2 pointsize 2



set terminal postscript eps  enhanced color font 'Helvetica,24' linewidth 2
set output 'cellAccessesAvg.eps'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,

