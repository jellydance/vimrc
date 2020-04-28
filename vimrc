" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'psf/black'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
" Initialize plugin system
call plug#end()

map <C-b> :NERDTreeToggle<CR>
nmap <C-f> :Ag<space>

" fzf setting
map <C-p> :Files<CR>
let g:fzf_preview_window = 'right:60%'

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

colorscheme onedark

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" move vertically by visual line
nnoremap j gj
nnoremap k gk
