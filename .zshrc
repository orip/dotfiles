script_dir="$( cd "$( dirname "$0" )" && pwd )"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob notify
bindkey -e

autoload -Uz compinit
compinit

source $script_dir/phils_zsh_prompt.zsh
export EDITOR=vim
alias ll='ls -la'

# color, see https://github.com/twerth/dotfiles/blob/master/etc/bashrc
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1 

alias ls='ls --color=auto'
# ls colors, see: http://www.linux-sxs.org/housekeeping/lscolors.html
export LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rb=90'

source_if_exists() {
    [[ -r $1 ]] && source $1
}
source_if_exists $script_dir/private_env.zsh
source_if_exists $HOME/private_env.zsh
