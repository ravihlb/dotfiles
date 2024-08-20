# Install (hard link) config files into user home dir
currDir=$(dirname $0)

sudo ln "$dirname/.profile" -t ~/.profile
sudo ln "$dirname/.bashrc" -t ~/.bashrc
sudo ln "$dirname/.tmux.conf" -t ~/.tmux.conf
