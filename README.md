# My Dot Files

These are my config files when I use GNU/Linux.

<!-- Hiiii -->

# Setup (Arch)

To clone this repo
```
cd ~
git init .
git remote add origin https://github.com/epicminer256/dotfiles.git
git fetch origin
git reset origin/main
git retore .
```

Basic packages
```
yay pxplus-ibm-vga
yay librewolf-bin # My browser
sudo pacman -S wqy-microhei # For chinese and japanese characters in browser
sudo pacman -Syu i3-wm i3status nvim gufw man rofi screen picom xclip xscreensaver xss-lock feh dunst easyeffects terminator gtk-chtheme materia-gtk-theme lxqt-policykit keepassxc
yay pa-applet-git

# To set a default terminal
echo TERMINAL=terminator | sudo tee -a /etc/environment
```

Local hostname finding
```
sudo pacman -S dnsmasq
echo -e "local=/local/\nexpand-hosts" | sudo tee -a /etc/dnsmasq.conf
echo -e "[Resolve]\nDNS=127.0.0.1\nDomains=local" | sudo tee -a /etc/systemd/resolved.conf
sudo systemctl restart dnsmasq
sudo systemctl restart systemd-resolved
sudo systemctl enable dnsmasq
sudo systemctl enable systemd-resolved
```

Download some starter wallpapers (saved under /usr/share/backgrounds)
```
sudo pacman -S archlinux-wallpaper
```

Install yay
```
sudo pacman -Syu --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

Laptop stuff
```
sudo pacman -Syu brightnessctl
```

Setup appimage (I like having apps I can save locally and run across distros)
```
yay appimagelauncher
mkdir ~/Applications
```


Setup games
```
sudo pacman -Syu lutris wine winetricks
yay taisei
yay mindustry
yay osu-lazer
yay prismlauncher

# Enable multilib from pacman
sudo nano /etc/pacman.conf
sudo pacman -Syu steam
```

Other Productivity
```
sudo pacman -Syu ttyper
```

LightDM Setup
```
sudo pacman -Syu lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm

# and reboot to apply
```
# Thunderbird
```
sudo pacman -S thunderbird systray-x-common
```


# Useful stuff

- Using `pacman -Qe` shows which pacman packages you explicitly installed to your system
- Just running `yay` will update all pacman packages and AUR packages
- Use [Vimium](https://vimium.github.io/) to add vim keybinds to the browser
    - Learn the movement keys, then learn how to use "f" and "/". This will make browsing soo much faster
- I beg you to use ublock origin, even if you are using Brave's built-in adblock
- Harpoon GOAT in nvim
- If you made your root directory encrypted, but it never asks for a password, make sure your mkinitpcio config is in the right order and your using the right kernal config.
    - `HOOKS=(base udev autodetect microcode modconf kms keyboard keymap consolefont block encrypt filesystems fsck)`
        - Read [Arch Linux's mkinitcpio](https://wiki.archlinux.org/title/Mkinitcpio) for more info
    - `cryptdevice=PARTUUID={partuuid}:{cryptsetupname} root=/dev/mapper/{cryptsetupname} rw`
- I recommend using lutris for installing windows games, BUUUT I don't recommend using the "Search the Lutris website for installers"
    - Instead, use "Add locally installed game", set your name and runner, set your wine prefix to where you want to install to, and save (don't worry about the executable rn)
    - Goto https://appdb.winehq.org/ and find your game
    - Follow the instuctions, but
        - Ignore creating wine prefixes
        - Use winetricks by selecting your game, and look at the bottom menu bar and click the wine icon, then click winetricks
            - Use default prefix when it asks
        - Launch the installer by clicking the wine icon on the bottom menu bar and "Run EXE inside Wine prefix"
        - After that is done, configure the game with the executable inside the install folder
