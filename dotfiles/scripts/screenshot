#!/bin/bash

FILENAME="screenshot-$(date +%F-%H-%M-%S).png"
OUTPUT_PATH="$HOME/Pictures/Screenshots/$FILENAME"

if [[ $1 == "--clipboard" ]]; then
    if grim -g "$(slurp)" - | wl-copy; then
        notify-send "Screenshot copied to clipboard."
    else
        notify-send "Failed to take screenshot."
    fi
else
    if grim -g "$(slurp)" "$OUTPUT_PATH"; then
        notify-send "Screenshot saved: $OUTPUT_PATH"
    else
        notify-send "Failed to take screenshot."
    fi
fi
