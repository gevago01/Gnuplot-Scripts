set format xy
set xlabel "term 1"
set ylabel "term 2"
set title "Vector Space Model"
set grid
set xtics 0.2
#set ytics 0.1
#set ytics 100
set xrange[0:1]
set yrange[0:1]

#set format y "%.1t*E%+2T";

plot "data.txt" using 1:2:3:4 with vectors filled head lw 1 notitle


#set terminal postscript eps size 3.5,2.62 enhanced color \
 #   font 'Helvetica,20' linewidth 2
#set output 'ndcg10.eps'
set terminal epslatex size 3.5,2.62 color colortext
set output 'vectors_d.tex'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,
# by using an empty filename. 

#pause -1;
