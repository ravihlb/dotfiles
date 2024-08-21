locale="en_US"

localectl set-x11-keymap "$locale", qwerty grp:win_space_toggle

# Install yay
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -Syu
./yay.sh
