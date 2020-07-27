#!/usr/bin/python

import os
import time
import rrdtool
import board
import adafruit_dht

dhtDevice = adafruit_dht.DHT22(board.D4)

def do_update():
    timestamp = time.time()
    temperature = dhtDevice.temperature
    humidity = dhtDevice.humidity
# in case of error, retry after 5 seconds
    for retry in (5, 1):
        try:
            rrdtool.update("/opt/templog/data/templog.rrd",
                           "%d:%s:%s" % (timestamp,
                                        humidity,
                                        temperature))
            return
        except:
            time.sleep(retry * 1000)

do_update()
