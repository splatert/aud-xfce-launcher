audacious --play-pause

artist=$(audtool current-song)
album=$(audtool --current-song-tuple-data album)

st=$(audtool playback-status)


if [ "$st" = "playing" ]; then
    cover=$(find /tmp -name "audacious*" 2>/dev/null | tail -n 1)
    notify-send -i "$cover" "$artist" "$album" -t 3000
fi
