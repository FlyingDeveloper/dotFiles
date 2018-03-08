set number
set autoindent
syntax on
set ruler

set encoding=utf-8
set fileencoding=utf-8
syntax on
set scroll=1
set ts=4
set expandtab
nnoremap <C-H> :Hexmode<CR>
inoremap <C-H> <Esc>:Hexmode<CR>
vnoremap <C-H> :<C-U>Hexmode<CR>
set ignorecase 
set backspace=indent,eol,start

nnoremap <F5> :buffers<CR>:buffer<Space>

" see https://github.com/tpope/vim-pathogen
execute pathogen#infect() 

" see https://github.com/ctrlpvim/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore=node_modules,bower_components,X86_64,X86_64_DEBUG

colorscheme desert
