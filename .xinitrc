setxkbmap -option altwin:swap_alt_win
xset r rate 200 35
xmodmap ~/.xmodmap
xrandr --output LVDS1 --off
xrandr --output LVDS1 --auto --right-of HDMI1
xrandr --output HDMI1 --auto --left-of LVDS1 --primary
xbacklight -set 70
xfce4-power-manager&
pidgin&
xbindkeys&
compton&
nitrogen --restore&
volumeicon&
nm-applet&
exec i3
