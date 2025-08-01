#!/bin/bash
set -e

# (C) Alex Mueller
#    This software is licensed under the FucKv2 License.
#
#    See the full text at: https://github.com/OptimiDEV/GabeOS-Installer/blob/main/LICENSE

echo '''  _    _                     _       _    '''
echo ''' | |  | |                   | |     | |   '''
echo ''' | |__| |_   _ _ __  _ __ __| | ___ | |_  '''
echo ''' |  __  | | | | '_ \| '__/ _` |/ _ \| __| '''
echo ''' | |  | | |_| | |_) | | | (_| | (_) | |_  '''
echo ''' |_|  |_|\__, | .__/|_|  \__,_|\___/ \__| '''
echo '''          __/ | |                         '''
echo '''         |___/|_|                         '''

echo 'Hyprdot Installer v0.1.0 | Installer by OptimiDev, Dotfiles by PFLAtm'
echo '--->'
echo 'Updating'
sudo pacman -Syu

echo 'Installing dependencies'
sudo pacman -S hyprland flatpak git waybar kitty hyprlock pulseaudio pavucontrol fuzzel yazi sddm --needed

echo 'Removing old/standard themes'
cd ~/.config && rm -rf waybar hyprland

echo 'Downloading Hyprdot'
cd /tmp
git clone https://github.com/PFLAtm/dotfiles.git
cd dotfiles

echo 'Install Hyprdot'
cp -r hypr ~/.config/
cp -r wallpapers ~/.config/hypr
cp -r waybar  ~/.config/

echo 'Install Zen Browser'
flatpak install app.zen_browser.zen

echo 'Enabling Core Services'
systemctl enable sddm

echo "Done!"
echo "Here's the list of combos that you can use after restarting this system and logging into hyprland:"
echo ""
echo " SUPER + Q               -- Opens the terminal"
echo " SUPER + SHIFT + Q       -- Close a window"
echo " SUPER + SHIFT + M       -- Exits the console"
echo " SUPER + E               -- Opens the file manager"
echo " SUPER + SHIFT + Space   -- Toggle floating mode"
echo " SUPER + P               -- Toggle pseudo split (dwindle)"
echo " SUPER + W               -- Toggle layout split (dwindle)"
echo " SUPER + F               -- Toggle fullscreen (smart)"
echo " SUPER + SHIFT + F       -- Toggle fullscreen (force)"
echo " SUPER + G               -- Toggle group"
echo " SUPER + Tab             -- Next in group"
echo " SUPER + SHIFT + Tab     -- Previous in group"
echo " SUPER + SHIFT + Escape  -- Lock the screen"
echo " SUPER + D               -- Open application launcher"
echo " SUPER + B               -- Open web browser"
echo " SUPER + Print           -- Screenshot (area)"
echo " SUPER + SHIFT + Print   -- Screenshot (fullscreen)"
echo " SUPER + C               -- Toggle notifications (swaync)"
echo ""
echo " SUPER + H/J/K/L         -- Move focus left/down/up/right"
echo " SUPER + SHIFT + H/J/K/L -- Move window left/down/up/right"
echo ""
echo " SUPER + 1-9/0           -- Switch to workspace 1-10"
echo " SUPER + SHIFT + 1-9/0   -- Move window to workspace 1-10"
echo ""
echo " SUPER + S               -- Toggle special workspace 'magic'"
echo " SUPER + SHIFT + S       -- Move window to special workspace 'magic'"
echo " SUPER + Mouse Scroll    -- Cycle through workspaces"
echo ""
echo " SUPER + R               -- Enter resize mode:"
echo "   then use H/J/K/L to resize window"
echo ""
echo "Thanks for using Hyprdot!"
echo "This program was made under the MIT license with love from OptimiDev"
echo "Now you can run 'reboot' and you'll be on the login screen for hyprland"
