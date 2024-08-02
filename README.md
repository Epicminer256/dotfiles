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

Games and such
```
sudo pacman -Syu lutris wine winetricks
yay taisei
yay osu-lazer
yay mindustry
yay prismlauncher
```

Image and media editing
```
sudo pacman -Syu gimp krita
```

Game development
```
sudo pacman -Syu godot
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
yay univga
sudo pacman -Syu i3-wm i3status nvim gufw man rofi screen picom variety vim xclip xscreensaver xss-lock nitrogen
yay pa-applet-git
```


# Useful stuff

- Using `pacman -Qe` shows which pacman packages you explicitly installed to your system
- Just running `yay` will update all pacman packages and AUR packages
- Use [Vimium](https://vimium.github.io/) to add vim keybinds to the browser
    - Learn the movement keys, then learn how to use "f" and "/". This will make browsing soo much faster
- I beg you to use ublock origin, even if you are using Brave's built-in adblock
- Harpoon GOAT in nvim
