# .bashrc

tmux 2> /dev/null

# general aliases
alias ls="ls --group-directories-first --color=auto"
alias pglogin="export PGPASSWORD='postgres'; psql -d test_db -U postgres"

# git aliases
alias g="git"
alias ga="git add"
alias gb="git branch -v"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset %Cgreen(%cr) %C(bold blue)<%an>%Creset -%C(yellow)%d%Creset %s' --abbrev-commit"
alias gpu="git push"
alias gpl="git pull"
alias gs="git status -sb"

# setup bash completion for the alias (if available)
# if [[ -f /usr/share/bash-completion/completions/git ]]; then
#     . /usr/share/bash-completion/completions/git
#     __git_complete g    __git_main
#     __git_complete ga   _git_add
#     __git_complete gb   _git_branch
#     __git_complete gc   _git_commit
#     __get_complete gcm  _git_commit
#     __git_complete gco  _git_checkout
#     __git_complete gd   _git_diff
#     __git_complete gf   _git_fetch
#     __git_complete gfa  _git_fetch
#     __git_complete gpu  _git_push
#     __git_complete gpl  _git_pull
#     __git_complete gs   _git_status
# fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
