set format xy
set xlabel "Grid Size"
set ylabel "Percentage of unoccupied cells" 
set title "Dead Space/Grid Size"
set grid
#move legend to top left
#set key right top
#move lenged outside
set key below
#set xtics 2
#set ytics 100
#set xrange[1:100]
#set yrange[1:3000]
#set logscale y
#set format y "%.1t*E%+2T";
#to get the colors run in gnuplot terminal:
#show palette colornames

plot "results.txt"  index 0 using 1:3 with linespoints   title "abs02"  linecolor rgb "black"  lt 6 pointsize 2, ""  index 1 using 1:3  with linespoints  title "bit02" linecolor rgb "black"  pointsize 2, ""  index 2 using 1:3  with linespoints  title "dia02" linecolor rgb "black"  pointsize 2, ""  index 3 using 1:3  with linespoints  title "par02" linecolor rgb "black"   pointsize 2, ""  index 4 using 1:3  with linespoints  title "ped02" linecolor rgb "black"   pointsize 2, ""  index 5 using 1:3  with linespoints  title "pha02" linecolor rgb "black"   pointsize 2, ""  index 6 using 1:3  with linespoints  title "rea02" linecolor rgb "black"   pointsize 2, ""  index 7 using 1:3  with linespoints  title "uni02" linecolor rgb "black"   pointsize 2


set terminal postscript eps  enhanced color    font 'Helvetica,20' linewidth 2
set output 'spaceOverhead.eps'
#set terminal epslatex size 3.5,2.62 color colortext
#set output 'r_binary_tree.tex'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again,

