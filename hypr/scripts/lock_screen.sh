command="swaylock"
running=`ps ax | grep -v grep | grep $command | wc -l`
if [ $running -gt 0 ]; then
    echo "Command is running"
else
    swaylock
fi
