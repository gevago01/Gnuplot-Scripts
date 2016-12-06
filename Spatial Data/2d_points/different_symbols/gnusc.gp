set format xy
set xlabel ""
set ylabel ""
set title ""
set grid


# plot points with different symbols
set pointsize 2

set label '' at 60.3,11.62 point pointtype 6 pointsize 4
set label 'D' at 0,40 
set label 'E' at 50,80 
set label 'C' at 120,70

plot '0.txt' index 0 w p pointtype 1 linetype 9 linecolor rgb "black" notitle, ''  index 1 w p pointtype 2  linetype 9   linecolor rgb "black" notitle, ''  index 2 w p pointtype 3  linetype 9   linecolor rgb "black" notitle



set terminal postscript eps enhanced color font 'Helvetica,20' 
set output 'points.eps'
replot # repeat the most recent plot command

set terminal x11 # restore the terminal settings
set output # send output to the screen again,
