# ls
alias ls='ls --color=auto'
alias ll='ls -l'
alias al='ls -la'
alias la='ls -a'

# tree
alias tre='tree -C'
alias t='tre'
alias ta='tre -a'
alias tp='tre -a --prune'
alias td='tre -d'
alias tad='tree -Cad'
alias tg='tre --gitignore'

# vim
alias v='vim'
alias vimr='vim -R'
alias svim='sudo vim'
alias vterm='vim -c "term ++curwin"'

# git
#alias gita='git add .'
alias gits='git status'
alias gitl='git log -v'
alias gitb='git branch -v'
alias gitr='git remote -v'
alias gitg='git log --oneline --graph --all --decorate'

# which type
alias wch='alias | which -ai'
alias type='type -a'

# opening/loading conf file
alias vimb="vim ${BASH_RUNC}"
alias vima="vim ${BASH_ALIA}"
alias vimc="vim ${VIM_RUNC}"
alias b="source $BASH_ALIA"

# basic shortcuts
alias q='exit'
alias c='clear'
alias a='alias'
alias off='poweroff'
alias cp='cp -i'
alias mv='mv -i'
alias rmr='rm -r'
alias cdc='cd ..'
alias ln='ln -i'
alias mk='mkdir'
alias mkd='function _mkd(){ mkdir $1 $2 && cd $1 ;}; _mkd'
alias uxme='chmod u+x'
alias diff='diff --color'
alias g='getfacl'
alias s='sudo systemctl'
alias j='sudo journalctl -xe'
alias sa='systemctl status'
alias fing='ping -c 1'
alias py='python3'
alias l='less'
alias difr='diff -r'
#alias r='./run'
