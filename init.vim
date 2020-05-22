" Editor Settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set fileformat=unix

set number
set cursorline
set hidden
set nowrap

imap <C-L> <Esc>

" Settings
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/opt/rh/rh-python36/root/usr/bin/python'

" Plugins

function! GdbPostUpateHook(info)
    " info is a dictionary with 3 fields
    " - name: name of the plugin
    " - status: 'installed', 'updated', or 'unchanged'
    " - force: set on PlugInstall! or PlugUpdate!
    !./install.sh
    UpdateRemotePlugins
endfunction

call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'rhysd/vim-clang-format'
Plug 'vim-airline/vim-airline-themes'
Plug 'sakhnik/nvim-gdb', { 'do': function('GdbPostUpateHook') }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'lervag/vimtex'
Plug 'joshdick/onedark.vim'
call plug#end()

" Airline
let g:airline_theme='base16_nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" NERDTree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeIgnore = ['^build$']
nmap <C-T> :NERDTreeToggle<CR>

" FZF
nmap <C-F> :FZF<CR>

" Deoplete
let g:deoplete#enable_at_startup = 1

" Language Server Protocol
let g:LanguageClient_serverCommands = {
    \ 'cpp': ['clangd'],
    \ }

let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1

" Colorscheme
colorscheme onedark
set termguicolors
syntax on

" Debugging
let g:nvimgdb_disable_start_keymaps = 1
let g:nvimgdb_config_override = {
\ 'split_command': 'split'
\ }
tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>

" LaTeX
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_method='latexmk'
set conceallevel=1
let g:tex_conceal='abdmg'
