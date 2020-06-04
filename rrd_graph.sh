#!/bin/sh

rrdtool graph /opt/templog/temp_hourly.png \
-w 500 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1h --end -300s \
--vertical-label "temperature (°C)" \
--left-axis-format "%.1lf" \
--title "Last hour \n" \
--no-legend \
--zoom=2 \
DEF:temp=/opt/templog/data/templog.rrd:temperature:AVERAGE \
LINE2:temp#ff0000:"temperature"

rrdtool graph /opt/templog/temp_daily.png \
-w 500 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1d --end -300s \
--vertical-label "temperature (°C)" \
--left-axis-format "%.1lf" \
--title "Last day \n" \
--no-legend \
--zoom=2 \
DEF:temp=/opt/templog/data/templog.rrd:temperature:AVERAGE \
LINE2:temp#ff0000:"temperature"

rrdtool graph /opt/templog/temp_weekly.png \
-w 1020 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1w --end -300s \
--vertical-label "temperature (°C)" \
--left-axis-format "%.1lf" \
--title "Last week \n" \
--no-legend \
--zoom=2 \
DEF:temp=/opt/templog/data/templog.rrd:temperature:AVERAGE \
LINE2:temp#ff0000:"temperature"

rrdtool graph /opt/templog/hum_hourly.png \
-w 500 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1h --end -300s \
--vertical-label "humidity (%)" \
--title "Last hour \n" \
--no-legend \
--zoom=2 \
DEF:hum=/opt/templog/data/templog.rrd:humidity:AVERAGE \
LINE2:hum#0000ff:"humidity"

rrdtool graph /opt/templog/hum_daily.png \
-w 500 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1d --end -300s \
--vertical-label "humidity (%)" \
--title "Last day \n" \
--no-legend \
--zoom=2 \
DEF:hum=/opt/templog/data/templog.rrd:humidity:AVERAGE \
LINE2:hum#0000ff:"humidity"

rrdtool graph /opt/templog/hum_weekly.png \
-w 1020 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1w --end -300s \
--vertical-label "humidity (%)" \
--title "Last week \n" \
--no-legend \
--zoom=2 \
DEF:hum=/opt/templog/data/templog.rrd:humidity:AVERAGE \
LINE2:hum#0000ff:"humidity"