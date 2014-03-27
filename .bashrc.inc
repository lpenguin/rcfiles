# some more ls aliases
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lFh'
alias la='ls -A'
alias l='ls -CF'

export PATH=$PATH:$HOME/bin
export TERM="xterm-256color"
alias open='xdg-open &>/dev/null'

ec=$HOME/bin/edit-note.completition.sh
if [[ -f $ec ]] ; then
    . $ec
fi
alias gs='git status'
alias gc='git commit'
alias gca='git commit -a'
alias gd='git diff'
alias ga='git add'
alias extract='atool -x'
