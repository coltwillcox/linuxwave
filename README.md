![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
![#f222ff](https://placehold.co/800x150/161925/f222ff.png?text=linuxwave&font=raleway)
![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
# linuxwave <sup>.dotfiles for Wayland/SwayFX desktop</sup>
<img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/screenshot.png" width="800">

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
### SwayFX <sup>.config/sway/</sup>
Info:
* Will use swayidle to execute ```~/.config/kitty/scripts/idling.sh``` after 300 seconds if inactivity.

Links: 
* SwayFX: https://github.com/WillPower3309/swayfx
* swayidle: https://github.com/swaywm/swayidle
* Candy icons: https://github.com/EliverLara/candy-icons
* VS Code synthwave: https://marketplace.visualstudio.com/items?itemName=coltwillcox.synthwave-x-fluoromachine-contrast

Edit:
* File ```./config/sway/config.d/default```, bellow line ```exec swayidle -w\```, add line ```timeout 300 '~/.config/kitty/scripts/idling.sh'\```
* File ```./config/sway/config```, add lines ```bindsym Mod1+Tab exec ~/.config/wofi/scripts/windows.py``` and ```bindsym $mod+Shift+e exec ~/.config/wofi/scripts/power.py```. If needed, disable those bindings elsewhere.

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
### Waybar <sup>.config/waybar/</sup>
Info:
* Waybar theme that displays workspaces, current window title, cpu, memory, temperature, network, volume, tray and clock.

Links: 
* Waybar: https://github.com/Alexays/Waybar
* Victor Mono font: https://rubjo.github.io/victor-mono/
* Dool: https://github.com/scottchiefbaker/dool

Edit:
* File ```.config/waybar/config```, change "DP-2" to correct monitor/output. Find output IDs with command: ```swaymsg -t get_outputs | jq -r 'sort_by(.rect.x) | .[].name'```

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
### Kitty <sup>.config/kitty/</sup>
Info:
* Kitty theme with additional scripts that will run two "hacky" sessions on workspace 10.
* Sessions are invoked from ```.config/sway/config.d/default```. One will display speedometer statistics, second will display random *.java, *.c o *.cpp file fom /usr folder.


Links: 
* Kitty: https://sw.kovidgoyal.net/kitty/
* Speedometer: https://excess.org/speedometer/

Edit:
* See SwayFX edit.

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
### Wofi <sup>.config/wofi/</sup>
Info:
* Wofi theme with additional python scripts: ```power.py``` for power menu, ```windows.py``` as Alt-Tab replacement.

Links: 
* Wofi: https://sr.ht/~scoopta/wofi/

Edit:
* See SwayFX edit.

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
### Mako <sup>.config/mako/</sup>
Info:
* Mako theme.

Links: 
* Mako: https://wayland.emersion.fr/mako/

Edit:
* Optionally ```icon-path``` line in ```./config/mako/config```

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
### Powerlevel10k <sup>.p10k.zsh</sup>
Info:
* Powerlevel10k theme.

Links: 
* Powerlevel10k: https://github.com/romkatv/powerlevel10k

Edit:
* None

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
