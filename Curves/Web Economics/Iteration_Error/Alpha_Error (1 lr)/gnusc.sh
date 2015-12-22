set format xy
set xlabel "Iteration"
set ylabel "Root Mean Square Error"
set title "RMSE vs Iteration count"
set grid
set xtics 2
#set ytics 100
set xrange[0:7]
#set yrange[0.2:0.7]
set logscale y
#set format y "%.1t*E%+2T";

#plot "data.txt"  index 0 with linespoints title "alpha:1e-05", "data.txt" index 1 with linespoints title "alpha:1e-04","data.txt" index 2 with linespoints title "alpha:1e-03"
plot "alpha_error.txt" with linespoints title "variable alpha"
#set terminal postscript eps size 3.5,2.62 enhanced color \
 #   font 'Helvetica,20' linewidth 2
#set output 'iter.eps'
set terminal epslatex size 3.5,2.62 color colortext
set output 'linear_batch.tex'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,
