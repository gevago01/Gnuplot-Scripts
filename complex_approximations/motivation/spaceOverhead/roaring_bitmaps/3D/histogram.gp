#The size of the gap is measured in multiples of individual boxes in the histograms.
set style data histogram
set style histogram clustered gap 1
set key outside below
set xlabel "Grid Size"
set ylabel "Compression Ratio"
set logscale y

plot "Roaring64Map.ratios.inverse.txt" u 2:xtic(1) t "abs03"  fill pattern 1,"" u 3:xtic(1) t "bit03"  fill pattern 2,"" u 4:xtic(1) t "dia03"  fill pattern 3,"" u 5:xtic(1) t "par03"  fill pattern 4,"" u 6:xtic(1) t "ped03"  fill pattern 5,"" u 7:xtic(1) t "pha03"  fill pattern 6,"" u 8:xtic(1) t "rea03"  fill pattern 7,"" u 9:xtic(1) t "uni03"  fill pattern 8, 1 t "" dt 7

set terminal postscript eps  enhanced  font 'Helvetica,20' linewidth 1
set output "stor_overhead_3D.eps" # specify the output filename
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,
# by using an empty filename. 
