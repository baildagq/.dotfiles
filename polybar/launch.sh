#!/bin/bash
#####################################
# Author: stout                     #
# mail: 2817253603@qq.com           #
# Created Time: 2019-09-13 19:39:09 #
#####################################

# kill polybar
#
# polybar example
killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar top &

echo "Bars launched..."
