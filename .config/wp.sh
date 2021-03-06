#!/bin/sh

stuff () {
	wall=$(find $HOME/.config/wp.png 2>/dev/null)
	feh --no-fehbg --bg-fill "$wall"
}

stuff

while [ -z $wall ]
do
	sleep 30 
done

while :
do
	output=$(inotifywait -q "$wall") && stuff || echo $output >> $HOME/inotify_critical.log && exit 2
done

