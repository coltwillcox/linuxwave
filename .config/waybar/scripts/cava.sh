#!/usr/bin/env zsh

# Runs cava and colors its ascii bars with a per character gradient, printed as
# Pango markup for the custom/cavaleft and custom/cavaright Waybar modules.
# Both modules need "escape": false.
#
# Usage: cava.sh <cava config> <start color> <end color>

config=$1
start=${2#\#}
end=${3#\#}

cava -p "$config" | sed -u 's/;//g' | awk \
	-v r1=$((16#${start[1,2]})) -v g1=$((16#${start[3,4]})) -v b1=$((16#${start[5,6]})) \
	-v r2=$((16#${end[1,2]}))   -v g2=$((16#${end[3,4]}))   -v b2=$((16#${end[5,6]})) '
	BEGIN { OFS = "" }
	{
		n = length($0)
		out = ""
		for (i = 1; i <= n; i++) {
			t = (n > 1) ? (i - 1) / (n - 1) : 0
			r = int(r1 + t * (r2 - r1))
			g = int(g1 + t * (g2 - g1))
			b = int(b1 + t * (b2 - b1))
			out = out sprintf("<span color=\"#%02x%02x%02x\">%s</span>", r, g, b, substr($0, i, 1))
		}
		print out
		fflush()
	}'
