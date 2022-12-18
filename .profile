# General
alias cls='clear'
alias rmrf='rm -rf'

alias nodejs='node'
alias cod='codium .'
alias v='nvim'
alias kk='cd ~/kekanto-delivery/'

# openvpn
alias ocon='openvpn3 session-start --config ~/client.ovpn'
alias olis='openvpn3 sessions-list'
alias odis='openvpn3 session-manage --disconnect --path $(openvpn3 sessions-list | grep "Path: "| sed -E "s/Path: //")'
alias recon='odis && ocon'

# git
alias gis='git status'
alias gic='git cherry -v' 
alias gip='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gdf='git diff'

# local server
alias ddup='docker-compose -f ~/kekanto-delivery/docker-compose-full.yml up'
alias ldb="mysql -h localhost delivery -P 8001 -uroot -p'root'"
alias cc='docker exec -it web1 bash -c "./bin/cake console"'
alias yw='yarn --cwd ~/kekanto-delivery/webroot watch'

# adb/scrcpy
alias adbip='adb shell ifconfig wlan0'
alias csrc='scrcpy -b5m -m1000'

# kubectl
alias k8s-staging-context="kubectl config use-context gke_deliverydireto-193621_us-east1_kcl-staging-use1"
alias k8s-prod-context="kubectl config use-context gke_deliverydireto-193621_southamerica-east1_kcl-production-sae1"
