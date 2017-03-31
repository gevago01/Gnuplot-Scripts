set style fill pattern
#The size of the gap is measured in multiples of individual boxes in the histograms.
set boxwidth 0.5
set style data histogram
set style histogram rowstacked gap 1
set ylabel "Number of Queries"
set xlabel "Query Path Length"
set title "Title"
set grid
#set xtics 1
set xrange[-1:15]
set yrange[-1:510]
#set logscale y

#set format y "%.1t*E%+2T";

#plot "data.txt" u 2 t "" fs pattern 6 #,"" u 3 t "BBA";

plot "data.txt" u 2, '' u 3, '' u 4, '' u 5 , '' u 6 , '' u 7 , '' u 8 , '' u 9,  '' u 10 , '' u 11
set terminal postscript eps size 3.5,2.62 enhanced color    font 'Helvetica,20' linewidth 1
set output 'rtree_overlap.eps'
#set terminal png # select the file format
#set output "graph.png" # specify the output filename
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,
# by using an empty filename. 

#pause -1;
