General TODO for dotfiles
- Find a way to raise font size Qt programs
- Make a light colorscheme based on gradients of grey
	» [colorcli - a light colorscheme for a few applications. not perfect, but maybe a start](https://github.com/jonasjacek/colorcli)
- Add properly qbittorrent, keepassxc
- Setup neomutt for the love of no one
- Setup properly XDG shit

# Application specific

## bspwm
- Open `calcurse` only on startup; right now I'm using a workaround
- Make zathura open in fullscreen, on the next empty page from 2 to 8
- Add window switching in monocle mode
- If a program opens more than two windows, make them follow the standard scheme
- Implement commands from [Protesilaos sxhkd mappings](https://gitlab.com/protesilaos/dotfiles/-/tree/v2.2.0/bspwm/.config/sxhkd)
- Hook that checks if keepassxc is open during firefox execution
- Open applications opened by a certain rofi command as float

## calcurse
- Make it fit properly with solarized-light; the bar's colorscheme is wonky when opening articles
- Find a way to edit some components with `$EDITOR` (maybe popping up as a separate terminal)

## dunst
- Decide what to do with the shortcuts
- Choose more fitting colors
- Enable notifications for element-desktop

## fish
- Change `.local/share/fish/fish_history` permissions
- Decide if `Pygments` is better than `source-highlight`
- [Read this on source-highlighting in less](https://boredzo.org/blog/archives/2016-08-15/colorized-man-pages-understood-and-customized)
- Decide whether to source the PATH environmental variables as an external file (from .xinitrc or something) or not
	» the why is [here](https://fishshell.com/docs/current/index.html?highlight=fish_variables)
- Make `ssh-add` execute on login, perhaps unlock it with some keyfile or idk whatever

## firefox
- Configure firefox properly (privacy-respecting) and add it to dotfiles
	» [12bytes guide](https://12bytes.org/articles/tech/firefox/firefoxgecko-configuration-guide-for-privacy-and-performance-buffs)
- screen tearing
	» [the settings here](https://www.reddit.com/r/firefox/comments/gmm6ms/playing_youtube_with_video_in_the_background/fr4sqw4/?utm_source=reddit&utm_medium=web2x&context=3http) do help, but they add black boxes to certain menus. I dunno what's the exact meaning behind.
- prevent it from creating the fucking `Desktop` directory

## fontconfig
- CJK fonts don't display properly, not all emoji show up even with nerdfonts
- Add slashed zeros to Hack
 
## kakoune
### Do
- [Turn Kakoune into an IDE](https://discuss.kakoune.com/t/turn-kakoune-into-an-ide/1236-)
- [nnn integration](https://discuss.kakoune.com/t/nnn-integration/1095)
- [Clipboard integration](https://discuss.kakoune.com/t/clipboard-integration-with-registermodified/1150/12)- Make a command that adds dashes till the current line amounts to 80 characters, for headers in the comments
- Make `diary-previous` account for the current date, that is choose last entry if the date is one day more, and the entry before the last if its the same as the current date
- Make a hook for markdown files that adds two spaces at the end of each line if absent
- Get some decent insert mode mappings, like `Ctrl-w` for deleting words etc.
- Check if there is a plugin or some code to make allineated comments on the side
- Add LaTeX relevant snippets and shortcut for synctex
- Implement opening links within kakoune if it's local and the browser if it's a hyperlink (basically via MIME?)
- Find a way to make word-wrapped lines indented as the first display line
- Disable kakboard when doing multiple selection
- Configure completion to look in surrounding files in the same directory
### Plugins To Try
- [kak-snippets](https://github.com/alexherbo2/snippets.kak)
- [auto-pairs](https://github.com/alexherbo2/auto-pairs.kak)
- [kak-tree (and the treesitter library)](https://github.com/ul/kak-tree)
- [kakoune's LSP plugin](https://github.com/ul/kak-lsp)
- [connect.kak](https://github.com/alexherbo2/connect.kak)
- [chronic.kak](https://github.com/alexherbo2/chronic.kak)
- [kak-rainbow - rainbow highlighting for parens](https://github.com/bodhizafa/kak-rainbow)

## kitty
- Improve tabs information somehow (maybe?)
- Show notification on tab titles
- Resizing is wonky for stuff like `weechat` and `htop` when I have two kitty windows on screen
- Follow [this issue](https://github.com/kovidgoyal/kitty/issues/1990) relevant to using caps_lock (and other such modifiers) separately
- Change monospace font or adjust column width: *M* is rendered poorly, and kitty displays fonts as character grids, so this is by design.
	» [reference](https://github.com/kovidgoyal/kitty/issues/1960 )
	
## mpd
- Figure out how to make it work with hotplugging
- Implement music visualization (something something mpd.fifo)
 
## ncmpcpp
- Add kak-like keybindings
- In playlist mode, put album after artist

## nnn
- Add more plugins (I probably need some)
- Fix file preview, it's wonky with `less`
- Fix issue described [here](https://github.com/jarun/nnn/issues/759)

## newsboat
- Write a service or use some other way to add update of RSS feed over a certain amount of time
- Write kakoune-like bindings
- Follow on why regular expressions don't differentiate by case
	» https://github.com/newsboat/newsboat/issues/412
	» https://github.com/newsboat/newsboat/issues/1197
- Make a prompt for firefox to add feeds to newsboat/urls by default
 
## pandoc
- Make or retrieve a decent template for rendering from Markdown to PDF via XeLaTeX
	» Encoding for all sorts of characters 
	» `hyperref` related stuff to be highlighted
 
## polybar
- improve `colors/solarized-dark`, it kinda sucks right now
- Fix powermenu
- Figure out how to make interactive modules by implementing popups that show more information
	» perhaps through notifications?

## rofi
- make a rofi menu for scripts folder

## starship
- prompt resets after kakoune for some reason, figure out why
	» https://github.com/starship/starship/issues/1271

<!-- ## sxhkd -->

## weechat
- Make custom keybindings that reflect kakoune's ones
- Make it fit with solarized-light
