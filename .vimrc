" Tabs and indents, overriden with after/ftplugin for
" specific file types
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

" Interface extensions
set showcmd
set number
set ruler
set mouse=a
set showmatch
set so=5

" Color scheme
set background=dark
colorscheme desert

" Search and highlighting
set hlsearch
set incsearch
set ignorecase
set smartcase

" ----------------------------------------------------------------
" General utilities
" ----------------------------------------------------------------
filetype plugin on
filetype indent on
set scrolloff=1
syntax on

set magic
set showmode
set noswapfile
set nowb
set nobackup
set encoding=utf8
set wildignore=*.o,*~,*.pyc
set backspace=eol,start,indent
set lazyredraw
set noerrorbells
set novisualbell


" ----------------------------------------------------------------
" Mapping
" ----------------------------------------------------------------
let mapleader=","
let g:mapleader=","

vnoremap > >gv
vnoremap < <gv

noremap j gj
noremap k gk

" Paste toggle bound to F2
set pastetoggle=<F2>

" if forgot sudo then :w like this
cmap w!! !sudo tee % >/dev/null

map <space> /
map <c-space> ?

map <silent> <leader><cr> :noh<cr>

" Tab handling mappings
map <leader>tn :tabnew<cr>
map <leader>to :tabeonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>

" Quick access utilities
map <leader>sp :setlocal spell!<cr>
map <leader>ss :shell<cr>

" ----------------------------------------------------------------
" Functions and macros
" ----------------------------------------------------------------
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()

