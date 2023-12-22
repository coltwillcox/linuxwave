#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os


def run_menu():
    keys = (
        "\uf023  Log Out",
        "\uf186  Suspend",
        "\uf2dc  Hibernate",
        "\uf021  Reboot",
        "\uf011  Shutdown",
    )

    actions = (
        "swaymsg exit",
        "systemctl suspend",
        "systemctl hibernate",
        "systemctl reboot",
        "systemctl poweroff"
    )

    options = "\n".join(keys)
    choice = os.popen("echo -e '" + options +
                      "' | wofi -a -b -d -i -o DP-2 -W 200 -k /dev/null -c ~/.config/wofi/config_nosearch -s ~/.config/wofi/style_nosearch.css").readline().strip()
    if choice in keys:
        os.popen(actions[keys.index(choice)])


run_menu()
