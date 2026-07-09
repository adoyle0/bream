#!/usr/bin/bash
set -euo pipefail
mkdir -p "$HOME/Pictures/Screenshots"
filepath="$HOME/Pictures/Screenshots/$(date +%FT%X%:z).png"

case "${1:-fullscreen}" in
    region)
        g=$(slurp -d); [ "$g" = "" ] && exit 1
        grim -g "$g" "$filepath" && \
            wl-copy < "$filepath" ;;
    freeze)
        p=$(mktemp -u).fifo; mkfifo "$p"
        wayfreeze --after-freeze-timeout 100 --after-freeze-cmd "echo > $p" & wp=$!
        read -r < "$p"; grim "$filepath" && \
            wl-copy < "$filepath"
        kill "$wp" 2>/dev/null; rm -f "$p" ;;
    freeze-region)
        p=$(mktemp -u).fifo; mkfifo "$p"
        wayfreeze --after-freeze-timeout 100 --after-freeze-cmd "echo > $p" & wp=$!
        read -r < "$p"; g=$(slurp -d)
        if [ "$g" = "" ]; then kill "$wp" 2>/dev/null; rm -f "$p"; exit 1; fi
        grim -g "$g" "$filepath" && \
            wl-copy < "$filepath"
        kill "$wp" 2>/dev/null; rm -f "$p" ;;
    annotate)
        grim "$filepath"; satty --filename "$filepath" --output-filename "$filepath" --actions-on-enter save-to-file --early-exit ;;
    *) grim "$filepath" && \
            wl-copy < "$filepath" ;;
esac
