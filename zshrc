### Oh-My-Zsh configuration
### {

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Chosen oh-my-zsh theme.
ZSH_THEME="agnoster"

# Do not show user@hostname in prompt for localhost.
DEFAULT_USER=`whoami`

# Add right prompt to show time.
RPROMPT="%{$fg[yellow]%}[%*]"

# Do not check for updates. I don't want my shell checking for updates.
DISABLE_AUTO_UPDATE="true"

# Show red dots while waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins to use with oh-my-zsh.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

### }

### Miscellaneous options via [un]setopt ###
### {

# Load colors. What would I do without fancy colors?
autoload colors && colors

# Allow moving to directories without 'cd'
setopt autocd

# Don't beep. Ever. Seriously!
setopt no_hist_beep
unsetopt beep

# Allow fancy zsh globs!
setopt extendedglob

# Don't complain when there are no matched files.
unsetopt nomatch

# Don't let zsh interrupt me with notifications of completed background jobs.
unsetopt notify

### }

### History config ###
### {

# Make history more or less arbitrarily large.
HISTFILE=~/.histfile
HISTSIZE=10000000
SAVEHIST=10000000

# Store timestamps and time elapsed in history.
set extendedhistory

# Incrementally append to history, as soon as things are entered.
setopt incappendhistory

# Don't have duplicates in history.
setopt histignoredups

# Get rid of extraneous whitespace in history commands.
setopt hist_reduce_blanks

# Don't store 'history' and 'fc' commands into the history.
setopt histnostore

### }

### PATH and MANPATH variables ###
### {

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:."

# Add homebrew to path.
export PATH=/opt/homebrew/bin:${PATH}

# Add GNU utilities to path and man pages.
if brew --prefix &>/dev/null; then
    for package in coreutils findutils gnu-indent gnu-sed gnu-tar gnu-which grep; do
        export PATH=${BREWPREFIX}/opt/${package}/libexec/bin:${PATH}
        export MANPATH=${BREWPREFIX}/opt/${package}/libexec/man:${MANPATH}
    done
fi

### }

### Custom Aliases and Tweaks
### {

if [[ `uname` == Darwin ]]; then
    # Do not show the default Mac directories.
    alias ls='gls --color --hide=Documents --hide=Movies --hide=Music --hide=Pictures --hide=Public --hide=Library --hide=Desktop --hide=Applications'
fi

# Turn on `nvim` as the default editor if it exists.
if which nvim &>/dev/null; then
    alias vim='nvim'
    alias vi='nvim'
    export EDITOR=nvim
else
    export EDITOR=vim
fi

# Brew provisioning: run this to get a list of commands to run.
alias brew-provision='$HOME/code/dotfiles/utils/brew-packages $HOME/code/dotfiles/packages $HOME/code/dotfiles/casks'

### }
