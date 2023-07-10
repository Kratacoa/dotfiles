# File for mappings here

## Buffer control
map -docstring "close current buffer" global user b ":db<ret>"
map -docstring "goto previous buffer" global user n ":bp<ret>"
map -docstring "goto next buffer" global user m ":bn<ret>"

## Clipboard
map -docstring "yank the selection into clipboard" global user y "<a-|> xclip -i -sel clipboard<ret>"
map -docstring "paste from the clipboard" global user p "<a-!> xclip -o -sel clipboard<ret>"

## Insert Mode
map global insert <c-a>		'<a-;>gh'
map global insert <c-f>		'<a-;>l'
map global insert <c-b>		'<a-;>h'
map global insert <c-w>		'<esc>bc'

# From now on, there will be Plugins

## fzf.kak
plug "andreyorst/fzf.kak" noload config %{
  map global normal <c-p> ': fzf-mode<ret>'
}

## kak-lsp
plug "kak-lsp/kak-lsp" noload config %{
  map global user l 		':enter-user-mode user-lsp<ret>'  -docstring 'lsp mode'
  map global user-lsp a ':lsp-code-actions<ret>'          -docstring 'code action'
  map global user-lsp c ':lsp-code-lens<ret>'             -docstring 'execute code lens'
  map global user-lsp d ':lsp-diagnostics<ret>'           -docstring 'list diagnostics'
  map global user-lsp i ':lsp-incoming-calls<ret>'        -docstring 'incoming calls'
  map global user-lsp I ':lsp-implementation<ret>'        -docstring 'list implementations'
  map global user-lsp h ':lsp-highlight-references<ret>'  -docstring 'highlight references'
  map global user-lsp k ':lsp-hover<ret>'                 -docstring 'hover'
  map global user-lsp K ':lsp-hover-buffer<ret>'          -docstring 'hover in a dedicated buffer'
  map global user-lsp p ':lsp-workspace-symbol-incr<ret>' -docstring 'pick workspace symbol'
  map global user-lsp P ':lsp-workspace-symbol<ret>'      -docstring 'list workspace symbols'
  map global user-lsp r ':lsp-references<ret>'            -docstring 'list references'
  map global user-lsp R ':lsp-rename-prompt<ret>'         -docstring 'rename'
  map global user-lsp o ':lsp-outgoing-calls<ret>'        -docstring 'outgoing calls'
  map global user-lsp s ':lsp-goto-document-symbol<ret>'  -docstring 'pick document symbol'
  map global user-lsp S ':lsp-document-symbol<ret>'       -docstring 'list workspace symbols'
  map global user-lsp x ':lsp-find-error<ret>'            -docstring 'jump to the prev/next error'
  map global user-lsp ( ':lsp-previous-function<ret>'     -docstring 'jump to the previous function'
  map global user-lsp ) ':lsp-next-function<ret>'         -docstring 'jump to the next function'
}
