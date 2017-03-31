set format xy
set xlabel "Dataset size (GB)"
set ylabel "Retrieval time (us)" 
set title "Time/Dataset Size"
set grid
#move legend to top left
set key left top
#move lenged outside
#set key outside
#set xtics 2
#set ytics 100
#set xrange[1:100]
set yrange[1:80000]
set logscale y
#set format y "%.1t*E%+2T";
#to get the colors run in gnuplot terminal:
#show palette colornames

plot "gnu_results.txt"  index 0 using 1:2 with linespoints   title "Our struct"  linecolor rgb "dark-olivegreen", "" index 0 using 1:2:3 with yerrorbars title "" linecolor rgb "dark-olivegreen" \
   , "gnu_results.txt"  index 1 using 1:2  with linespoints  title "R-tree" linecolor rgb "dark-red", "" index 1 using 1:2:3 with yerrorbars title "" linecolor rgb "dark-red" \
   , "gnu_results.txt"  index 2 using 1:2  with linespoints  title "Oct-tree" linecolor rgb "black", "" index 2 using 1:2:3 with yerrorbars title "" linecolor rgb "black" \
   , "gnu_results.txt"  index 3 using 1:2  with linespoints  title "Kd-tree" linecolor rgb "coral", "" index 3 using 1:2:3 with yerrorbars title "" linecolor rgb "coral" \
   , "gnu_results.txt"  index 4 using 1:2  with linespoints  title "3D-Grid" linecolor rgb "dark-magenta", "" index 4 using 1:2:3 with yerrorbars title "" linecolor rgb "dark-magenta"

set terminal postscript eps size 3.5,2.62 enhanced color    font 'Helvetica,20' linewidth 2
set output 'r_binary_tree.eps'
#set terminal epslatex size 3.5,2.62 color colortext
#set output 'r_binary_tree.tex'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,

