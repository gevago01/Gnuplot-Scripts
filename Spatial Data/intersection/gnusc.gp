unset border
#unset ytics
#unset xtics
set format xy
set xlabel ""
set ylabel ""
set format y ""
set format x ""

set title "Intersection Query"
set grid
set xtics 1
set ytics 2.5
set xrange[0:3]
set yrange[0:10]
#set logscale y
#set format y "%.1t*E%+2T";


plot x*x*x*x+2.8 linetype 1 linecolor 3  notitle, 'points.txt' with points pointtype 5 linetype rgb 'black' notitle

#set terminal postscript eps size 3.5,2.62 enhanced color \
#   font 'Helvetica,20' 
#set output 'iter.eps'
set terminal epslatex size 3.5,2.62 color colortext
set output 'river_intersection.tex'
replot # repeat the most recent plot command

set terminal x11 # restore the terminal settings
set output # send output to the screen again,
