# Before writing the file, create the directory if it does not exist
hook global BufWritePre .* %{ nop %sh{ dir=$(dirname $kak_buffile)
  [ -d $dir ] || mkdir --parents $dir
}}

# Load kak-lsp only for recognised languages

# Recognise Racket file extensions as Lisp
hook global BufCreate (.*/)?(.*\.(rkt|rktl|rkts|rktd)) %{
	set-option buffer filetype lisp
}

# Plugins

## kak-lsp
plug "kak-lsp/kak-lsp" noload config %{
  ### Enable LSP features for the specified filetypes
  hook global WinSetOption filetype=(javascript|typescript|c|cpp) %{
      set-option window lsp_auto_highlight_references true
      set-option window lsp_hover_anchor false
      lsp-auto-hover-enable

      echo -debug "Enabling LSP for filtetype %opt{filetype}"
      lsp-enable-window

      lsp-inlay-diagnostics-enable window
      lsp-inlay-hints-enable window
      lsp-inlay-code-lenses-enable window

      hook window BufWritePre .* lsp-formatting-sync
  }

  ### Close kak-lsp when you close kakoune
  hook global KakEnd .* lsp-exit
}
