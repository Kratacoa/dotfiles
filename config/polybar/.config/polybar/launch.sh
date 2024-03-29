#!/bin/bash

# Terminate running instances of polybar
# if [ -n $(pidof polybar) ]; then
#     for instance in $(pidof polybar);
#     do
#     	kill -9 "$instance"
# 	done
# fi
pkill -9 polybar

# Wait until the processes have been shutdown 
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
echo "-----" | tee -a /tmp/polybar1.log
polybar standard > /tmp/polybar1.log 2>&1 &

echo "Bars launched..." | tee -a /tmp/polybar1.log
