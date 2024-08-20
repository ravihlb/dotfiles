# Install (hard link) zsh config file into user home dir
currDir=$(dirname $0)

sudo ln "$dirname/.zshrc" -t ~/.zshrc
