set style fill pattern
#The size of the gap is measured in multiples of individual boxes in the histograms.
set style histogram clustered gap 1
set boxwidth 0.5
set style data histograms
set xlabel "Prefetching Depth"
set ylabel "Mean Absolute Error"
set title "Mean Absolute Deviation of BBA and CBA from CSR"
set grid
set xtics 1
set xrange[0:*]
set yrange[0:*]
#set logscale y

set format y "%.1t*E%+2T";

plot "data.txt" u 2 t "CBA" fs pattern 6,"" u 3 t "BBA";

set terminal png # select the file format
set output "graph.png" # specify the output filename
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,
# by using an empty filename. 

#pause -1;
