#!bin/bash

for i in $(ls /sys/class/hwmon/*/pwm1); do echo 255 > $i; done
