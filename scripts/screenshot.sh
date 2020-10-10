#!/bin/bash
read -r G < <(. selectregion.sh)
if [ -z $G ]; then
    maim | xclip -selection clipboard -t image/png
    exit
    #G=$(xwininfo -root | grep geometry | cut -d ' ' -f 4)
fi

opts="copy\nsave\ncopy and save\nupload"
selection=$(echo -e "${opts}" | dmenu)

case "$selection" in
  "copy")
    maim -g $G | xclip -selection clipboard -t image/png
    ;;
  ("save")
    #name=$(dmenu -p "Filename\?")
    #if [ -z "$name" ]; then
    name=`date +%Y-%m-%d_%H:%M:%S`
    #fi
    maim -g $G ~/media/screencast/pictures/$name.png
    ;;
  ("upload")
    maim -g $G | panacea | xsel -b
    ;;
   *)
    maim | xclip -selection clipboard -t image/png
    ;;
esac
