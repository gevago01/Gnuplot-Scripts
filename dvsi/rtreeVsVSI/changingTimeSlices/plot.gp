set format xy
set xlabel "Time Slices (logscale)"
set ylabel "Time(s) (logscale)" 
#move legend to top left
#set key right top
#move lenged outside
set key top right
#to get the colors run in gnuplot terminal:
#show palette colornames
#set yrange[0:1.2]
set logscale y
set logscale x
set size ratio 0.5

plot "results.txt"  index 0 using 1:2 with linespoints   title "DR-Trees"  linecolor rgb "black"  pt 10 pointsize 2, \
""  index 1 using 1:2  with linespoints  title "DVSI" linecolor rgb "black"  pointsize 2



set terminal postscript eps  enhanced color font 'Helvetica,24' linewidth 2
set output 'rtree_vs_vsiTimeSlices.eps'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,

