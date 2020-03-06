#!/bin/bash

# Terminate running instances of polybar
killall -q polybar

# Wait until the processes have been shutdown 
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar standard >> /tmp/polybar1.log 2>&1 &
# polybar bar2 >> /tmp/polybar2.log 2>&1 &

echo "Bars launched..."
