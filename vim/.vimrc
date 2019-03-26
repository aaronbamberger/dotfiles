" Include the system settings
:if filereadable( "/etc/vimrc" )
   source /etc/vimrc
:endif

" Put your own customizations below
set t_Co=256
set mouse=a
color desert
set tabstop=4
set smartindent
set number
set ignorecase
set tags=./tags;,tags;
set laststatus=2
set colorcolumn=85
set listchars=eol:¬,tab:»·,trail:·,extends:→,precedes:←,space:␣,nbsp:␣
highlight ColorColumn ctermbg=DarkGray

" vim-plug settings
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'scrooloose/nerdtree'
Plug 'simnalamburt/vim-mundo'
call plug#end()

" YouCompleteMe settings
set completeopt-=preview

" vim-airline settings
let g:airline_powerline_fonts = 1

" NERDTree settings
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=1
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <c-n> :NERDTreeToggle<CR>

" Mundo settings
nnoremap <F5> :MundoToggle<CR>

" Include Arista-specific settings
:if filereadable( $VIM . "/vimfiles/arista.vim" )
   source $VIM/vimfiles/arista.vim
:endif

