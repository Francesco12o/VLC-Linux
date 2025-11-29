#!/bin/bash

# install-vlc.sh – Installs VLC Player for popular Linux distributions

echo "Detecting Linux distribution..."

if command -v apt >/dev/null 2>&1; then
    echo "Ubuntu/Debian detected."
    sudo apt update
    sudo apt install -y vlc
elif command -v dnf >/dev/null 2>&1; then
    echo "Fedora detected."
    sudo dnf install -y vlc
elif command -v pacman >/dev/null 2>&1; then
    echo "Arch Linux detected."
    sudo pacman -Sy --noconfirm vlc
else
    echo "Unsupported distribution. Please install VLC using your package manager."
    exit 1
fi

echo "VLC installation complete."