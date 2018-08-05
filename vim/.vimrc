" Include the system settings
:if filereadable( "/etc/vimrc" )
   source /etc/vimrc
:endif

" Include Arista-specific settings
:if filereadable( $VIM . "/vimfiles/arista.vim" )
   source $VIM/vimfiles/arista.vim
:endif

" Put your own customizations below
set t_Co=256
set mouse=a
color desert
set number
set ignorecase
set tags=./tags;,tags;
set laststatus=2
set colorcolumn=85
highlight ColorColumn ctermbg=DarkGray

" vim-plug settings
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
call plug#end()

" YouCompleteMe settings
set completeopt-=preview

" vim-airline settings
let g:airline_powerline_fonts = 1
