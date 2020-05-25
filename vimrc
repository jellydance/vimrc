" Editor Settings
" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'davidhalter/jedi'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'rhysd/vim-clang-format'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
Plug 'joshdick/onedark.vim'
Plug 'frazrepo/vim-rainbow'
call plug#end()

" NERDTree
nmap <C-B> :NERDTreeToggle<CR>

" FZF
map <C-p> :Files<CR>
let g:fzf_preview_window = 'right:60%'

" Ack.Vim
nmap <C-f> :Ag<space>

" Deoplete
let g:deoplete#enable_at_startup = 1

" Language Server Protocol
map <F12> :call LanguageClient_textDocument_definition()<CR>
let g:LanguageClient_serverCommands = {
    \ 'cpp': ['clangd'],
    \ 'python': ['jedi']
    \ }

" Colorscheme
colorscheme onedark
set termguicolors
syntax on

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set fileformat=unix

set number
set cursorline
set hidden
set nowrap

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Settings
