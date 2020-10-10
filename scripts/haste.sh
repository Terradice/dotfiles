#!/bin/bash
if [ -z "$1" ]; then
    res=`curl -s XPOST https://hastebin.com/documents -d $1 <&0`
else
    res=`curl -s -XPOST https://hastebin.com/documents -d @- <&0`
fi
id=`echo $res | json_reformat | awk 'NR==2{ print $2 }' | cut -d\" -f2`
echo https://hastebin.com/$id
