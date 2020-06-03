#!/bin/sh

rrdtool graph temp_graph.png \
-w 1024 -h 400 -a PNG --slope-mode \
--start -1h --end -300s \
--vertical-label "temperature (°C)" \
--left-axis-format "%.1lf" \
--title "Last hour \n" \
DEF:temp=data/templog.rrd:temperature:AVERAGE \
LINE2:temp#ff0000:"temperature"
