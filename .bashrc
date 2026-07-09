#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Path Additions
export PATH="$PATH:~/Programs/AsciiTextWall"
export PATH="$PATH:~/Programs/Vial"
export PATH="$HOME/.local/bin:$PATH"

alias ls='eza -TRaL 1 --icons=always --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ff='clear && fastfetch'
alias vial='Vial-v0.7.5-x86_64.AppImage'
alias vi='nvim'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

PS1='[\u@\h \W]\$ '

ff
eval "$(zoxide init --cmd cd bash)"
eval "$(starship init bash)"
