" Support filetype specific settings
filetype plugin indent on
so ~/.config/nvim/plugins.vim					" Load my plugins

" Lexical highlighting
syntax enable

" Measurement
set relativenumber
set number

" Change <Tab> appearence
set tabstop=2
set shiftwidth=2
"set expandtab

" Lines wrapping at a certain width and after certain characters
set wrap
set linebreak

" Backup and undo management
set undofile
set undodir=~/.local/share/nvim/undodir

set backup
set backupdir=~/.local/share/nvim/backup

" Set <C-A> and <C-X> to work with decimal numbers and not octals
set nrformats=

" Search options
set incsearch 		" Show what is currently matched by the inserted pattern
set ignorecase		" Ignore the case during the search
set smartcase 		" Override ignorecase when there is an uppercase character

" Make the Insert Mode deletions mappings undoable
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Make the screen redraw without highlighted searches
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Mouse control
set mouse=a 

" Aesthetics

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (has("nvim"))
	"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
	"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
	" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
	if (has("termguicolors"))
		set termguicolors
	endif
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"colorscheme gruvbox
"set background=dark

"colorscheme nord
"set background=light
"let g:airline_theme='nord'

" Superscript and subscript Latin letters

"" Superscript small case
	:digraph aS 7491
	:digraph bS 7495
	:digraph cS 7580
	:digraph dS 7496
	:digraph eS 7497
	:digraph fS 7584
	:digraph gS 7501
	:digraph hS 688
	:digraph iS 8305
	:digraph jS 690
	:digraph kS 7503
	:digraph lS 737
	:digraph mS 7504
	:digraph nS 8319
	:digraph oS 7506
	:digraph pS 7510
	"superscript “q” in unicode doesn't exist
	" :digraph qS
	:digraph rS 691
	:digraph sS 738
	:digraph tS 7511
	:digraph uS 7512
	:digraph vS 7515
	:digraph wS 695
	:digraph xS 739
	:digraph yS 696
	:digraph zS 7611

"Subscript small case
"alphsubs ---------------------- {{{
	execute "digraphs ks " . 0x2096 
	execute "digraphs as " . 0x2090
	execute "digraphs es " . 0x2091
	execute "digraphs hs " . 0x2095
	execute "digraphs is " . 0x1D62
	execute "digraphs ks " . 0x2096
	execute "digraphs ls " . 0x2097
	execute "digraphs ms " . 0x2098
	execute "digraphs ns " . 0x2099
	execute "digraphs os " . 0x2092
	execute "digraphs ps " . 0x209A
	execute "digraphs rs " . 0x1D63
	execute "digraphs ss " . 0x209B
	execute "digraphs ts " . 0x209C
	execute "digraphs us " . 0x1D64
	execute "digraphs vs " . 0x1D65
	execute "digraphs xs " . 0x2093
