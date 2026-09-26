# Install (hard link) config files into user home dir
currDir=$(pwd)

sudo ln "$dirname.environment" ~/.environment
sudo ln "$dirname.profile" ~/.profile
sudo ln "$dirname.tmux.conf" ~/.tmux.conf
sudo ln "$dirname.wezterm.lua" ~/.wezterm.lua

./install-zsh.sh
