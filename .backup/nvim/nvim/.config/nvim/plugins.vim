call plug#begin('~/.local/share/nvim/plugged')

" General Use
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'https://github.com/sirver/UltiSnips'
 
" Directory Management
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

" Linting with LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" HTML & CSS
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
augroup VimCSS3Syntax
	  autocmd!

		autocmd FileType css setlocal iskeyword+=-
augroup END

" Aesthetics
""Plug 'morhetz/gruvbox'
"" Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

" LaTeX and Notetaking
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/notes/'}]

Plug 'lervag/vimtex'

call plug#end()
