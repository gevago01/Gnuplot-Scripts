#set style fill pattern
#The size of the gap is measured in multiples of individual boxes in the histograms.
set style data histogram
set style histogram clustered gap 1
#set key outside above
#set boxwidth 0.5
set xlabel "Dataset"
set ylabel "Percentage of futile leaf node accesses"
set grid y
#set xtics 1
set ytics 0.1
set title "Query workload 1"
set yrange[0:1.3]

plot "data.txt" u 2:xtic(1) t "R*-Tree"  fill pattern 1,"" u 3:xtic(1) t "RR*-Tree"  fill pattern 2,"" u 4:xtic(1) t "HR-Tree"  fill pattern 3,"" u 5:xtic(1) t "QR-Tree"  fill pattern 4, 1 t "" dt 7

set terminal postscript eps  enhanced  font 'Helvetica,20' linewidth 1
set output "qr1.eps" # specify the output filename
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,
# by using an empty filename. 
