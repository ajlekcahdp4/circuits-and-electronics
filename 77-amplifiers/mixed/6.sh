#! /usr/bin/gnuplot
set terminal png size 1200, 1000
set output "6.png"
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
f(x) = m * x + q
g(x) = a * x + b
fit f(x) '3.txt' via m, q
fit g(x) '3-2.txt' via a, b
p "3-2.txt" ls 1 t "3-2", g(x) ls 2, \
"3.txt" ls 1 t "3-1", f(x) ls 2
