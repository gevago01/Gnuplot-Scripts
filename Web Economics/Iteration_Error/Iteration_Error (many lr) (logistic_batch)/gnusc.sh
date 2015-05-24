set format xy
set xlabel "Iteration"
set ylabel "Root Mean Square Error"
set title "RMSE vs Iteration count"
set grid
set xtics 2
#set ytics 100
set xrange[0:19]
set yrange[0.45:1]
set logscale y
#set format y "%.1t*E%+2T";

plot "iteration_error.txt"  index 3 with lines title "alpha:1e-01" linewidth 8, \
     "iteration_error.txt" index 2 with lines title "alpha:1e-02" linewidth 6,\
     "iteration_error.txt" index 1 with lines title "alpha:1e-03" linewidth 4,\
     "iteration_error.txt" index 0 with lines title "alpha:1e-04" linewidth 2;

#"iteration_error.txt" index 0 with lines title "alpha:1e-01" linewidth 2;
#plot "iteration_error.txt" index 0 with linespoints title "variable alpha"
set terminal postscript eps size 3.5,2.62 enhanced color \
    font 'Helvetica,20' linewidth 2
#set output 'iter.eps'
#set terminal epslatex size 3.5,2.62 color colortext
set output 'logistic_batch.eps'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,
