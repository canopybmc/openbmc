#!/bin/sh

for i in /sys/class/hwmon/*/pwm1
do
	echo 92 > $i
done
