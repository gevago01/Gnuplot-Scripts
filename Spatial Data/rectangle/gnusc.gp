set format xy
set xlabel "x"
set ylabel "y"
set title "Axes aligned MBR"
#set grid
set xtics 1
set ytics 1
set xrange[0:6]
set yrange[0:6]
#set logscale y
#set format y "%.1t*E%+2T";

set object 1 rect from 2,2 to 4,4 fs empty border 0 

plot 'points.txt' with filledcurves  notitle linetype rgb "steelblue 3"

#set terminal postscript eps size 3.5,2.62 enhanced color \
#   font 'Helvetica,20' 
#set output 'iter.eps'
set terminal epslatex size 3.5,2.62 color colortext
set output 'rectangle.tex'
replot # repeat the most recent plot command

set terminal x11 # restore the terminal settings
set output # send output to the screen again,
