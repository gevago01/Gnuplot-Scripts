set format xy
set xlabel ""
set ylabel ""
set title ""
set grid
#set xtics (2,4,5,7,8,9)
set xtics 1
#set ytics (1,2,3,4,6,7)
set ytics 4
set mapping cartesian
#set xrange[0:10]
#set yrange[0:10]
#set logscale y
#set format y "%.1t*E%+2T";


# simple points plotting
set pointsize 2
#unset colorbox

plot '0.txt' w p palette  pointtype 2 #pointsize 2 notitle


#plot points with label for each point
#plot 'points.txt' index 0 using 1:2:(sprintf("(%d, %d)", $1, $2)) with labels point  pointtype 7 linetype 1 offset  2,-0.75  notitle #,\
#     '' index 1 using 1:2:(sprintf("(%d, %d)", $1, $2)) with labels point  pointtype 7 linetype 1 offset  2,1   notitle



set terminal postscript eps size 3.5,2.62 enhanced color font 'Helvetica,20' 
set output 'iter.eps'
#set terminal epslatex size 3.5,2.62 color colortext
#set output 'kdtree.tex'
replot # repeat the most recent plot command

set terminal x11 # restore the terminal settings
set output # send output to the screen again,
