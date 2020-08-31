

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Bindings
nmap <C-n> :NERDTreeToggle<CR>
