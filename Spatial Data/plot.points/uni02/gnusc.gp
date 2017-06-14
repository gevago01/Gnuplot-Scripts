set format xy
set xlabel ""
set ylabel ""
set title ""
unset key
unset tics
unset border 


# plot points with different symbols
#set pointsize 1

plot '20k.txt' w p pointtype 1 linetype 9 linecolor rgb "black" notitle,



set terminal postscript eps enhanced color #font 'Helvetica,20' 
set output 'uni02.eps'
replot # repeat the most recent plot command

set terminal x11 # restore the terminal settings
set output # send output to the screen again,
