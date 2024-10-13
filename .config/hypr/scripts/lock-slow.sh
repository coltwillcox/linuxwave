#!/usr/bin/zsh

pgrep -f kasciiquarium || /sbin/kitty --class=kasciiquarium --config ~/.config/kitty/kitty-colored.conf asciiquarium -t & /sbin/hyprlock -c /home/colt/.config/hypr/hyprlock-slow.conf && pkill -f asciiquarium
