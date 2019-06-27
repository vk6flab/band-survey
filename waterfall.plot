# Source: http://superkuh.com/rtlsdr.html#keenerdappnote

# rtl_power output format
# 2013-08-19, 20:53:16, 55000000, 57000000, 1000000, 4096, -29.60, -29.60,

set timefmt '%Y-%m-%d, %H:%M:%S'
set view map

# Load a color palette
load 'default.plt'

set output '%NAME%-waterfall.png'
set term png size 1920, 1080

set key off
set title "Band survey: 0 - 1766 MHz"

set xlabel 'Frequency (Hz)'
# Label every 100 MHz
set xtics 100 * 1000000
set format x "%.1s %cHz"

set ylabel 'Time'
# Label every 3 Hours
set ytics 3 * 3600
set ydata time
set format y "%d/%m %H:%M"
# Show time backwards
set yrange [*:*] reverse

set cbrange [-25:25]
unset colorbox

plot '%NAME%.csv' using 3:(timecolumn(1)+7*3600):7 with points ps 0.1 pt 5 palette
