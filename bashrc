# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
##[[ -x /usr/bin/lesspipe ]] && eval "$(lesspipe)"

# gimme Vim bindings
# Learn the damn Emacs bindings at least a little
set -o emacs

# Use CDPATH to make life better
export CDPATH=.:$HOME:$HOME/projects

# Set TERM and CLICOLOR for purty colors
export TERM=xterm-color
export CLICOLOR=1

# set editor for SVN and other programs
export SVN_EDITOR=vim
export EDITOR=vim

# include .bash_aliases if it exists
if [ -f $HOME/.bash_aliases ]; then
  source $HOME/.bash_aliases
fi

# include .bash_functions if it exists
if [ -f $HOME/.bash_functions ]; then
  source $HOME/.bash_functions
fi

# include .bash_path if it exists
if [ -f $HOME/.bash_path ]; then
  source $HOME/.bash_path
fi

# include .bash_completion from MacPorts
if [ -f `brew --prefix`/etc/bash_completion ]; then
    source `brew --prefix`/etc/bash_completion
fi

# include .git-completion.sh
if [ -f $HOME/.git-completion.sh ]; then
    source $HOME/.git-completion.sh
fi

# include .amazon_keys
if [ -f $HOME/.amazon_keys ]; then
    source $HOME/.amazon_keys
fi

# rvm
if [ -s $HOME/.rvm/scripts/rvm ]; then
    source $HOME/.rvm/scripts/rvm
fi

# color prompt
#PS1='\[\e[01;31m\]\u \W\[\e[00m\]\[\e[0;33m\]$(__git_ps1 " (%s)")\[\e[00m\] \[\e[01;31m\]\$ \[\e[00m\]'
red='\[\e[00;31m\]'
yellow='\[\e[00;33m\]'
end='\[\e[m\]'
gps='$(__git_ps1 " (%s)")'
PS1="${red}\u \W${end}${yellow}${gps}${end} ${red}\$${end} "


# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME} ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# source perlbrew
export PERLBREW_ROOT=$HOME/.perl5/perlbrew
if [ -f $HOME/.perl5/perlbrew/etc/bashrc ]; then
    source $HOME/.perl5/perlbrew/etc/bashrc
fi
export PERL_CPANM_OPT="--mirror file:///Users/telemachus/.minicpan\
    --mirror http://cpan.cpantesters.org"

# less configuration
LESS='-j5GJx4P?f[%f] - ?pt[%pt\%] '
export LESS
