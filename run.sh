#!/bin/bash

# run.sh – Runs VLC Player if installed

if command -v vlc >/dev/null 2>&1; then
    echo "Launching VLC Player..."
    vlc &
else
    echo "VLC is not installed. Please run 'install-vlc.sh' or install VLC via your package manager."
    exit 1
fi