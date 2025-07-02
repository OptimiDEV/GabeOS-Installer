# Hyprdot Installer

> ⚡ A simple Bash script to install a custom Hyprland desktop environment using dotfiles by [PFLAtm](https://github.com/PFLAtm).

---

## 📦 What it does

- Updates your system packages
- Installs Hyprland and essential components
- Downloads and installs custom dotfiles (Hyprdot)
- Installs Zen Browser via Flatpak
- Enables SDDM display manager
- Sets up a beautiful, functional Wayland desktop

---

## 🛠️ Dependencies

This script is intended for **Arch Linux** or Arch-based distributions.

The script will install the following packages (if not already present):

- `hyprland`, `waybar`, `kitty`, `hyprlock`, `pavucontrol`
- `pulseaudio`, `fuzzel`, `yazi`, `sddm`, `flatpak`, `git`

Additional optional (but recommended) packages:

- `xdg-desktop-portal-hyprland`
- `wl-clipboard`
- `swaync`
- `networkmanager`
- `ttf-jetbrains-mono-nerd`, `noto-fonts`

---

## 🚀 Installation

```bash
bash <(curl -s https://raw.githubusercontent.com/OptimiDev/hyprdot-installer/main/install.sh)
