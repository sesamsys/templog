#!/bin/sh

rrdtool create /opt/templog/data/templog.rrd --step 300   \
DS:humidity:GAUGE:600:-55:125  \
DS:temperature:GAUGE:600:-55:125  \
RRA:AVERAGE:0.5:1:576    \
RRA:AVERAGE:0.5:3:1344   \
RRA:AVERAGE:0.5:12:1488  \
RRA:AVERAGE:0.5:72:1984  \
RRA:MIN:0.5:72:1984      \
RRA:MAX:0.5:72:1984
