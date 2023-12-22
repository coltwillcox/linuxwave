![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
![#f222ff](https://placehold.co/800x150/161925/f222ff.png?text=linuxwave&font=raleway)
![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
# linuxwave <sup>.dotfiles for Wayland/Sway desktop</sup>
### Sway <sup>.config/sway</sup>
Info:
* Will use swayidle to execute ```~/.config/kitty/scripts/idling.sh``` after 300 seconds if inactivity.

Links: 
* Sway: https://swaywm.org/
* swayidle: https://github.com/swaywm/swayidle

Edit:
* In file ```default```, bellow line ```exec swayidle -w\```, add line ```timeout 300 '~/.config/kitty/scripts/idling.sh'\```
#
![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
### Waybar <sup>.config/waybar</sup>
Info:
* Waybar theme that displays workspaces, current window title, cpu, memory, temperature, network, volume, tray and clock.

Links: 
* Waybar: https://github.com/Alexays/Waybar
* Victor Mono font: https://rubjo.github.io/victor-mono/
* Dool: https://github.com/scottchiefbaker/dool

Edit:
* In ```.config/waybar/config``` change "DP-2" to correct monitor/output. Find output IDs with command: ```swaymsg -t get_outputs | jq -r 'sort_by(.rect.x) | .[].name'```
#
![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
### Kitty <sup>.config/kitty</sup>
Info:
* Kitty theme with additional scripts that will run two "hacky" sessions on workspace 10.
* Sessions are invoked from ```.config/sway/config.d/default```. One will display speedometer statistics, second will display random *.java, *.c o *.cpp file fom /usr folder.


Links: 
* Kitty: https://sw.kovidgoyal.net/kitty/
* Speedometer: https://excess.org/speedometer/

Edit:
* See Sway edit.
#
