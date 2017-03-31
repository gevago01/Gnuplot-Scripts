set format xy
set xlabel "k"
set ylabel "Precision"
set title "Precision at 10"
set grid
#set xtics 2
#set ytics 100
set xrange[1:11]
set yrange[0.1:1.2]
#set logscale y
#set format y "%.1t*E%+2T";
#to get the colors run in gnuplot terminal:
#show palette colornames

plot "data.txt"  index 0 with linespoints  title "Content-based"  linecolor rgb "dark-olivegreen", "data.txt" index 1  with linespoints  title "Naive Recomm." linecolor rgb "dark-red"

#set terminal postscript eps size 3.5,2.62 enhanced color \
#   font 'Helvetica,20' linewidth 2
#set output 'iter.eps'
set terminal epslatex size 3.5,2.62 color colortext
set output 'precision_at_k.tex'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,
