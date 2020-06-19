alias vim=nvim

alias ls='ls --color=auto'

# get current branch in git repo
parse_git_branch () {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "(${BRANCH}) "
	else
		echo ""
	fi
}

export PS1="\[\e[92m\][\u\[\e[0m\]@\h \[\e[94m\]\W\[\e[92m\]]$ \[\e[33m\]\`parse_git_branch\`\[\e[0m\]"

export LESS_TERMCAP_mb=$'\e[1;32m'
# Man page Definitions
export LESS_TERMCAP_md=$'\e[1;94m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;92m'
