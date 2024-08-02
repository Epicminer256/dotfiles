# My Dot Files

These are my config files when I use GNU/Linux.

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

<<<<<<< HEAD
Setup appimage (I like having apps I can save locally and run across distros)
After settings this up, it will install appimages to .local/share/applications and they will show up on the start screen.
```
sudo pacman -S wget
yay appimagelauncher
```
And download [AppimagePool](https://github.com/prateekmedia/appimagepool/releases) and run it. Have it intigrate.

Setup games
=======
Music and video
```
yay youtube-music-bin
```

Games and such
>>>>>>> origin/master
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

Everything else
```
yay sakura
<<<<<<< HEAD
yay univga
yay librewolf-bin
sudo pacman -Syu i3-wm i3status nvim gufw man rofi screen picom xclip xscreensaver xss-lock nitrogen
=======
yay pxplus-ibm-vga8
sudo pacman -Syu i3-wm i3status neovim gufw man rofi screen picom variety vim xclip xscreensaver xss-lock feh
>>>>>>> origin/master
yay pa-applet-git
```


# Useful stuff

- Using `pacman -Qe` shows which pacman packages you explicitly installed to your system
- Just running `yay` will update all pacman packages and AUR packages
- Use [Vimium](https://vimium.github.io/) to add vim keybinds to the browser
    - Learn the movement keys, then learn how to use "f" and "/". This will make browsing soo much faster
- I beg you to use ublock origin, even if you are using Brave's built-in adblock
- Harpoon GOAT in nvim
