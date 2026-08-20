#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import subprocess


def run_menu():
    keys = (
        "\uf023  Log Out",
        "\uf186  Suspend",
#        "\uf2dc  Hibernate",
        "\uf021  Reboot",
        "\uf011  Shutdown",
    )

    actions = (
        "uwsm stop",
        "systemctl suspend",
 #       "systemctl hibernate",
        "systemctl reboot",
        "systemctl poweroff"
    )

    options = "\n".join(keys)
    choice = os.popen("echo -e '" + options + "' | wofi -a -b -d -i -o DP-2 -W 200 -k /dev/null -c ~/.config/wofi/config_nosearch -s ~/.config/wofi/style_nosearch.css").readline().strip()
    if choice in keys:
        subprocess.Popen(
            actions[keys.index(choice)],
            shell=True,
            stdin=subprocess.DEVNULL,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
            start_new_session=True,
        )


run_menu()
