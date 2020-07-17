# general
- Perhaps separate these entries into README files of respective directories
- See if there are ways to improver color rendering in the terminal
  TrueColor support seems to be here, but I wonder about st's default colors and stuff.
  In particular, colors in Kakoune background look a bit opaque; it may be kak's issue, who knows

# bspwm/sxhkd
- Implement commands from [https://gitlab.com/protesilaos/dotfiles/-/tree/v2.2.0/bspwm/.config/sxhkd](Protesilaos sxhkd mappings)

# weechat
- Figure out what to insert of the `weechat`'s folder
 
# newsboat
- Inquire whether it's possible to somehow render LaTeX mathmode inside newsboat
 
# zathura
- my syntax doesn't do shit

# tmux
- Improve the visual feedback of focused pane
- Customise status bar
 
# emacs
- Figure out how to make `word-wrap` and `toggle-truncate-lines` work always

# polybar
- Change the theme
- Make the modules fit properly on the bar (central mpd isn't as centered as I would like)
- Make backlight and volume modules bars interactive
- Make the other modules interactive too by implementing popups that show more information
- Substitute underlines with some separators between the various modules

# fish
- Setup correctly fish's execution of `startx` at login

# kakoune
## Do 
- Add fuzzy searching and completion for `:e` command and similar
- Improve markdown syntax highlighting (broken links highlighting most and foremost), implement opening links within kakoune if it's local and the browser if it's a hyperlink
- Get some decent insert mode mappings, like `Ctrl-w` for deleting words etc.
- Check if there is a plugin or some code to make allineated comments on the side
- Implemenent [https://github.com/ul/kak-lsp](kakoune's LSP plugin)
- Add TeX support
## Reconsider
- use standard mappings from Kakoune's wiki instead of `kakboard`
