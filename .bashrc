alias vim=nvim

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "(${BRANCH})"
	else
		echo ""
	fi
}

export PS1="\[\e[92m\][\u\[\e[0m\]@\h \[\e[94m\]\W\[\e[92m\]]$ \[\e[33m\]\`parse_git_branch\`\[\e[0m\] "
