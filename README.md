![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)
![#f222ff](https://placehold.co/800x150/161925/f222ff.png?text=linuxwave&font=raleway)
![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

# linuxwave <sup>.dotfiles for Wayland/Hyprland desktop</sup>

<img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-full-0.png" width="800">

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Dependencies

Session:

-   `hyprland`, `hyprlock`, `hypridle`, `hyprpaper` — compositor, lock, idle daemon, wallpaper.
-   `uwsm` — session manager. Everything is autostarted with `uwsm app --`, and the power menu logs out with `uwsm stop`.
-   `waybar`, `wofi`, `mako`, `kitty`.

Used by keybindings and Waybar modules:

-   `grimblast` — screenshots (Print, SUPER + SHIFT + S).
-   `cliphist` + `wl-clipboard` — clipboard history (SUPER + V). Both `wl-paste --watch` instances are autostarted from `hyprland.lua`.
-   `playerctl` — media keys.
-   `wireplumber` — volume keys and the Waybar volume module.
-   `pavucontrol` — opened by clicking the Waybar volume module.
-   `network-manager-applet` — tray applet.
-   `dolphin` — file manager (SUPER + E).
-   `cava` — Waybar audio visualizer.
-   `dool` and `coreutils` — used by `netspeed.sh`.
-   `zsh` and `python` — the shipped scripts.

Fonts:

-   Victor Mono — used everywhere. https://rubjo.github.io/victor-mono/
-   A Nerd Font for the glyph icons in Waybar, Wofi and the power menu, e.g. `ttf-hack-nerd`. Powerlevel10k additionally expects MesloLGS NF (`ttf-meslo-nerd-font-powerlevel10k`).
-   bargraph — used by the Waybar cava modules. Not packaged, install the TTF manually. CC BY-SA, by paul hunt: https://fontstruct.com/fontstructions/show/37128/bargraph

Themes:

-   `candy-icons` — Mako `icon-path`. https://github.com/EliverLara/candy-icons
-   `bibata-rainbow-cursor-theme` — `XCURSOR_THEME` is set to `Bibata-Rainbow-Modern`.
-   `qt6ct` — `QT_QPA_PLATFORMTHEME`.

Optional:

-   hackerminal — runs behind the lock screen. `lock-hack.sh` expects it at `/opt/bin/hackerminal`. https://github.com/coltwillcox/hackerminal

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Hyprland <sup>.config/hypr/</sup>

Info:

-   Desktop starts locked: `~/.config/hypr/scripts/lock-hack.sh` is run on Hyprland startup, so the session comes up locked and needs a password before use.
-   Will use hypridle to lock with `~/.config/hypr/scripts/lock-hack.sh` after 300 seconds of inactivity, and before sleep. Screens are turned off after 360 seconds.
-   Will use hyprlock to instantly lock with `~/.config/hypr/scripts/lock-hack.sh` on SUPER + L keypress.
-   When screen is locked, hackerminal will be run in a pinned kitty window (class `khackerminal`), and closed when unlocked.
-   Hyprland runs with `session_lock_xray`, so the desktop stays visible behind the lock surface and hackerminal shows through it.
-   Will use hyprpaper to set wallpaper.

Screens:

-   Hyprlock with hackerminal:

    <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-hyprlock-0.png" height="150">

Links:

-   Hyprland: https://github.com/hyprwm/Hyprland
-   Hyprlock: https://github.com/hyprwm/hyprlock
-   Hypridle: https://github.com/hyprwm/hypridle
-   Hyprpaper: https://github.com/hyprwm/hyprpaper
-   Candy icons: https://github.com/EliverLara/candy-icons
-   Hackerminal: https://github.com/coltwillcox/hackerminal
-   VS Code synthwave: https://marketplace.visualstudio.com/items?itemName=coltwillcox.synthwave-x-fluoromachine-contrast

Edit:

-   File `.config/hypr/hyprland.lua`, change `DP-2` to correct monitor/output. Find output info with command: `hyprctl monitors`.
-   File `.config/hypr/hyprpaper.conf`, change `DP-2` to correct monitor/output. Find output info with command: `hyprctl monitors`.
-   File `.config/hypr/hyprlock.conf`, change `DP-2` to correct monitor/output. Find output info with command: `hyprctl monitors`.

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Waybar <sup>.config/waybar/</sup>

Info:

-   Waybar theme that displays workspaces, current window title, audio visualizer, cpu, memory, temperature, network, volume, tray and clock.

Screens:

-   With candy-icons theme:

    <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-waybar-0.png" width="250">

Links:

-   Waybar: https://github.com/Alexays/Waybar
-   Cava: https://github.com/karlstav/cava
-   Dool: https://github.com/scottchiefbaker/dool
-   Victor Mono font: https://rubjo.github.io/victor-mono/

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

-   File `.config/wofi/scripts/power.py`, change `DP-2` to correct monitor/output. Find output info with command: `hyprctl monitors'`
-   File `.config/wofi/scripts/power.py` optionally uncomment `Hibernate` lines.

![#9963ff](https://placehold.co/800x15/9963ff/9963ff.png)

### Mako <sup>.config/mako/</sup>

Info:

-   Mako theme.

Screens:

-   With candy-icons theme:

    <img src="https://raw.githubusercontent.com/coltwillcox/linuxwave/master/pictures/screen-mako-0.png" width="200">

Links:

-   Mako: https://wayland.emersion.fr/mako/

Edit:

-   File `./config/mako/config` optionally `icon-path` line.

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
