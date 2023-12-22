#!/usr/bin/zsh

while read Iface Destination Gateway Flags RefCnt Use Metric Mask MTU Window IRTT; do
	[ "$Mask" = "00000000" ] && break
done </proc/net/route
speedometer -tx $Iface -rx $Iface -i 0.75
