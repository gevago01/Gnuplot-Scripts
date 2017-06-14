#set legend below plot
set key below
# set the title
set title "Space Overhead"
# Select histogram data
set style data histogram 
#set labels 
set xlabel "Datasets"
set ylabel "Bytes"
set grid y

set style histogram rowstacked 
set boxwidth 0.6 relative
plot 'data.txt' index 0 u 2:xtic(1) t "Level 1" fill pattern 1 , '' index 0 u 3 t 'Level 2' fill pattern 2 , '' index 0 u 4 t 'Level 3' fill pattern 3
set terminal postscript eps  enhanced  font 'Helvetica,20' linewidth 1
set output 'space_overhead.eps'
replot # repeat the most recent plot command,


set terminal x11 # restore the terminal settings
set output # send output to the screen again by using an empty filename. 

