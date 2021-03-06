#!/bin/sh

# OUT.HEX
#./upload.lua out.hex

# TST0
echo "load 0 0xF000"    > /dev/ttyUSB0
sleep 1
echo "start 0"          > /dev/ttyUSB0
sleep 2
echo "stop 0"           > /dev/ttyUSB0
#sleep 1

# GPIO
echo "load 0 0x2000"    > /dev/ttyUSB0
#sleep 1
echo "start 0"          > /dev/ttyUSB0
#sleep 1

# APP1
echo "load 1 0xC000"    > /dev/ttyUSB0
#sleep 1
echo "link 1 1 0 243"   > /dev/ttyUSB0
#sleep 1
echo "link 1 2 0 242"   > /dev/ttyUSB0
#sleep 1
echo "start 1"          > /dev/ttyUSB0
sleep 5

# APP2
echo "load 2 0xC800"    > /dev/ttyUSB0
#sleep 1
echo "link 2 1 0 243"   > /dev/ttyUSB0
#sleep 1
echo "link 2 2 0 242"   > /dev/ttyUSB0
#sleep 1
echo "start 2"          > /dev/ttyUSB0
#sleep 1

sleep 5
echo "stop 1"           > /dev/ttyUSB0
sleep 2
echo "stop 2"           > /dev/ttyUSB0
sleep 1
