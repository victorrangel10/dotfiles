#!/bin/bash

# List of packages
packages=(
  hyprland-git
  ly
  lsd
  kitty
  waybar
  waypaper
  swaync
  hyprpaper
  hyprsunset
  hyprlock
  wlogout
  python-pywal16
  nwg-look
  rofi-lbonn-wayland-git
  rofi-calc
  rofi-emoji
  zoom
  aseprite
  pipes.sh
  firefox
  brave-bin
  nvim
  discord
  telegram-desktop
  obsidian
  steam
  nautilus
  blueberry
  pavucontrol
  network-manager-applet
  neofetch
  cmatrix
  cava
  bibata-cursor-theme
  adw-gtk-theme
)

sudo pacman -Sy --noconfirm

# Install packages
for pkg in "${packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

echo "All packages installed."
