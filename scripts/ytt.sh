CLIP=$(xclip -o)
if [[ "$CLIP" =~ ^https://www.youtube.com/watch.* ]]
then
    notify-send  -t 3000 "Playing video" "$CLIP";
    mpv --hwdec=auto $CLIP
fi