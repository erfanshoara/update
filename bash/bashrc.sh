###############################################################################
#
# bashrc.sh
#
###############################################################################


# env var
# {
# default app
# {
export EDITOR='vim'
# }

export ESCDELAY=0
# }


# if only in interactive shell then do the rest
[[ $- != *i* ]] && return

# bash conf
# {
set -o vi
PS1='\e[0;31m[\e[0m\e[0;36m\u\e[0m\e[0;34m@\e[0m\e[0;32m\h\e[0m\e[0;35m:\e[0m\e[0;33m\w\e[0m\e[0;31m]\e[0m\n>> '

# if user already has it
[[ -f "$BASH_ALIASES" ]] && . $BASH_ALIASES
# }

# general conf
# {
umask 0077
# }

