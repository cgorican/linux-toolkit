#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi

# Defaults
PS1='[\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;34m\]\h\[\033[00m\]:\[\033[01;34m\]\w]\[\033[00m\]\$ '
. "$HOME/.cargo/env"


# Load Angular CLI autocompletion.
source <(ng completion script)
