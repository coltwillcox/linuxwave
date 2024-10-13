#!/usr/bin/zsh

pgrep -f kasciiquarium || /sbin/kitty --class=kasciiquarium --config ~/.config/kitty/kitty-colored.conf asciiquarium -t & /sbin/hyprlock -c /home/colt/.config/hypr/hyprlock.conf && pkill -f asciiquarium
