# My Dot Files

These are my config files when I use GNU/Linux.

# Setup (Arch)

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

Everything else
```
sudo pacman -Syu i3-wm i3status nvim gparted gufw gufw man rofi screen terminator picom univga variety vim xclip xscreensaver xss-lock
yay pa-applet-git
```

# Useful stuff

- Using `pacman -Qe` shows which pacman packages you explicitly installed to your system
- Just running `yay` will update all pacman packages and AUR packages
- Use [Vimium](https://vimium.github.io/) to add vim keybinds to the browser
    - Learn the movement keys, then learn how to use "f" and "/". This will make browsing soo much faster
- I beg you to use ublock origin, even if you are using Brave's built-in adblock
- Harpoon GOAT in nvim
