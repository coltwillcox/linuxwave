![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
![#f222ff](https://placehold.co/800x150/161925/f222ff.png?text=linuxwave&font=raleway)
![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

# linuxwave <sup>.dotfiles for Wayland/Hyprland desktop</sup>

<img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screenshot.png" width="800">

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Hyprland <sup>.config/hypr/</sup>

Info:

-   Will use hypridle to lock with `~/.config/hypr/scripts/lock-slow.sh` after 300 seconds of inactivity.
-	Will use hyprlock to instantly lock with `~/.config/hypr/scripts/lock-fast.sh` on SUPER + L keypress.
-	When screen is locked, asciiquarium will be run, and closed when unlocked.
-	Hyprlock config will blur screen, except asciiquarium area and screen borders.
-	Will use hyprpaper to set wallpaper.

Screens:

-   Hyprlock with asciiquarium:

    <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-hyprlock-0.png" height="150">

Links:

-   Hyprland: https://github.com/hyprwm/Hyprland
-   Hyprlock: https://github.com/hyprwm/hyprlock
-	Hypridle: https://github.com/hyprwm/hypridle
-	Hyprpaper: https://github.com/hyprwm/hyprpaper
-   Candy icons: https://github.com/EliverLara/candy-icons
-	Asciiquarium: https://github.com/nothub/asciiquarium
-   VS Code synthwave: https://marketplace.visualstudio.com/items?itemName=coltwillcox.synthwave-x-fluoromachine-contrast

Edit:

-   File `.config/hypr/hyprland`, change `DP-2` to correct monitor/output. Find output info with command: `hyprctl monitors'`.
-   File `.config/hypr/hyprpaper`, change `DP-2` to correct monitor/output. Find output info with command: `hyprctl monitors'`.
-   Files `.config/hypr/hyprlock` and `.config/hypr/hyprlock-slow`, change `DP-2` to correct monitor/output. Find output info with command: `hyprctl monitors'`.

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Waybar <sup>.config/waybar/</sup>

Info:

-   Waybar theme that displays workspaces, current window title, cpu, memory, temperature, network, volume, tray and clock.

Links:

-   Waybar: https://github.com/Alexays/Waybar
-   Victor Mono font: https://rubjo.github.io/victor-mono/
-   Dool: https://github.com/scottchiefbaker/dool

Edit:

-   File `.config/waybar/config`, change `DP-2` to correct monitor/output. Find output info with command: `hyprctl monitors'`

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Kitty <sup>.config/kitty/</sup>

Info:

-   Kitty theme (with additional themes for full transparency and full opaqueness).

Screens:

-   Default theme with 0.5 transparency:

    <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-kitty-0.png" height="150">

Links:

-   Kitty: https://sw.kovidgoyal.net/kitty/

Edit:

-   None.

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Wofi <sup>.config/wofi/</sup>

Info:

-   Wofi theme with additional python script `power.py` for power menu.

Screens:

-   Applications and power menu:

    <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-wofi-0.png" height="150"> <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-wofi-1.png" height="150">

Links:

-   Wofi: https://sr.ht/~scoopta/wofi/

Edit:

-	Change `-o DP-2` in file `power.py` to correct display in use (find display info with `hyprctl monitors`).
-   Optionally uncomment `Hibernate` lines in file `power.py`.

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Mako <sup>.config/mako/</sup>

Info:

-   Mako theme.

Screens:

-   With sweet-icons theme:

    <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-mako-0.png" width="200">

Links:

-   Mako: https://wayland.emersion.fr/mako/

Edit:

-   Optionally `icon-path` line in `./config/mako/config`

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Powerlevel10k <sup>.p10k.zsh</sup>

Info:

-   Powerlevel10k theme.

Screens:

-   With kitty default theme (0.5 transparency):

    <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-kitty-0.png" height="150">

Links:

-   Powerlevel10k: https://github.com/romkatv/powerlevel10k

Edit:

-   None.

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Zen Browser <sup>.zen/profile/chrome/, .zen/profile-vertical/chrome/</sup>

Info:

-   Zen Browser CSS customizations.

Screens:

-   Horizontal & vertical:

    <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-zen-0.png" height="150"> <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-zen-1.png" height="150">

Links:

-   Zen Browser: https://zen-browser.app

Edit:

-   Copy \*.css files from profile or profile-vertical folder, depending on screen orientation.

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
