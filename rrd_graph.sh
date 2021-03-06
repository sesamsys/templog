#!/bin/sh

rrdtool graph /opt/templog/temp_hourly.png \
-w 500 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1h --end -300s \
--left-axis-format "%.1lf" \
--title "Last hour \n" \
--zoom=2 \
DEF:temp=/opt/templog/data/templog.rrd:temperature:AVERAGE \
LINE2:temp#ff0000:"Temperature" \
VDEF:tcur=temp,LAST \
VDEF:tavg=temp,AVERAGE \
VDEF:tmax=temp,MAXIMUM \
GPRINT:tcur:"Cur\: %2.2lf°C" \
GPRINT:tavg:"Avg\: %2.2lf°C" \
GPRINT:tmax:"Max\: %2.2lf°C" 

rrdtool graph /opt/templog/temp_daily.png \
-w 500 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1d --end -300s \
--left-axis-format "%.1lf" \
--title "Last day \n" \
--zoom=2 \
DEF:temp=/opt/templog/data/templog.rrd:temperature:AVERAGE \
LINE2:temp#ff0000:"Temperature" \
VDEF:tcur=temp,LAST \
VDEF:tavg=temp,AVERAGE \
VDEF:tmax=temp,MAXIMUM \
GPRINT:tcur:"Cur\: %2.2lf°C" \
GPRINT:tavg:"Avg\: %2.2lf°C" \
GPRINT:tmax:"Max\: %2.2lf°C" 

rrdtool graph /opt/templog/temp_weekly.png \
-w 1020 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1w --end -300s \
--left-axis-format "%.1lf" \
--title "Last week \n" \
--zoom=2 \
DEF:temp=/opt/templog/data/templog.rrd:temperature:AVERAGE \
LINE2:temp#ff0000:"Temperature" \
VDEF:tcur=temp,LAST \
VDEF:tavg=temp,AVERAGE \
VDEF:tmax=temp,MAXIMUM \
GPRINT:tcur:"Cur\: %2.2lf°C" \
GPRINT:tavg:"Avg\: %2.2lf°C" \
GPRINT:tmax:"Max\: %2.2lf°C" 

rrdtool graph /opt/templog/hum_hourly.png \
-w 500 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1h --end -300s \
--title "Last hour \n" \
--zoom=2 \
DEF:hum=/opt/templog/data/templog.rrd:humidity:AVERAGE \
LINE2:hum#0000ff:"Humidity" \
VDEF:hcur=hum,LAST \
VDEF:havg=hum,AVERAGE \
VDEF:hmax=hum,MAXIMUM \
GPRINT:hcur:"Cur\: %2.2lf%%" \
GPRINT:havg:"Avg\: %2.2lf%%" \
GPRINT:hmax:"Max\: %2.2lf%%" 

rrdtool graph /opt/templog/hum_daily.png \
-w 500 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1d --end -300s \
--title "Last day \n" \
--zoom=2 \
DEF:hum=/opt/templog/data/templog.rrd:humidity:AVERAGE \
LINE2:hum#0000ff:"Humidity" \
VDEF:hcur=hum,LAST \
VDEF:havg=hum,AVERAGE \
VDEF:hmax=hum,MAXIMUM \
GPRINT:hcur:"Cur\: %2.2lf%%" \
GPRINT:havg:"Avg\: %2.2lf%%" \
GPRINT:hmax:"Max\: %2.2lf%%" 

rrdtool graph /opt/templog/hum_weekly.png \
-w 1020 -h 300 --full-size-mode -a PNG --slope-mode \
--start -1w --end -300s \
--title "Last week \n" \
--zoom=2 \
DEF:hum=/opt/templog/data/templog.rrd:humidity:AVERAGE \
LINE2:hum#0000ff:"Humidity" \
VDEF:hcur=hum,LAST \
VDEF:havg=hum,AVERAGE \
VDEF:hmax=hum,MAXIMUM \
GPRINT:hcur:"Cur\: %2.2lf%%" \
GPRINT:havg:"Avg\: %2.2lf%%" \
GPRINT:hmax:"Max\: %2.2lf%%" 