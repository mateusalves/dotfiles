#/bin/bash
if xrandr | grep -q "HDMI-1-0 connected"; then
    xrandr --output HDMI-1-0 --primary --mode 2560x1440 & xrandr --output eDP-1 --mode 1920x1080 --left-of HDMI-1-0
else
    xrandr --output eDP-1 --primary --auto
fi
