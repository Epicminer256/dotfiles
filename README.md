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
git submodule update --recursive --init
```

Install yay (Why doesnt the AUR have any good mirrors???)
```
sudo pacman -Syu --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

Basic packages
```
# Yeah, that first package is a font. It makes japanese and other languages not be boxes
sudo pacman -Syu wqy-microhei i3-wm i3status nvim man rofi picom xclip xss-lock feh dunst polkit-gnome fastfetch gnome-keyring gufw urxvt otf-firamono-nerd exa

# Extra
sudo pacman -S zeal xscreensaver

sudo systemctl start ufw
sudo systemctl enable ufw

yay librewolf-bin # My browser, a hardened version of firefox
yay pa-applet-git
yay URXVTConfig

# To set a default terminal (I forgot the command for user-only
echo TERMINAL=urxvt | sudo tee -a /etc/environment
```

Local hostname finding (I forgot why .local domains didnt work out of the box)
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

Laptop stuff
```
sudo pacman -Syu brightnessctl
```

Some games and stuff idk
```
sudo pacman -Syu lutris wine winetricks
yay taisei
yay mindustry
yay osu-lazer
yay prismlauncher
yay heroic-games-launcher-bin # for epic games

# FOR STEAM, READ! Enable multilib from pacman to install steam
sudo nano /etc/pacman.conf
sudo pacman -Syu steam
```

LightDM Setup
```
sudo pacman -Syu lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm

# and reboot to apply
```

# Useful stuff
- If using a distro with home directory encryption, DONT!!! Your home dir can fill up super full and cause data loss!!! Typical with ubuuntu distros.
- Using `pacman -Qe` shows which pacman packages you explicitly installed to your system
- Just running `yay` will update all pacman packages and AUR packages
- Use [Vimium](https://vimium.github.io/) to add vim keybinds to the browser
    - Learn the movement keys, then learn how to use "f" and "/". This will make browsing soo much faster
- I beg you to use ublock origin, even if you are using Brave's built-in adblock
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
