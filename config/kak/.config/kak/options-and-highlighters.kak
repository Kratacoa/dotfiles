# Options
## Colorscheme
# colorscheme solarized-light

plug "catppuccin/kakoune" noload theme config %{
	colorscheme catppuccin_latte
}

## Assistant
set-option global ui_options ncurses_assistant=dilbert

## Tabstop and indentwidth
set-option global tabstop 2
set-option global indentwidth 2

## Always keep on display one line around the cursor
set-option global scrolloff 5,3

# Store the logs directory in a variable
declare-option -hidden str log_dir %sh{ echo "$HOME/repository/personal/diary" }
# Higlighters
## Line numbers
add-highlighter global/ number-lines -relative -min-digits '3' -separator ' '

## Soft wrapping
add-highlighter global/ wrap -indent -word -width 80

## Highlight matching enclosures
add-highlighter global/ show-matching

# Plugins

## kak-lsp
plug "kak-lsp/kak-lsp" noload config %{
  declare-user-mode user-lsp
  set-option global lsp_hover_anchor true
  set-option global lsp_auto_show_code_actions true
  set-face global InlayHint black+i
  set-face global PrimarySelection default,black,default
  set global lsp_diagnostic_line_error_sign '║'
  set global lsp_diagnostic_line_warning_sign '┊'

  
}

plug "alexherbo2/auto-pairs.kak" noload config %{
  set-option global auto_pairs ( ) { } [ ] '"' '"' "'" "'" ` ` “ ” ‘ ’ « » ‹ ›
  enable-auto-pairs
}
