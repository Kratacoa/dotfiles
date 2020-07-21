# general
- Perhaps separate these entries into README files of respective directories
- See if there are ways to improver color rendering in the terminal
  TrueColor support seems to be here, but I wonder about st's default colors and stuff.
  In particular, colors in Kakoune background look a bit opaque; it may be kak's issue, who knows

# bspwm/sxhkd
- Implement commands from [Protesilaos sxhkd mappings](https://gitlab.com/protesilaos/dotfiles/-/tree/v2.2.0/bspwm/.config/sxhkd)

# weechat
- Figure out what to insert of the `weechat`'s folder
 
# newsboat
- Inquire whether it's possible to somehow render LaTeX mathmode inside newsboat
 
# zathura
- my syntax doesn't do shit

# tmux
- Add either the `nord` or `gruvbox` colorschemes
- Improve the visual feedback of focused pane
- Customise status bar
 
# emacs
- Figure out how to make `word-wrap` and `toggle-truncate-lines` in `init.el` actually work

# fontconfig
- Fantasque Sans Mono and Noto don't substitute DejaVu Sans despite the local `fonts.conf`; figure out why

# polybar
- Change the theme
- Make the modules fit properly on the bar (central mpd isn't as centered as I would like)
- Make backlight and volume modules bars interactive
- Make the other modules interactive too by implementing popups that show more information
- Substitute underlines with some separators between the various modules

# fish
- Fix source-highlight, or use lesspipe & pygmentizer

# kakoune
**Do**
- Add fuzzy searching and completion for `:e` command and similar, maybe directly through a file explorer
- Get some decent insert mode mappings, like `Ctrl-w` for deleting words etc.
- Check if there is a plugin or some code to make allineated comments on the side
- Add LaTeX relevant snippets and shortcut for synctex
- Implement opening links within kakoune if it's local and the browser if it's a hyperlink
- Substitute emoji descriptions with the corresponding UTF-8 characters (e.g. :|)
- Find a way to somehow paste into register the first search result from DDG bangs
**Plugins To Try**
- [kak-snippets](https://github.com/alexherbo2/snippets.kak)
- [kakoune's LSP plugin](https://github.com/ul/kak-lsp)
**Reconsider**
- use standard mappings from Kakoune's wiki instead of `kakboard`
**Issues**
- Improve somehow markdown syntax highlighting 
	- `i`(talic) face isn't applied for e.g. _snippet_ or *snippet*
	- absent links highlighting
	- when spaces are added before `**` kakoune doesn't use the `b`(old) face, e.g. **snippet **
- `"` register doesn't paste clipboard's content inside Insert mode; see if there is something wrong with kakboard
