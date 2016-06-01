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
