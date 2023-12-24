if status is-interactive
	set -U fish_greeting
end

alias ls='exa -hal'
abbr -a -- c clear
abbr -a -- p 'sudo pacman -S'
abbr -a -- e exit
abbr -a -- pyu 'sudo pacman -Syu'

alias :q='exit'
alias :wq='exit'
