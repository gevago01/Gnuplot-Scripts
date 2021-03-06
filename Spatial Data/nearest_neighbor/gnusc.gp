set format xy
set xlabel "x"
set ylabel "y"
set title "2D Points"
#set grid
set xtics 1
set ytics 1
set xrange[0:6]
set yrange[0:6]

set label "arrow" at 4,1 
set arrow from 1.1,1.1 to 1.9,1.9 ls 5 linetype 1 linecolor rgb 'black' label 'sad' heads 

plot 'points.txt' index 0 w p pointtype 7 pointsize 2 linecolor rgb 'red' notitle, '' index 1 w p pointtype 7 pointsize 2 linecolor rgb 'black' notitle

#set terminal postscript eps size 3.5,2.62 enhanced color \
#   font 'Helvetica,20' 
#set output 'iter.eps'
set terminal epslatex size 3.5,2.62 color colortext
set output 'nearest_neighbor.tex'
replot # repeat the most recent plot command

set terminal x11 # restore the terminal settings
set output # send output to the screen again,
