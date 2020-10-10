#g=$(slop --highlight --color=0.3,0.4,0.6,0.4 -f "%g")
g=$(slop -f "%g")
if [ -z "$g" ]; then
	exit
else
	echo $g
fi
