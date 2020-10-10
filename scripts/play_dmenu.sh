#!/bin/sh

OUTPUT=$(mpc listall | dmenu -i -l 6)
if [ ! -z "$OUTPUT" ]; then
    # mpc clear
    mpc search filename "$OUTPUT" | mpc insert
    mpc next
    mpc play
fi
