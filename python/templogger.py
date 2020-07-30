#!/usr/bin/python

import os
import time
import rrdtool
import board
import adafruit_dht

dhtDevice = adafruit_dht.DHT22(board.D17)

def do_update():
    try:
        timestamp = time.time()
        temperature = dhtDevice.temperature
        humidity = dhtDevice.humidity
        rrdtool.update("/opt/templog/data/templog.rrd",
                        "%d:%s:%s" % (timestamp,
                                    humidity,
                                    temperature))
        return
    except RuntimeError as error:
        print(error.args[0])

do_update()
