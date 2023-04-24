General TODO for dotfiles
- Find a way to raise font size Qt programs
- Make a light colorscheme based on gradients of grey
	» [colorcli - a light colorscheme for a few applications. not perfect, but maybe a start](https://github.com/jonasjacek/colorcli)
- Add properly qbittorrent, keepassxc
- Setup neomutt for the love of no one
- Setup properly XDG shit
- Add system-level configuration (that is proper to add), establish two separate folders
- Port Modus themes to kitty and kakoune

# Application specific

## bspwm
- Make zathura open in fullscreen, on the next empty page from 2 to 8
- If a program opens more than two windows, make them follow the standard scheme
- Implement commands from [Protesilaos sxhkd mappings](https://gitlab.com/protesilaos/dotfiles/-/tree/v2.2.0/bspwm/.config/sxhkd)
- Hook that checks if keepassxc is open during firefox execution
- Setup floating windows for stuff like ncmpcpp

## calcurse
- Setup notifications for appointments
- Make it fit properly with solarized-light; the bar's colorscheme is wonky when opening articles
- Find a way to edit some components with `$EDITOR` (maybe popping up as a separate terminal)

## dunst
- Enable notifications for calcurse events
- Choose more fitting colors
- Enable notifications for element-desktop
- Send notifications regarding battery status
- Make shortcuts in sxhkdrc for the stuff in the config

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
- Make a command that adds dashes till the current line amounts to 80 characters, for headers in the comments
- Make `diary-previous` account for the current date, that is choose last entry if the date is one day more, and the entry before the last if its the same as the current date
- Make a hook for markdown files that adds two spaces at the end of each line if absent
- Get some decent insert mode mappings, like `Ctrl-w` for deleting words etc.
- Check if there is a plugin or some code to make allineated comments on the side
- Add LaTeX relevant snippets and shortcut for synctex
- Implement opening hyperlinks via browser through `gf` or something
- Configure completion to look in surrounding files in the same directory (that has to do with the first entry)
- Racket filetype
- Bring kak-lsp folder into kak in .config
### Plugins To Try
- [kak-snippets](https://github.com/alexherbo2/snippets.kak)
- [auto-pairs](https://github.com/alexherbo2/auto-pairs.kak)
- [kak-tree (and the treesitter library)](https://github.com/ul/kak-tree)
- [smarttab.kak](https://github.com/andreyorst/smarttab.kak)
- [connect.kak](https://github.com/alexherbo2/connect.kak)
- [chronic.kak](https://github.com/alexherbo2/chronic.kak)
- [kak-rainbow - rainbow highlighting for parens](https://github.com/bodhizafa/kak-rainbow)
- [multiuser.kak - collaborative editing](https://github.com/useredsa/multiuser.kak)
- [kakoune-wiki](https://github.com/TeddyDD/kakoune-wiki)
- [base16](https://github.com/leira/base16-kakoune)
- [kakoune-phantom-selection](https://github.com/occivink/kakoune-phantom-selection)
- [kakoune-racket](https://bitbucket.org/KJ_Duncan/kakoune-racket.kak/src/master/)
- [kakoune-langmap](https://github.com/andreyorst/langmap.kak)

## kitty
- Improve tabs information somehow (maybe?)
- Resizing is wonky for stuff like `weechat` and `htop` when I have two kitty windows on screen
- Follow [this issue](https://github.com/kovidgoyal/kitty/issues/1990) relevant to using caps_lock (and other such modifiers) separately
- Change monospace font or adjust column width: *M* is rendered poorly, and kitty displays fonts as character grids, so this is by design.
	» [reference](https://github.com/kovidgoyal/kitty/issues/1960 )
	
## ncmpcpp
- Add kak-like keybindings
- In playlist mode, put album after artist
- Choose pickier colours

## nnn
- Add a "read mode" for text files, in particular I want to read markdown with glow + less
- Fix file preview, it's wonky with `less`
- Fix issue described [here](https://github.com/jarun/nnn/issues/759)

## newsboat
- Write kakoune-like bindings
- Follow on why regular expressions don't differentiate by case
	» https://github.com/newsboat/newsboat/issues/412
	» https://github.com/newsboat/newsboat/issues/1197
- Make a prompt for firefox to add feeds to newsboat/urls by default
- Fix the trailing background color on headings
- setup `bookmark-cmd` to save links in the repository
 
## pandoc
- Make or retrieve a decent template for rendering from Markdown to PDF via XeLaTeX
	» Encoding for all sorts of characters 
	» `hyperref` related stuff to be highlighted
 
## polybar
- `mpd` module doesn't display weird emoji shit
- figure out the workings of two batteries in the `battery` module
- improve `colors/solarized-dark`, it kinda sucks right now
- Fix powermenu
- Make battery of a different color when charging (the same for all stages)
- switch battery to internal when the external one is not being used

## rofi
- make a rofi menu for scripts folder
- menu for the windows in the current desktop, displaying their status as a node in `bspwm`

## starship
- prompt resets after kakoune for some reason, figure out why
	» https://github.com/starship/starship/issues/1271

## weechat
- Make custom keybindings that reflect kakoune's ones
- Make it fit with solarized-light
