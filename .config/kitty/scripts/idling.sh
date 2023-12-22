#!/usr/bin/zsh

# Applications names
codesh="code.sh"
speedosh="speedo.sh"

# List of running applications
apps=$(swaymsg -t get_tree | jq -r '.nodes[].nodes[].nodes[] | .. | (.id|tostring) + " " + .name?' | grep -e "[0-9]* ." | cut -c3-)

# Run applications if not already running
case "$apps" in *$codesh*) ;; *) kitty --session ~/.config/kitty/code.session & ;; esac
case "$apps" in *$speedosh*) ;; *) kitty --session ~/.config/kitty/speedometer.session & ;; esac

# Focus on workspace 10
swaymsg "workspace 10"
