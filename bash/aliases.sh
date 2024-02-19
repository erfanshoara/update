#####<<<<<-----   common   ----->>>>>#####
#	rm
alias rmr='rm -r'
#	tree
alias tre='tree -C'
alias t='tre'
alias ta='tre -a'
alias tp='tre -a --prune'
alias td='tre -d'
alias tad='tree -Cad'
#	cp
alias cp='cp -i'
#	which type
alias wch='alias | which -ai'
alias type='type -a'
#	cd
alias cdc='cd ..'
#	bash + aliases
alias vimr='vim -R'
alias vima="vim $BASH_ALIASES"
alias vimb="vim $BASHRC"
# TODO
#alias vimc="vim $XDG_CONFIG_HOME/vim/rc.vim"
alias b="source $BASH_ALIASES"
alias a='alias'
#	basics
alias q='exit'
alias c='clear'
alias off='poweroff'
alias mv='mv -i'
alias ln='ln -i'
alias mk='mkdir'
alias mkd='function _mkd(){ mkdir $1 $2 && cd $1 ;}; _mkd'
alias uxme='chmod u+x'
alias diff='diff --color'
#	acl
alias g='getfacl'
# ls
alias ls='ls --color=auto'
alias ll='ls -l'
alias al='ls -la'
alias la='ls -a'
# systemd
alias s='sudo systemctl'
alias j='sudo journalctl -xe'
alias sa='systemctl status'
# ping
alias fing='ping -c 1'

#####<<<<<-----   genral   ----->>>>>#####
alias v='vim'
alias svim='sudo vim'
alias vterm='vim -c "term ++curwin"'

# git
#alias gita='git add .'
alias gits='git status'
alias gitl='git log -v'
alias gitb='git branch -v'
alias gitr='git remote -v'
alias gitg='git log --oneline --graph --all --decorate'


# appended
alias py='python3'
alias l='less'
alias difr='diff -r'
#alias r='./run'
