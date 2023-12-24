#function fish_prompt
#        set_color yellow --bold
#	printf "%s" "$USER"
#	set_color FFA500 --bold
#	printf "@"
#	set_color red --bold
#	printf "%s" "$hostname"
#	set_color green
#	printf " %s" "$PWD"
#	set_color normal	
#	printf ' $ '
#end
function fish_prompt
	set_color yellow --bold
	printf "-> "
	set_color green --bold
	printf (prompt_pwd)
	set_color normal
	printf ' $ '

end
