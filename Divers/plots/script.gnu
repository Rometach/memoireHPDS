#set xlabel "Années"
#set ylabel "Nombre d'oeuvres"

clear
reset
unset key
# Make the x axis labels easier to read.
set xtics rotate out
# Select histogram data
set style data histogram
# Give the bars a plain fill pattern, and draw a solid line around them.
set style fill solid border

set style histogram clustered
plot 'NumberOfWorks.dat' using 2:xticlabels(1) title columnheader

set terminal png
set output "NumberOfWorks.png"
set title "Productivité de Karlheinz Essl"
replot
set terminal wxt

# TENTATIVE
plot for [COL=2:10] 'Instruments.dat' using 1:COL with line
set terminal png
set output "Intruments.png"
set title "!!!"
replot
set terminal wxt


# COMPUTER MUSIC
plot 'ComputerMusic.dat' using 1:2 title 'Computer music' with line
set terminal png
set output 'ComputerMusic.png'
set title "Oeuvres de Computer Music"
replot
set terminal wxt

# COMPUTER MUSIC 2
set style histogram clustered
plot for [COL=2:4] 'ComputerMusic2.dat' using COL:xticlabels(1) title columnheader
set terminal png
set output 'ComputerMusic2.png'
set title "Oeuvres de Computer Music"
replot
set terminal wxt

# COMPUTER MUSIC 3
set style histogram columnstacked
set style fill solid border -1
set boxwidth 0.8 relative
plot for [COL=1:36] 'ComputerMusic3.dat' using COL title columnheader
set terminal png
set output 'ComputerMusic3.png'
set title "Productivité de Karlheinz Essl au cours de sa carrière"
replot
set terminal wxt

# MIPS
set logscale y
set xrange [1950:2010]
set style line 1 lc rgb 'black' pt 5
plot 'MIPS.dat' using 1:2 with linespoints, 'MIPS.dat' using 3:4 with linespoints
set terminal png
set output 'MIPS.png'
set title "MIPS"
replot
set terminal wxt


