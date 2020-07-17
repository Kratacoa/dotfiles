# Start X at login
if status is-login
    if test -z "$DISPLAY"
		exec startx -- -keeptty
    end
end

# Exporting important environmental variables
set --export EDITOR /bin/kak
set --export BROWSER /usr/bin/firefox
set --export PATH $HOME/.local/bin $PATH

# Syntax highlighting for less
set --export LESS "-R "
set --export LESSOPEN "| /usr/bin/src-hilite-lesspipe.sh %s"
set --export LESSHISTFILE "~/.local/share/less/lesshst"
