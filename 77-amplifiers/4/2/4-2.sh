#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "4.png"
set font "Times, 20"
set style line 1 lc rgb "blue" lw 4
set style line 2 lc rgb "red" lw 4 ps 3
set style line 3 lc rgb "black" lw 2
set grid xtics ytics
set xzeroaxis linestyle 3
set yzeroaxis linestyle 3
set xlabel "log(f, kHz)" font "Times, 20"
set ylabel "A" font "Times, 20"
set logscale y 10
plot "4.txt" smooth mcsplines linestyle 1 notitle, "4.txt" with points linestyle 2 notitle
