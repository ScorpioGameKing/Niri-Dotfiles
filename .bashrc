#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza -TRaL 1 --icons=always --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ff='clear && fastfetch'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

PS1='[\u@\h \W]\$ '

eval "$(zoxide init bash)"
eval "$(starship init bash)"
