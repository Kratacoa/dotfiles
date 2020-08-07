# general
- Perhaps separate these entries into README files of respective directories
- See if there are ways to improver color rendering in the terminal
  TrueColor support seems to be here, but I wonder about st's default colors and stuff.
  In particular, colors in Kakoune background look a bit opaque; it may be kak's issue, who knows

# bspwm/sxhkd
- Make zathura open in fullscreen, on the next empty page from 2 to 8
- Add window switching in monocle mode
- Implement commands from [Protesilaos sxhkd mappings](https://gitlab.com/protesilaos/dotfiles/-/tree/v2.2.0/bspwm/.config/sxhkd)

# emacs
- Figure out how to make `word-wrap` and `toggle-truncate-lines` in `init.el` actually work

# fish
- Decide if `Pygments` is better than `source-highlight`
- [Read this on source-highlighting in less](https://boredzo.org/blog/archives/2016-08-15/colorized-man-pages-understood-and-customized)

# fontconfig
- Fantasque Sans Mono and Noto don't substitute DejaVu Sans despite the local `fonts.conf`; figure out why

# kakoune
**Do**
- Make `diary-previous` account for the current date, that is choose last entry if the date is one day more, and the entry before the last if its the same as the current date
- Add fuzzy searching and completion for `:e` command and similar, maybe directly through a file explorer
- Get some decent insert mode mappings, like `Ctrl-w` for deleting words etc.
- Check if there is a plugin or some code to make allineated comments on the side
- Add LaTeX relevant snippets and shortcut for synctex
- Implement opening links within kakoune if it's local and the browser if it's a hyperlink
- Substitute emoji descriptions with the corresponding UTF-8 characters (e.g. :|)
- Find a way to somehow paste into register the first search result from DDG bangs 
- Find a way to make word-wrapped lines indented as the first display line
**Plugins To Try**
- [kak-snippets](https://github.com/alexherbo2/snippets.kak)
- [kak-tree (and the treesitter library)](https://github.com/ul/kak-tree)
- [kakoune's LSP plugin](https://github.com/ul/kak-lsp)
- [kak-plumb (I have no clue what is it's use actually)](https://github.com/eraserhd/kak-plumb)
	» given [this closed PR](https://github.com/mawww/kakoune/pull/3116), its utility may be superseded by [connect.kak](https://github.com/alexherbo2/connect.kak)
**Issues**
- Improve somehow markdown syntax highlighting 
	- `i`(talic) face isn't applied for e.g. _snippet_ or *snippet*
	- absent links highlighting
	- when spaces are added before `**` kakoune doesn't use the `b`(old) face, e.g. **snippet **
- `"` register doesn't paste clipboard's content inside Insert mode; see if there is something wrong with kakboard
**Reconsider**
- use standard mappings from Kakoune's wiki instead of `kakboard`
**Ideas**
 
# mpv
 
# newsboat
- Write a service or use some other way to add update of RSS feed over a certain amount of time
- Color the empty output (lines I use for categories)
- Inquire whether it's possible to somehow render LaTeX mathmode inside newsboat
 
# pandoc
- Make or retrieve a decent template for rendering from Markdown to PDF via XeLaTeX
	» Encoding for all sorts of characters 
	» I want `hyperref` related stuff to be highlighted
 
# picom
- See how it works

# polybar
- Change the theme/make it so that most of the modules are represented by icons and show additional information only on demand
- Make the modules fit properly on the bar (central mpd isn't as centered as I would like)
- Make backlight and volume modules bars interactive
- Make the other modules interactive too by implementing popups that show more information
- Substitute underlines with some separators between the various modules

# tmux
- Add either the `nord` or `gruvbox` colorschemes
- Improve the visual feedback of focused pane
- Customise status bar

# weechat
- Figure out what to insert of the `weechat`'s folder

# zathura
