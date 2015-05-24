# Gnuplot-Scripts
A collection of my Gnuplot scripts that I use for my reports.
Gnuplot makes it easy to include professional-looking plots into your documents. 
To achieve this, you should set your gnuplot terminal to epslatex:

```
set terminal epslatex 
set output "mrr.tex"
plot "data.txt" with linespoints notitle
```

The above snippet creates a plot (in EPS) and a snippet of TeX (named mrr.tex in this case) that 
you should include in your document (using the input command) to insert the graph:

```
\input{mrr.tex}
```

The text (axes, labels, title) on the plot are rendered in TeX, not on the EPS, which makes it looking pretty nice.
Typically you will want to use the figure environment to make it easy to include a caption or a label:
```
\begin{figure}[tbp]
  \begin{center}
    \input{mrr.tex}
    \caption{Mean Reciprocal Rank}
    \label{plot:mrr}
  \end{center}
\end{figure}
```
You can control the size of the graph with:
```
set size 1.0, 1.0
```
in the Gnuplot code.

Alternatively, you can export  your plot as an eps file 
with everything renderred (e.g. axes labels) on the eps file. There exists a commented command
in every script to succeed this:

```
#set terminal postscript eps size 3.5,2.62 enhanced color \
#   font 'Helvetica,20' linewidth 2
```

Finally, to run the gnuplot scripts and create the plots run on the terminal:

```
gnuplot gnusc.sh
```
