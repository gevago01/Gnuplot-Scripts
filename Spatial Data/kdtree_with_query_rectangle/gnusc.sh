set format xy
set xlabel ""
set ylabel ""
set title ""
#set grid
#set xtics (2,4,5,7,8,9)
set xtics 1
#set ytics (1,2,3,4,6,7)
set ytics 1
set xrange[0:10]
set yrange[0:10]
# change border's color
#set border lw 1 lc rgb "grey"
#set logscale y
#set format y "%.1t*E%+2T";

# for the subscripts
set termopt enhanced    # turn on enhanced text mode

set object 1 rect from 3.5,3.5 to 10,10  fillcolor rgb "grey" fillstyle noborder
set arrow from 2,0 to 2,4 ls 5 linetype 1 linecolor rgb 'black' nohead
set arrow from 4,4 to 4,10 ls 5 linetype 1 linecolor rgb 'black' nohead
set arrow from 7,0 to 7,10 ls 5 linetype 1 linecolor rgb 'black' nohead
set arrow from 8,0 to 8,6 ls 5 linetype 1 linecolor rgb 'black' nohead

set arrow from 0,4 to 7,4 ls 5 linetype 1 linecolor rgb 'blue' nohead
set arrow from 7,6 to 10,6 ls 5 linetype 1 linecolor rgb 'blue' nohead

set label "$r_1$" at  2,7 center
set label "$r_2$" at  4.5,2 center
set label "$r_3$" at  7.5,3 center
set label "$r_4$" at  9,3 center

# simple points plotting
plot 'points.txt' w p pointtype 7 pointsize 2 notitle
#plot points with label for each point
#plot 'points.txt' index 0 using 1:2:(sprintf("(%d, %d)", $1, $2)) with labels point  pointtype 7 linetype 1 offset  2,-0.75  notitle #,\
#     '' index 1 using 1:2:(sprintf("(%d, %d)", $1, $2)) with labels point  pointtype 7 linetype 1 offset  2,1   notitle



#set terminal postscript eps size 3.5,2.62 enhanced color font 'Helvetica,20' 
#set output 'iter.eps'
set terminal epslatex size 3.5,2.62 color colortext
set output 'kdtree_with_query_rect.tex'
replot # repeat the most recent plot command

set terminal x11 # restore the terminal settings
set output # send output to the screen again,
