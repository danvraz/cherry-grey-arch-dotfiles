
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# vamp pink prompt arrow
PS1="\[\e[38;2;138;21;67m\]❯\[\e[0m\] "
# Show system info on terminal start
neofetch

# Created by `pipx` on 2026-01-03 02:42:01
export PATH="$PATH:/home/dan/.local/bin"
alias watch='webtorrent --mpv --out /tmp/webtorrent'

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path bash)"
