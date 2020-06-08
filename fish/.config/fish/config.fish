set --export EDITOR nvim
set --export BROWSER /usr/bin/firefox
set CDPATH .:~:~/books

# Syntax highlighting for less
export LESS="-R "
export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
				exec startx -- -keeptty
		end
end
