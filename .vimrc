" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-scripts/bash-support.vim'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree'
Plug 'pearofducks/ansible-vim'
Plug 'sheerun/vim-polyglot'
Plug 'chiel92/vim-autoformat'
Plug 'scrooloose/nerdcommenter'

call plug#end()

set tabstop=2
filetype plugin on   
colorscheme molokai 
set showcmd 
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
