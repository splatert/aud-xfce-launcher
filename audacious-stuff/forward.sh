audacious --fwd
audacious --play

sleep .25

track=$(audtool current-song)
album=$(audtool --current-song-tuple-data album)

cover=$(find /tmp -name "audacious*" 2>/dev/null | tail -n 1)
notify-send -i "$cover" "$album"  "$track" -t 3000
