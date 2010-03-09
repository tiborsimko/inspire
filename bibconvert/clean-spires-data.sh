#this removes non-ascii characters from xml data and joins lines that have broken tags
#a broken tag example: line 1: <ta line 2: g>
#usage sh clean-spires-data.sh < brokendata.xml > fixeddata.xml
perl -ne 's/[^[:ascii:]]//g; print;' | tr -d "\000-\011" | tr -d "\013-\014"| tr -d "\016-\037" | \
sed ':a; $!N;s/\na/a/;ta;P;D' | \
sed ':a; $!N;s/\nb/b/;ta;P;D' | \
sed ':a; $!N;s/\nc/c/;ta;P;D' | \
sed ':a; $!N;s/\nd/d/;ta;P;D' | \
sed ':a; $!N;s/\ne/e/;ta;P;D' | \
sed ':a; $!N;s/\nf/f/;ta;P;D' | \
sed ':a; $!N;s/\ng/g/;ta;P;D' | \
sed ':a; $!N;s/\nh/h/;ta;P;D' | \
sed ':a; $!N;s/\ni/i/;ta;P;D' | \
sed ':a; $!N;s/\nj/j/;ta;P;D' | \
sed ':a; $!N;s/\nk/k/;ta;P;D' | \
sed ':a; $!N;s/\nl/l/;ta;P;D' | \
sed ':a; $!N;s/\nm/m/;ta;P;D' | \
sed ':a; $!N;s/\nn/n/;ta;P;D' | \
sed ':a; $!N;s/\no/o/;ta;P;D' | \
sed ':a; $!N;s/\np/p/;ta;P;D' | \
sed ':a; $!N;s/\nq/q/;ta;P;D' | \
sed ':a; $!N;s/\nr/r/;ta;P;D' | \
sed ':a; $!N;s/\ns/s/;ta;P;D' | \
sed ':a; $!N;s/\nt/t/;ta;P;D' | \
sed ':a; $!N;s/\nu/u/;ta;P;D' | \
sed ':a; $!N;s/\nv/v/;ta;P;D' | \
sed ':a; $!N;s/\nw/w/;ta;P;D' | \
sed ':a; $!N;s/\nx/x/;ta;P;D' | \
sed ':a; $!N;s/\ny/cy/;ta;P;D' | \
sed ':a; $!N;s/\nz/cz/;ta;P;D' | \
sed ':a; $!N;s/\nA/A/;ta;P;D' | \
sed ':a; $!N;s/\nB/B/;ta;P;D' | \
sed ':a; $!N;s/\nC/C/;ta;P;D' | \
sed ':a; $!N;s/\nD/D/;ta;P;D' | \
sed ':a; $!N;s/\nE/E/;ta;P;D' | \
sed ':a; $!N;s/\nF/F/;ta;P;D' | \
sed ':a; $!N;s/\nG/G/;ta;P;D' | \
sed ':a; $!N;s/\nH/H/;ta;P;D' | \
sed ':a; $!N;s/\nI/I/;ta;P;D' | \
sed ':a; $!N;s/\nJ/J/;ta;P;D' | \
sed ':a; $!N;s/\nK/K/;ta;P;D' | \
sed ':a; $!N;s/\nL/L/;ta;P;D' | \
sed ':a; $!N;s/\nM/M/;ta;P;D' | \
sed ':a; $!N;s/\nN/N/;ta;P;D' | \
sed ':a; $!N;s/\nO/O/;ta;P;D' | \
sed ':a; $!N;s/\nP/P/;ta;P;D' | \
sed ':a; $!N;s/\nQ/Q/;ta;P;D' | \
sed ':a; $!N;s/\nR/R/;ta;P;D' | \
sed ':a; $!N;s/\nS/S/;ta;P;D' | \
sed ':a; $!N;s/\nT/T/;ta;P;D' | \
sed ':a; $!N;s/\nU/U/;ta;P;D' | \
sed ':a; $!N;s/\nV/V/;ta;P;D' | \
sed ':a; $!N;s/\nW/W/;ta;P;D' | \
sed ':a; $!N;s/\nX/X/;ta;P;D' | \
sed ':a; $!N;s/\nY/Y/;ta;P;D' | \
sed ':a; $!N;s/\nZ/Z/;ta;P;D' | \
sed ':a; $!N;s/\n0/0/;ta;P;D' | \
sed ':a; $!N;s/\n1/1/;ta;P;D' | \
sed ':a; $!N;s/\n2/2/;ta;P;D' | \
sed ':a; $!N;s/\n3/3/;ta;P;D' | \
sed ':a; $!N;s/\n4/4/;ta;P;D' | \
sed ':a; $!N;s/\n5/5/;ta;P;D' | \
sed ':a; $!N;s/\n6/6/;ta;P;D' | \
sed ':a; $!N;s/\n7/7/;ta;P;D' | \
sed ':a; $!N;s/\n8/8/;ta;P;D' | \
sed ':a; $!N;s/\n9/9/;ta;P;D' | \
sed ':a; $!N;s/\n\./\./;ta;P;D' | \
sed ':a; $!N;s/\n\;/\;/;ta;P;D' | \
sed ':a; $!N;s/\n\//\//;ta;P;D' | \
sed ':a; $!N;s/\n\&/\&/;ta;P;D' | \
sed ':a; $!N;s/\n>/>/;ta;P;D' | \
sed ':a; $!N;s/\n\-/\-/;ta;P;D' | \
sed ':a; $!N;s/\n?/?/;ta;P;D' | \
sed ':a; $!N;s/\n\=/\=/;ta;P;D'
