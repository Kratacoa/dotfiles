set --export EDITOR /bin/kak
set --export BROWSER /usr/bin/firefox
# set -a --export PATH :/home/splop/code/scripts/

# Syntax highlighting for less
set --export LESS "-R "
set --export LESSOPEN "| /usr/bin/src-hilite-lesspipe.sh %s"
set --export LESSHISTFILE "~/.local/share/less/lesshst"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
	exec startx -- -keeptty
    end
end
