# enable color support of ls and also add handy aliases
if [[ "$TERM" != "dumb" ]]; then
    alias ls='gls --color=auto'
    alias dir='ls --format=vertical'
    alias vdir='ls --format=long'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# aliases for safety
alias rmi='rm -i'
alias cpi='cp -i'
alias mvi='mv -i'

# aliases for clarity
alias cpv='gcp -v'
alias rmv='grm -v'
alias mvv='gmv -v'

# two cd aliases
alias ..='cd ..'
alias ...='cd ../../'

# alias to add or edit aliases
alias realias='vim ~/.bash_aliases;source ~/.bash_aliases'

# alias to add or edit functions
alias refunction='vim ~/.bash_functions;source ~/.bash_functions'

# make pstotext work without resetting $PATH
alias pstotext='pstotext -gs "/usr/local/gs/bin/gs"'

# a few git aliases
alias status='git status'
alias fetch='git fetch'
alias pull='git pull'
alias push='git push'
alias sched='/usr/local/bin/ruby $HOME/bin/schedule.rb'
