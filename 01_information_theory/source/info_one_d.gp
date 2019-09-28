set size 0.7,0.7
unset key
set xlabel "$p$"
set ylabel "H(X)"
set border 3
set xtics nomirror
set ytics nomirror

plot [0:1] -x*log(x)/log(2)-(1-x)*log(1-x)/log(2)