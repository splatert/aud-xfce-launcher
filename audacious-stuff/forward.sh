audacious --fwd
audacious --play

sleep .25

artist=$(audtool current-song)
album=$(audtool --current-song-tuple-data album)

cover=$(find /tmp -name "audacious*" 2>/dev/null | tail -n 1)
notify-send -i "$cover" "$artist" "$album" -t 3000
