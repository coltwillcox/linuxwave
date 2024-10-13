#!/usr/bin/zsh

setopt sh_word_split

max_download=419430400 # ~400 Mbps
max_upload=31457280    # ~30 Mbps
download_icon="\udb83\uddb9"
upload_icon="\udb83\uddbc"

output=$(dool -n --noheaders --noupdate --bits --nocolor --ascii --integer 1 2 | tail -2 | tr k K | tr -d b | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g")
array=($output)

download=$(numfmt --from=iec --to-unit=1 $array[3])
upload=$(numfmt --from=iec --to-unit=1 $array[4])

download_percentage=$((100 * $download / $max_download))
if [ $download_percentage -lt 0 ]; then download_percentage=0; fi
if [ $download_percentage -gt 100 ]; then download_percentage=100; fi
upload_percentage=$((100 * $upload / $max_upload))
if [ $upload_percentage -lt 0 ]; then upload_percentage=0; fi
if [ $upload_percentage -gt 100 ]; then upload_percentage=100; fi

text="$download_icon$download_percentage%$upload_percentage$upload_icon"
tooltip="$download_icon$array[3] $upload_icon$array[4]"

printf '{"text": "%s", "tooltip": "%s"}' "$text" "$tooltip"
