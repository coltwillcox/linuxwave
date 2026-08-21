#!/usr/bin/env zsh

pgrep -f khackerminal || /usr/bin/kitty --class=khackerminal /opt/bin/hackerminal -t & /usr/bin/hyprlock && pkill -f khackerminal
