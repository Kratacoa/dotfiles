# Setting the PATH, adding TeX distribution and scripts directory
fish_add_path --path --append /opt/texlive/2023/bin/x86_64-linuxmusl/ $HOME/.local/bin

# XDG
set --export XDG_CONFIG_HOME "$HOME/.config"
set --export XDG_DATA_HOME "$HOME/.local/share"
set --export XDG_CACHE_HOME "$HOME/.cache"

# Exporting important environmental variables
set --export EDITOR /bin/kak
set --export BROWSER /usr/bin/firefox
set --export READER /usr/bin/sioyek

# Exporting annoying environment variables
set --export RMVIEW_CONF "$HOME/dotfiles/scripts/rmview/rmview.json"
set --export OCTAVE_HISTFILE "$XDG_CACHE_HOME/octave_hist"

# .NET
fish_add_path --path --append "$XDG_DATA_HOME/dotnet/"
set --export DOTNET_CLI_TELEMETRY_OPTOUT true

# Rust
set --export CARGO_HOME "$HOME/code/.cargo"
fish_add_path --path --append ~/code/.cargo/bin/

# Using starship as the prompt
set --export STARSHIP_CONFIG "$XDG_CONFIG_HOME/starship/starship.toml"
starship init fish | source

# nnn file manager
source "$XDG_CONFIG_HOME/nnn/nnn_variables"

# fzf options
set --export FZF_DEFAULT_OPTS "--cycle --color=light"
## enabling fuzzy correction from history via fzf
source "$XDG_CONFIG_HOME"/fish/functions/fzf_key_bindings.fish

# less configuration: setting the history file, highlighting and some other stuff
set --export LESSHISTFILE "~/.local/share/less/lesshst"
set --export LESS " --ignore-case --status-column --tabs=4 --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD"
set --export LESSOPEN "| /usr/bin/src-hilite-lesspipe.sh %s"

# Source different environment variables if on a different machine
source $XDG_CONFIG_HOME/fish/dependant_variables

# Start ssh-agent with C-style output (fish doesn't work with -s)
pgrep -x ssh-agent > /dev/null || eval (ssh-agent -c)

# Start X at login; this has to be after the environment variables
if status is-login
    if test -z "$DISPLAY"
		exec startx -- -keeptty
    end
end
