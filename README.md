# linuxwave <sup>.dotfiles for Wayland/Sway desktop</sup>
### Waybar <sup>.config/waybar</sup>
Required/recommened stuff: 
* Waybar: https://github.com/Alexays/Waybar
* Victor Mono font: https://rubjo.github.io/victor-mono/
* Dool: https://github.com/scottchiefbaker/dool

Edit:
* .config/waybar/config: Change "DP-2" to correct monitor/output. Find output IDs with command: ```swaymsg -t get_outputs | jq -r 'sort_by(.rect.x) | .[].name'```
#
