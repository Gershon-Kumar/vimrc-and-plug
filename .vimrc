if filereadable(expand("~/.vimrc.plug"))
     source ~/.vimrc.plug
 endif

set number
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme codedark


call plug#begin('~/.vim/plugged')

    "Auto prettier for VIM
    Plug 'prettier/vim-prettier'

    "VIM Nerd Tree
    Plug 'preservim/nerdtree'	
    
    "VIM Handlebar syntax
    Plug 'mustache/vim-mustache-handlebars'

    "VIM Auto complete Brackets,tags,qutatuiob
    Plug 'jiangmiao/auto-pairs'
call plug#end()

"removing arrow keys
" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>


