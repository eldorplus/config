WM="startfluxbox"
TERM="urxvt"
XBINDKEYS="xbindkeys"

xhost -
xset -b

xset +fp /usr/share/fonts
xset +fp /usr/share/fonts/TTF
xset fp rehash

exec ${XBINDKEYS} &
exec ${TERM} &
exec ${WM}
