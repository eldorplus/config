WM="startfluxbox"
TERM="urxvt"

xhost -
xset -b

xset +fp /usr/share/fonts
xset +fp /usr/share/fonts/TTF
xset fp rehash

exec ${TERM} &
exec ${WM}
