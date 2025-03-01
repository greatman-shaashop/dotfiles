# Use zplug to handle all plugins
source "${HOME}/.zplug/init.zsh"

# Async for zsh, used by pure
zplug "mafredri/zsh-async", from:github, defer:0
zplug 'sindresorhus/pure', use:pure.zsh, from:github, as:theme

# oh-my-zsh
zplug 'plugins/git', from:oh-my-zsh
zplug 'plugins/github', from:oh-my-zsh
zplug 'plugins/extract', from:oh-my-zsh
zplug 'plugins/vi-mode', from:oh-my-zsh
zplug "lib/completion", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh

# zsh-users
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search", defer:3

zplug load

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install zplug plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Colors for man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="af-magic"

# Aliases
alias irs='ssh fitzz@vauhtis.thegroup.fi'
alias o='ls -latr'

# Start Eclim server
# alias eclim='/usr/share/eclipse/eclimd'
alias eclim='/opt/homebrew-cask/Caskroom/eclipse-ide/4.5.1/Eclipse.app/Contents/Eclipse/eclimd'

# Look weather
alias weather='curl wttr.in/'

# Dictionary
alias enfi='trans en:fi '
alias fien='trans fi:en '

# Subtitles
alias suben='subliminal download -s -l en '
alias subfi='subliminal download -s -l fi '

# Programming keyboard
alias setkb='setxkbmap -layout fi -variant programmer'

# Torrent
alias torrent='transmission-daemon; stig'

# Directory
alias cdw='cd ~/Documents/work/'
alias cdd='cd ~/Downloads/'

# Single monitor
alias singlemonitor='xrandr --output DVI-D-1 --off'

# Multimonitor
alias dualmonitor='xrandr --output DVI-D-1 --left-of DVI-I-1 --auto --output DVI-I-1 --primary --output HDMI-1 --same-as DVI-I-1'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

# source $ZSH/oh-my-zsh.sh

# User configuration

export GOPATH="${HOME}/Code/go"
export PATH="${HOME}/.npm-global/bin:${GOPATH}/bin:/usr/local/bin:$HOME/.bin:$HOME/.local/bin:$HOME/.cabal/bin:/usr/bin:/usr/sbin:/usr/local/sbin:/bin:/sbin"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='nvim'
# else
#   export EDITOR='mvim'
# fi

bindkey -M vicmd '/' history-incremental-search-backward
# bindkey '^j' vi-forward-word

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/greatman/.zshrc'

# autoload -Uz compinit
# compinit

# End of lines added by compinstall

# export TERM='tmux-256color'
# export JAVA_HOME=$(/usr/libexec/java_home)
