#!/bin/bash

while true; do
	FILES=$(locate -l 4096 "/usr/*.java" "/usr/*.c" "/usr/*.cpp" 2>/dev/null | sort -R)
	for f in $FILES; do
		[ -r "$f" ] || continue
		[ -s "$f" ] || continue
		[ -f "$f" ] || continue
		pygmentize "$f" |
			while IFS= read -r line; do
				echo "$line"
				sleep 0.$((1 + RANDOM % 4))
			done
	done
done
