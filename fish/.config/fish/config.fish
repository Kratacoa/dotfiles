# Start X at login
if status is-login
    if test -z "$DISPLAY"
		exec startx -- -keeptty
    end
end

# Setting the PATH, adding TeX distribution and scripts directory
set --export PATH /opt/texlive/2020/bin/x86_64-linuxmusl/ $HOME/.local/bin $PATH

# XDG
set --export XDG_CONFIG_HOME "$HOME/.config"
set --export XDG_DATA_HOME "$HOME/.local/share"
set --export XDG_CACHE_HOME "$HOME/.cache"

# Exporting important environmental variables
set --export EDITOR /bin/kak
set --export BROWSER /usr/bin/firefox
set --export READER /usr/bin/zathura

# less configuration: setting the history file, highlighting and some other stuff
set --export LESSHISTFILE "~/.local/share/less/lesshst"
set --export LESS_TERMCAP_mb (printf "\e[1;31m")	# begin blink
set --export LESS_TERMCAP_md (printf "\e[1;36m")	# begin bold
set --export LESS_TERMCAP_me (printf "\e[0m")	#reset bold/blink
set --export LESS_TERMCAP_so (printf "\e[01;44;33m")	# begin reverse video
set --export LESS_TERMCAP_se (printf "\e[0m")	# reset reverse video
set --export LESS_TERMCAP_us (printf "\e[1;32m") # begin underline
set --export LESS_TERMCAP_ue (printf "\e[0m")	# reset underline
set --export LESS " --ignore-case --status-column --tabs=4 --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD"
set --export LESSOPEN "| /usr/bin/src-hilite-lesspipe.sh %s"

# nnn file manager
source "$XDG_CONFIG_HOME/nnn/nnn_variables"

# fzf options
set --export  FZF_DEFAULT OPTS "--cycle --color=light"
