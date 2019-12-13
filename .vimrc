set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

" display number line
set nu

" NerdTree
map <C-n> :NERDTreeToggle<CR>
" move to current file
nnoremap <C-\> :NERDTreeFind %<CR>

" :Files command
command FF Files

set path=$PWD/**

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'slim-template/vim-slim'

call plug#end()

syntax on
colorscheme onedark
