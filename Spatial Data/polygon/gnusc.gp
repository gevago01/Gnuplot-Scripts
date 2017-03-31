set format xy
set xlabel "x"
set ylabel "y"
set title "2D Polygon"
#set grid
set xtics 1
set ytics 1
set xrange[0:4]
set yrange[0:8]
#set logscale y
#set format y "%.1t*E%+2T";

plot 'data.txt' with filledcurves notitle linetype rgb "steelblue 3"
#set terminal postscript eps size 3.5,2.62 enhanced color \
#   font 'Helvetica,20' 
#set output 'iter.eps'
set terminal epslatex size 3.5,2.62 color colortext
set output 'polygon.tex'
replot # repeat the most recent plot command

set terminal x11 # restore the terminal settings
set output # send output to the screen again,
