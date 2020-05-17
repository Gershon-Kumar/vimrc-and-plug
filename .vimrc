" ----------------------------------------
" Automatic installation of vim-plug, if it's not available
" ----------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"-----------------------------------------

"-----------------------------------------
" Automatically install missing plugins on startup
"-----------------------------------------
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
"-----------------------------------------


"Plugins
"-----------------------------------------


if filereadable(expand("~/.vimrc.plug"))
     source ~/.vimrc.plug
 endif



call plug#begin('~/.vim/plugged')

    "Auto prettier for VIM
    Plug 'prettier/vim-prettier'

    "VS code color Scheme
    Plug 'tomasiser/vim-code-dark'

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


" My Config
set number
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme codedark
