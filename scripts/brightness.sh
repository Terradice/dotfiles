#!/bin/sh
showHelp() {
	echo "Usage: $0 -set num -get num -inc num -dec num"
	echo -e "\t--set Sets brightness to value"
	echo -e "\t--get Return current brightness"
	echo -e "\t--inc Increase brightness by value"
	echo -e "\t--dec Decrease brightness by value"
	exit 1
}


n=$(xrandr --current --verbose | sed -n '7,7p' | grep -E "[0-9].*" -o)

case "$1" in
	--get ) echo "$n";;
	--set ) xrandr --output eDP-1 --brightness "$2" ;;
	--inc ) 
		num=$(awk "BEGIN {print $n+$2; exit}")
		xrandr --output eDP-1 --brightness $num;;
	--dec )
		num=$(awk "BEGIN {print $n-$2; exit}")
		xrandr --output eDP-1 --brightness $num;;
	* ) showHelp;;
esac
