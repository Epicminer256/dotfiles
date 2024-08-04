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
sudo pacman -Syu i3-wm i3status nvim gufw man rofi screen picom xclip xscreensaver xss-lock feh dunst easyeffects terminator gtk-chtheme materia-gtk-theme lxqt-policykit
yay pa-applet-git
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
sudo pacman -S wget
yay appimagelauncher
mkdir ~/Applications
```
And download [AppimagePool](https://github.com/prateekmedia/appimagepool/releases) and run it. Have it intigrate. Set the downloads folder to your downloads and your Applications folder to your Applications folder in your home folder

Note: when installing apps in Appimage pool, goto your installed apps and integrate the apps with the Check button.


Setup games
```
sudo pacman -Syu lutris wine winetricks
yay taisei
yay mindustry
# These I would get from the appimage store
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
