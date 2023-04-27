#!/bin/bash

# Script for a base installation in debian of i3
# Run this script with root permissions

# xorg display server installation
apt install -y xorg xbacklight xbindkeys xvkbd xinput xorg-dev

# i3 and related packages
apt install -y i3 i3blocks rofi dmenu feh xss-lock redshift redshift-gtk system-config-printer autorandr scrot

# usb automount
apt install -y udiskie

# clipboard manager
apt install parcellite

# Notification daemon
apt install -y dunst

# Gnome stuff needed: Policykit, Keyring
apt install -y policykit-1-gnome gnome-keyring

# Dbus
apt install dbus

# Network Manager
apt install -y network-manager-gnome wireless-tools

# Installation for Appearance management
apt install -y lxappearance 

# Programs I use from xfce4
apt install -y xfce4-settings xfce4-power-manager xfce4-terminal

# File manager
apt install -y ranger atool pcmanfm

# Some applications
apt install -y zathura vlc

# Printing service
apt install -y cups
systemctl enable cups

# Some fonts
apt install -y fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus fonts-cascadia-code

# Events from battery and power adapter
apt install -y acpi acpid
systemctl enable acpid

# Sound packages
apt install -y pulseaudio alsa-utils pavucontrol pasystray

# Bluetooth
apt install -y bluez blueman blueman-applet
systemctl enable bluetooth

# Languages, compilers
apt install -y lua luarocks python3 rustc cargo
apt install -y gcc g++ gdb gdb-multiarch make git openocd cmake ninja

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
apt install -y intel-microcode

# Basic system utilities 
apt install -y mtools dosfstoolsgvfs-backends neofetch htop

# userspace virtual filesystem
apt install -y gvfs-backends

# multicast DNS server discovery
apt install -y avahi-daemon 
systemctl enable avahi-daemon

# Web browser and tools
apt install -y firefox-esr curl wget

# Editors: vim from deb package
apt install -y vim

# And neovim from appimage
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
mv nvim.appimage /opt
chmod ugo+x /opt/nvim.appimage
ln -s /opt/nvim.appimage /usr/local/bin/nvim

