# getting arandr settings

arandr &
Layout > Save As
layout.sh

xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --off --output HDMI-2 --primary --mode 2560x1440 --pos 0x0 --rotate normal
