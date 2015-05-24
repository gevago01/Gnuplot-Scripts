set format xy
set xlabel "s parameter"
set ylabel "Recall"
set title "Recall"
set grid
set xtics 0.1
#set ytics 100
set xrange[0:1]
set yrange[0.3:0.7]

#set format y "%.1t*E%+2T";

plot "data.txt" with linespoints notitle

#set terminal postscript eps size 3.5,2.62 enhanced color \
 #   font 'Helvetica,20' linewidth 2
#set output 'recall.eps'
set terminal epslatex size 3.5,2.62 color colortext
set output 'recall_pivoted.tex'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,
# by using an empty filename. 

#pause -1;
