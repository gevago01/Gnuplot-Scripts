set format xy
set xlabel ""
set ylabel ""
set title ""
set grid
set xtics 20
set ytics 10
set mapping cartesian


# simple points plotting
set pointsize 2
unset colorbox

set label '' at 74.85,50.12 point pointtype 6 pointsize 4
set label 'D' at 0,40 
set label 'E' at 50,80 
set label 'C' at 120,70

plot '0.txt' w p palette  pointtype 2 notitle #pointsize 2 


set terminal postscript eps enhanced color font 'Helvetica,20' 
set output 'iter.eps'
#set terminal epslatex size 3.5,2.62 color colortext
#set output 'kdtree.tex'
replot # repeat the most recent plot command

set terminal x11 # restore the terminal settings
set output # send output to the screen again,
