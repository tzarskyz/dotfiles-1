# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[[ -z "$PS1" ]] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
##[[ -x /usr/bin/lesspipe ]] && eval "$(lesspipe)"

# gimme Vim bindings
set -o vi

# Use CDPATH to make life better
export CDPATH='.:~/git_code:~'

# Set TERM and CLICOLOR for purty colors
export TERM=xterm-color
export CLICOLOR=1

# set editor for SVN and other programs
export SVN_EDITOR=/opt/local/bin/vim
export EDITOR=/opt/local/bin/vim

# include .bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# include .bash_functions if it exists
if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

# include .bash_path if it exists
if [ -f ~/.bash_path ]; then
  . ~/.bash_path
fi

# include .bash_completion from MacPorts
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# include .git-completion.sh
if [ -f ~/.git-completion.sh ]; then
    . ~/.git-completion.sh
fi

# include .amazon_keys
if [ -f ~/.amazon_keys ]; then
    . ~/.amazon_keys
fi

# color prompt
PS1='\[\033[01;32m\]\u \W$(__git_ps1 " (%s)") \$ \[\033[00m\]'

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME} ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# go environment variables
export GOROOT="$HOME/source/go"
export GOOS="darwin"
export GOARCH="386"
export GOBIN="$HOME/bin"
