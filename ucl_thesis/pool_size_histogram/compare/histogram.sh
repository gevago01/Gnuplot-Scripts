set style fill pattern
#The size of the gap is measured in multiples of individual boxes in the histograms.
set style histogram clustered gap 1
set boxwidth 0.5
set style data histograms
set xlabel ""
set ylabel "Pool Entries"
#set title "Pool Entries considered per retrieval method"
set grid
#set xtics 0.25
#set ytics 100
set xtics ("Content \n based" -0.25, "Pool \n size" 1, "All doc.\n pairs" 2.25)
#set xrange[0:*]
#set yrange[0:*]
set logscale y
#disable legend
set nokey

#set format y "%.1t*E%+2T";

plot "data.txt" u 2  fs pattern 1,"" u 3 ,"" u 4 fs pattern 2;

#set terminal png # select the file format
set terminal epslatex size 3.5,2.62 color colortext

set output "pool_entries.tex" # specify the output filename
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,
# by using an empty filename. 

#pause -1;
