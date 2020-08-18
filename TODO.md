# general
- Perhaps separate these entries into README files of respective directories
- See if there are ways to improver color rendering in the terminal
  TrueColor support seems to be here, but I wonder about st's default colors and stuff.
  In particular, colors in Kakoune background look a bit opaque; it may be kak's issue, who knows
- Make a light colorscheme based on gradients of grey
	» [colorcli - a light colorscheme for a few applications. not perfect, but maybe a start](https://github.com/jonasjacek/colorcli)

# bspwm
- Make zathura open in fullscreen, on the next empty page from 2 to 8
- Add window switching in monocle mode
- If a program opens more than two windows, make them follow the standard scheme
- Implement commands from [Protesilaos sxhkd mappings](https://gitlab.com/protesilaos/dotfiles/-/tree/v2.2.0/bspwm/.config/sxhkd)
- Make qbittorrent actually follow to window 8; dunno what's the problem

# emacs
- Figure out how to make `word-wrap` and `toggle-truncate-lines` in `init.el` actually work

# fish
- Change `.local/share/fish/fish_history` permissions
- Decide if `Pygments` is better than `source-highlight`
- [Read this on source-highlighting in less](https://boredzo.org/blog/archives/2016-08-15/colorized-man-pages-understood-and-customized)
- Decide whether to source the PATH environmental variables as an external file (from .xinitrc or something) or not
	» the why is [here](https://fishshell.com/docs/current/index.html?highlight=fish_variables)

# firefox
- Configure firefox properly (privacy-respecting) and add it to dotfiles
	» [12bytes guide](https://12bytes.org/articles/tech/firefox/firefoxgecko-configuration-guide-for-privacy-and-performance-buffs)

# fontconfig
- CJK fonts don't display properly, not all emoji show up even with nerdfonts
 
# kakoune
**Do**
- Make a command that adds dashes till the current line amounts to 80 characters, for headers in the comments
- Make `diary-previous` account for the current date, that is choose last entry if the date is one day more, and the entry before the last if its the same as the current date
- Make a hook for markdown files that adds two spaces at the end of each line if absent
- Add fuzzy searching and completion for `:e` command and similar, maybe directly through a file explorer
- Get some decent insert mode mappings, like `Ctrl-w` for deleting words etc.
- Check if there is a plugin or some code to make allineated comments on the side
- Add LaTeX relevant snippets and shortcut for synctex
- Implement opening links within kakoune if it's local and the browser if it's a hyperlink
- Map emoji descriptions with the corresponding UTF-8 characters (e.g. :|)
- Find a way to make word-wrapped lines indented as the first display line
**Plugins To Try**
- [kak-snippets](https://github.com/alexherbo2/snippets.kak)
- [kak-tree (and the treesitter library)](https://github.com/ul/kak-tree)
- [kakoune's LSP plugin](https://github.com/ul/kak-lsp)
- [connect.kak](https://github.com/alexherbo2/connect.kak)
- [chronic.kak](https://github.com/alexherbo2/chronic.kak)
**Issues**
- Disable kakboard when doing multiple selection
- Improve somehow markdown syntax highlighting 
	- `i`(talic) face isn't applied for e.g. _snippet_ or *snippet*
	- absent links highlighting
	- when spaces are added before `**` kakoune doesn't use the `b`(old) face, e.g. **snippet **
	- syntax ` ```sh ... ``` ` breaks syntax highlighting of the code block
- `"` register doesn't paste clipboard's content inside Insert mode; see if there is something wrong with kakboard
**Reconsider**
- use standard mappings from Kakoune's wiki instead of `kakboard`
 
# lf
- Make it useful for something: implement a decent markdown renderer for its preview
- Make it open text files by default with `kak` not `emacs`; I think it has something to do with MIME

# mpv/mpd
- Figure out how to make it work with hotplugging
- Implement music visualization (something something mpd.fifo)
 
# ncmpcpp
- Add kak-like keybindings

# newsboat
- Write a service or use some other way to add update of RSS feed over a certain amount of time
- Color the empty output (lines I use for categories)
- Write kakoune-like bindings
 
# pandoc
- Make or retrieve a decent template for rendering from Markdown to PDF via XeLaTeX
	» Encoding for all sorts of characters 
	» I want `hyperref` related stuff to be highlighted
 
# polybar
- Weird margin on the bottom for the tray
- Fix powermenu
- Make a cool colorscheme (preferably on the gray spectrum)
- Figure out how to make interactive modules by implementing popups that show more information
	» perhaps through notifications?

# rofi
- make a rofi menu with all the scripts

# st
- Figure out how to properly manage `config.h`; so far I configured it with [flexibeast's guide](https://github.com/flexibeast/guides/blob/master/suckless.md#configuring), but I would like to slim the repository and manage them properly with `stow`
- Figure out why it adds these ugly borders with even pixelsizes
- Follow the [BGRA glyphs and scaling merge request](https://gitlab.freedesktop.org/xorg/lib/libxft/-/merge_requests/1) for.. colored emoji!

# sxhkd
- Add a binding that opens a terminal with this TODO and fdot in two panes
- `sudo ZZZ` sometimes hibernates two times; wtf?

# tmux
- Fix copypasting
- Make tmux redraw the screen upon the switch into a window, it messes it up sometimes (or maybe it's st?)
- Add either the `nord` or `gruvbox` colorschemes
- Improve the visual feedback of focused pane
- Make the next pane in a window open in the same directory

# weechat
- Make custom keybindings that reflect kakoune's ones
- Add a decent colorscheme
