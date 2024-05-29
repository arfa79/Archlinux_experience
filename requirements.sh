#!/bin/bash

# Install base dependencies
sudo pacman -S --needed base-devel git wget yajl

# Install yaourt
cd /tmp
git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si
cd /tmp/
git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg -si

# Enable Arch Linux CN repository
echo "[archlinuxcn]" >> /etc/pacman.conf
echo "Server = https://repo.archlinuxcn.org/\$arch" >> /etc/pacman.conf
sudo pacman -Sy
sudo pacman -S archlinuxcn-keyring

# Install additional packages
sudo pacman -S persepolis smplayer telegram-desktop handbrake obs-studio make gcc firefox chromium gnome-tweaks virtualbox zsh bluez ntfs-3g libreoffice android-tools docker unrar p7zip tmux

# Install nekoray-bin from AUR
git clone https://aur.archlinux.org/nekoray-bin.git
cd nekoray-bin/
makepkg -si

# Install ocs-url from AUR
# VPN Required
git clone https://aur.archlinux.org/ocs-url.git
cd ocs-url/
makepkg -si

# Install ventoy-bin from AUR
git clone https://aur.archlinux.org/ventoy-bin.git
cd ventoy-bin/
makepkg -si

echo "Installation finished. Please review any additional configurations and settings as needed."

# gnome extentions : gnome-shell-extensions gnome-shell-extension-dash-to-dock gnome-shell-extension-caf-feine gnome-shell-extension-persian-calendar gnome-shell-extension-blur-my-shell gnome-shell-extension-blyr gnome-shell-extension-hide-activities-button gnome-shell-extension-media-player-indicator gnome-shell-extension-openweather gnome-shell-extension-frippery-move-clock gnome-shell-extension-system-monitor gnome-shell-extension-run-command macos-mojave-gtk-theme
# Additional configurations
# Terminal customization with Zsh
# Bluetooth setup
# Adding Windows partitions

# Note: Please ensure to review and modify the script according to your specific requirements before running it.
