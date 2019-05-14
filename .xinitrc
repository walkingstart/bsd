
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
xset s 0 &
xset b 0 &
xset -dpms  &
setterm -blank 0 &
xblacklight -set 10 &
export LC_CTYPE="zh_CN.UTF-8"
urxvtd -q -o -f
# volumeicon &
# fcitx &
#exec awesome
 exec i3


