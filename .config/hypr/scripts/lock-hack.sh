#!/usr/bin/zsh

pgrep -f khackerminal || /sbin/kitty --class=khackerminal /opt/bin/hackerminal -t & /sbin/hyprlock && pkill -f khackerminal
