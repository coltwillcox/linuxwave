#!/usr/bin/env zsh

setopt sh_word_split

# Network interface to monitor. Leave empty to use the interface of the
# current default route, which also follows a switch between wired and wifi.
interface=""

# Scale of the percentages, set these to your own link or plan speed.
max_download=600000000 # ~600 Mbps
max_upload=60000000    # ~60 Mbps

download_icon="\udb83\uddb9"
upload_icon="\udb83\uddbc"

while :; do

	device=${interface:-$(ip route show default 2>/dev/null | awk '{print $5; exit}')}

	if [ -z "$device" ]; then
		text="<span color='#F222FF'>$download_icon</span>0%0<span color='#B32EEA'>$upload_icon</span>"
		printf '{"text": "%s", "tooltip": "No default route"}\n' "$text"
		sleep 2
		continue
	fi

	output=$(dool -n -N $device --noheaders --noupdate --bits --nocolor --ascii --integer 1 2 | tail -2 | tr k K | tr -d b | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g")
	array=($output)

	download=$(numfmt --from=iec --to-unit=1 $array[1])
	upload=$(numfmt --from=iec --to-unit=1 $array[2])

	download_percentage=$((100 * $download / $max_download))
	if [ $download_percentage -lt 0 ]; then download_percentage=0; fi
	if [ $download_percentage -gt 100 ]; then download_percentage=100; fi
	upload_percentage=$((100 * $upload / $max_upload))
	if [ $upload_percentage -lt 0 ]; then upload_percentage=0; fi
	if [ $upload_percentage -gt 100 ]; then upload_percentage=100; fi

	text="<span color='#F222FF'>$download_icon</span>$download_percentage%$upload_percentage<span color='#B32EEA'>$upload_icon</span>"
	tooltip="$download_icon$array[1] $upload_icon$array[2]"

	printf '{"text": "%s", "tooltip": "%s"}\n' "$text" "$tooltip"

done
