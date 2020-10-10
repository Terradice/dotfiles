WIN=$(xdotool getactivewindow getwindowpid)
for pid in $(pgrep --parent $WIN)
do
    sink_id=$(pactl list sink-inputs | grep -P "Sink Input #|application.process.id" | grep -F "application.process.id = \"$pid\"" -B 1 | head -n 1 | cut --complement -c -12)
    pactl set-sink-input-mute "$sink_id" toggle &>/dev/null
done
