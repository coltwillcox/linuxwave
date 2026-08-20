------------------
---- MONITORS ----
------------------

hl.monitor({ output = "DP-2", mode = "2560x1440@60", position = "0x0", scale = 1 })

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Bibata-Rainbow-Modern")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")

---------------------
---- MY PROGRAMS ----
---------------------

local mainMod     = "SUPER"
local terminal    = "/usr/bin/kitty"
local fileManager = "/usr/bin/dolphin"
local menu        = "/usr/bin/wofi -a -c ~/.config/wofi/config -I -o DP-2 -W 400 -b"
local powermenu   = "~/.config/wofi/scripts/power.py"

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("/usr/bin/uwsm app -- /usr/bin/hyprpaper")
    hl.exec_cmd("/usr/bin/uwsm app -- /usr/bin/waybar")
    hl.exec_cmd("/usr/bin/uwsm app -- /usr/bin/nm-applet")
    hl.exec_cmd("/usr/bin/uwsm app -- /usr/bin/hypridle")
    hl.exec_cmd("/usr/bin/uwsm app -- ~/.config/hypr/scripts/lock-hack.sh")
end)

-----------------------
---- LOOK AND FEEL ----
-----------------------

local borderGradient = {
    colors = { "rgb(743ad5)", "rgb(f222ff)", "rgb(f222ff)", "rgb(f222ff)", "rgb(743ad5)" },
    angle  = 0,
}

hl.config({
    input = {
        kb_layout    = "us",
        kb_variant   = "latinyz",
        repeat_delay = 250,
        repeat_rate  = 30,
        follow_mouse = 1,
        sensitivity  = 0,

        touchpad = {
            natural_scroll      = false,
            clickfinger_behavior = true,
        },
    },

    cursor = {
        no_warps = true,
    },

    general = {
        gaps_in     = 5,
        gaps_out    = 10,
        border_size = 1,

        col = {
            active_border   = borderGradient,
            inactive_border = "rgb(743ad5)",
        },

        layout        = "dwindle",
        allow_tearing = false,
    },

    ecosystem = {
        no_update_news = true,
    },

    group = {
        col = {
            border_active   = borderGradient,
            border_inactive = "rgb(743ad5)",
        },

        groupbar = {
            col = {
                active   = "rgba(161925FF)",
                inactive = "rgba(00000000)",
            },
            text_color  = "rgba(F222FFFF)",
            font_size   = 14,
            font_family = "Victor Mono SemiBold",
            height      = 24,
        },
    },

    decoration = {
        rounding = 0,
        blur = {
            enabled = true,
            size    = 3,
            passes  = 1,
        },
    },

    animations = {
        enabled = true,
    },

    dwindle = {
        preserve_split = true,
        force_split    = 2,
    },

    misc = {
        force_default_wallpaper  = 0,
        disable_hyprland_logo    = true,
        disable_splash_rendering = true,
        enable_anr_dialog        = false,
        session_lock_xray        = true,
    },
})

-- Gestures are declared with hl.gesture() in the Lua format, e.g.:
-- hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

hl.curve("popup", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })

hl.animation({ leaf = "windows",    enabled = true, speed = 3, bezier = "popup" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 7, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "fade",       enabled = true, speed = 7, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "default" })

---------------------
---- PER-DEVICE  ----
---------------------

hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})

-------------------------
---- WORKSPACE RULES ----
-------------------------

for _, entry in ipairs({
    { monitor = "DP-2", workspaces = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 } },
}) do
    for _, ws in ipairs(entry.workspaces) do
        hl.workspace_rule({ workspace = tostring(ws), monitor = entry.monitor })
    end
end

----------------------
---- WINDOW RULES ----
----------------------

-- Workspace assignments
hl.window_rule({ match = { class = "^(zen-left)$" },                     workspace = "1" })
hl.window_rule({ match = { class = "^(Postman)$" },                      workspace = "2" })
hl.window_rule({ match = { class = "^(tixati)$" },                       workspace = "3" })
hl.window_rule({ match = { class = "^(org.qbittorrent.qBittorrent)$" },  workspace = "3" })
hl.window_rule({ match = { class = "^(doublecmd)$" },                    workspace = "4" })
hl.window_rule({ match = { class = "^(org.kde.krusader)$" },             workspace = "4" })
hl.window_rule({ match = { class = "^(org.kde.dolphin)$" },              workspace = "4" })
hl.window_rule({ match = { class = "^(pcloud)$" },                       workspace = "4", float = true, center = true })
hl.window_rule({ match = { class = "^(firefox)$" },                      workspace = "5" })
hl.window_rule({ match = { class = "^(zen)$" },                          workspace = "5" })
hl.window_rule({ match = { class = "^(zen-beta)$" },                     workspace = "5" })
hl.window_rule({ match = { class = "^(zen-main)$" },                     workspace = "5" })
hl.window_rule({ match = { class = "^(brave-browser)$" },                workspace = "6" })
hl.window_rule({ match = { class = "^(vivaldi-stable)$" },               workspace = "6" })
hl.window_rule({ match = { class = "^(VSCodium)$" },                     workspace = "7" })
hl.window_rule({ match = { class = "^(codium-url-handler)$" },           workspace = "7" })
hl.window_rule({ match = { class = "^(codium)$" },                       workspace = "7" })
hl.window_rule({ match = { class = "^(steam)$" },                        workspace = "7" })
hl.window_rule({ match = { class = "^(steam_app_1174180)$" },            workspace = "7", fullscreen = true })
hl.window_rule({ match = { class = "^(smplayer)$" },                     workspace = "7" })
hl.window_rule({ match = { class = "^(gimp-3.0)$" },                     workspace = "7" })
hl.window_rule({ match = { class = "^(gimp)$" },                         workspace = "7" })
hl.window_rule({ match = { class = "^(org.nomacs.ImageLounge)$" },       workspace = "7" })
hl.window_rule({ match = { class = "^(org.bleachbit.BleachBit)$" },      workspace = "7" })
hl.window_rule({ match = { class = "^(es-de)$" },                        workspace = "7", fullscreen = true })
hl.window_rule({
    match     = { class = "^(com.libretro.RetroArch)$" },
    workspace = "7",
    float     = true,
    move      = { 0, 0 },
    size      = { 2560, 1440 },
    decorate  = false,
    no_anim   = true,
})
hl.window_rule({ match = { class = "^(org.shotcut.Shotcut)$" },          workspace = "7" })
hl.window_rule({ match = { class = "^(kmicro)$" },                       workspace = "9" })
hl.window_rule({ match = { class = "^(kitty)$" },                        workspace = "8" })
hl.window_rule({ match = { class = "^(Slack)$" },                        workspace = "9" })
hl.window_rule({ match = { class = "^(thunderbird)$" },                  workspace = "9" })
hl.window_rule({ match = { class = "^(com.viber.Viber)$" },              workspace = "10" })
hl.window_rule({ match = { class = "^(viber)$" },                        workspace = "10" })
hl.window_rule({ match = { class = "^(org.telegram.desktop)$" },         workspace = "10" })
hl.window_rule({ match = { class = "^(com.ayugram.desktop)$" },          workspace = "10" })

-- Wofi rules
hl.window_rule({ match = { class = "^(wofi)$" }, monitor = "DP-2", pin = true })

-- Floating window rules
hl.window_rule({
    match = { class = "^(org.pulseaudio.pavucontrol)$" },
    float = true,
    size  = { "monitor_w*0.5", "monitor_h*0.5" },
})

for _, zenClass in ipairs({ "^(zen-left)$", "^(zen)$", "^(zen-beta)$", "^(zen-main)$" }) do
    hl.window_rule({ match = { class = zenClass, title = "^(About Zen Browser)$" },  float = true })
    hl.window_rule({ match = { class = zenClass, title = "^(Incoming Connection)$" }, float = true })
end

hl.window_rule({ match = { class = "^(thunderbird)$", initial_title = "^(Message Filters)$" }, float = true })
hl.window_rule({ match = { class = "^(file-)$",       initial_title = "^(Export Image as)$" }, float = true })

for _, krusaderTitle in ipairs({
    "^(Pack — Krusader)$",
    "^(Deleting — Krusader)$",
    "^(Information — Krusader)$",
    "^(Copying — Krusader)$",
    "^(Creating directory — Krusader)$",
}) do
    hl.window_rule({ match = { class = "^(org.kde.krusader)$", title = krusaderTitle }, float = true })
end

-- Khackerminal rules
hl.window_rule({
    match   = { class = "^(khackerminal)$" },
    float   = true,
    monitor = "DP-2",
    move    = { 11, 56 },
    size    = { 2538, 1373 },
    pin     = true,
})

---------------------
---- KEYBINDINGS ----
---------------------

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q",      hl.dsp.window.close())
hl.bind(mainMod .. " + E",      hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + F",      hl.dsp.window.float())
hl.bind(mainMod .. " + G",      hl.dsp.group.toggle())
hl.bind(mainMod .. " + D",      hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P",      hl.dsp.window.pseudo())
hl.bind(mainMod .. " + T",      hl.dsp.exec_cmd(powermenu))
hl.bind("CTRL + ALT + Delete",  hl.dsp.exec_cmd(powermenu))
hl.bind(mainMod .. " + O",      hl.dsp.exec_cmd("~/.config/hypr/scripts/open-all.sh"))
hl.bind(mainMod .. " + K",      hl.dsp.exec_cmd("~/.config/hypr/scripts/kill-all.sh"))
hl.bind(mainMod .. " + V",      hl.dsp.exec_cmd("/bin/cliphist list | /bin/wofi -a -c ~/.config/wofi/config -I -o DP-2 -W 400 -b -d | /bin/cliphist decode | /bin/xargs -r /bin/wl-copy"))

-- Screenshots
hl.bind("Print",                             hl.dsp.exec_cmd("grimblast --notify --freeze save"))
hl.bind("CTRL + Print",                      hl.dsp.exec_cmd("grimblast --freeze copy area"))
hl.bind(mainMod .. " + SHIFT + S",           hl.dsp.exec_cmd("grimblast --notify --freeze save"))
hl.bind("CTRL + " .. mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("grimblast --freeze copy area"))

hl.bind(mainMod .. " + L",   hl.dsp.exec_cmd("~/.config/hypr/scripts/lock-hack.sh"))
hl.bind(mainMod .. " + TAB", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("ALT + TAB",         hl.dsp.focus({ workspace = "m+1" }))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "d" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- workspace 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),       { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),      { locked = true })

-- Media controls
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
