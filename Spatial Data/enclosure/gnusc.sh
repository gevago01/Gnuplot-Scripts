set format xy
set xlabel ""
set ylabel ""
set title "Enclosure Query"
#set grid
unset xtics 
unset ytics 
set xrange[0:7]
set yrange[0:7]
#set logscale y
#set format y "%.1t*E%+2T";

set object 1 rect from 1,1 to 5,5 fs empty border 0 

plot 'points.txt' index 0 with filledcurves  linetype rgb "steelblue 3" notitle,\
 '' index 1 with points pointtype 5 pointsize 2 linecolor rgb "steelblue 3" notitle,\
 '' index 2 with points pointtype 1 pointsize 10  linecolor rgb "steelblue 3" notitle,\
 '' index 3 with filledcurves  linetype rgb "steelblue 3" notitle

#set terminal postscript eps size 3.5,2.62 enhanced color \
#   font 'Helvetica,20' 
#set output 'iter.eps'
set terminal epslatex size 3.5,2.62 color colortext
set output 'enclosure.tex'
replot # repeat the most recent plot command

set terminal x11 # restore the terminal settings
set output # send output to the screen again,
