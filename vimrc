"General stuff
""appearance
colorscheme monokai
autocmd FileType tex colorscheme wal
autocmd FileType mail colorscheme wal
"colorscheme wal
"hi NonText ctermbg=none 
"hi Normal guibg=NONE ctermbg=NONE
hi Normal ctermfg=252 ctermbg=NONE

set number
"set cursorline
""filetype
set nocompatible
filetype plugin on
filetype indent on
""syntax
syntax on
set foldmethod=syntax
""set file directory to working direction 
set autochdir


"Indents
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab


"Leaders
let maplocalleader=","
let mapleader=","


"Mappings
""disable cursors
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

nmap <Up> <NOP>
nmap <Down> <NOP>
nmap <Left> <NOP>
nmap <Right> <NOP>

"tabswitch
nmap <Tab> <C-W>

"insert lines without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

map j gj
map k gk

"Python 
autocmd FileType python set omnifunc=pythoncomplete#Complete

"PLUGINS
"mucomplete
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

au FileType mail setlocal completeopt=menuone,noselect,noinsert
let g:mucomplete#chains = { 'mail': [ 'user', 'ulti' ] }

"NvimR
"let R_term = 'gnome-terminal' 
let R_term = 'urxvt' 

"airline
set laststatus=2
let g:airline_theme='luna'
"let g:airline_powerline_fonts = 1

"vCoolor
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<F8>'

"slime
let g:slime_target = "tmux"
"let g:slime_python_ipython = 1

"latex-suite
let g:Tex_BibtexFlavor = 'biber'
let g:Tex_DefaultTargetFormat="pdf"
let g:Tex_MultipleCompileFormats='pdf,dvi'
let g:Tex_ViewRule_pdf='zathura'
imap <leader>c \cite{


if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 11
  elseif has("gui_gtk3")
    set guifont=Inconsolata\ 11
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
