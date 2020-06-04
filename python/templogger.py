#!/usr/bin/python

import os
import time
import rrdtool
import Adafruit_DHT
import logging

DHT_SENSOR = Adafruit_DHT.DHT22
DHT_PIN = 4

def do_update():
    timestamp = time.time()
    humidity, temperature = Adafruit_DHT.read_retry(DHT_SENSOR, DHT_PIN)
# in case of error, retry after 5 seconds
    for retry in (5, 1):
        try:
            rrdtool.update("/opt/templog/data/templog.rrd",
                           "%d:%s:%s" % (timestamp,
                                        humidity,
                                        temperature))
            return
        except:
            logging.exception("retry in %is because of: ", retry)
            time.sleep(retry * 1000)

do_update()