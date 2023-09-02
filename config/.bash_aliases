# Defaults
alias ls='ls -lh --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'


# Docker
alias dcp='docker container prune'
alias dim='docker images'
alias drm='docker rmi'


# Folder shortcuts
alias dev='cd ~/Documents/Dev'
alias wordlists='cd /usr/share/wordlists'


## Custom executables
# Add custom executables to PATH
export PATH="$PATH:$HOME/scripts"
alias d2ip='domain2ip.sh "$@"'


# Server SSH
alias rakun='ssh <USER>@$(d2ip <DOMAIN>)'
alias panda='ssh <USER>@$(d2ip <DOMAIN>)'


## Other
alias poweroff='halt -p'
alias reboot='halt -r'
alias cls='clear'
alias pt='sudo powertop'
alias ff='freshfetch' # https://github.com/K4rakara/freshfetch.git
