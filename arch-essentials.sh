localectl set-x11-keymap br, qwerty grp:win_space_toggle

# Install yay
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -Syu
yay -S --noconfirm picom nvim-nightly vlc brave-bin spotify gnome-terminal noto-fonts noto-fonts-emoji \
    tmux ttf-fantasque-nerd ttf-fantasque-sans-mono keepassxc syncthing 
