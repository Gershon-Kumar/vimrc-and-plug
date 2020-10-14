call plug#begin("~/.vim/plugged")

	" Plugin Section
  	Plug 'dracula/vim'

	"File Explorer
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'

	"File Searching
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'

	"VSCODE Syntax highlighting
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
	Plug 'leafgarland/typescript-vim'
	Plug 'peitalin/vim-jsx-typescript'


call plug#end()


"Config Section
	"set terminal colors if terminal supports colors
	if (has("termguicolors"))
 		set termguicolors
	endif
	
	"Nerd Tree config Ctrl+b to open the nerd tree
	let g:NERDTreeShowHidden = 1
	let g:NERDTreeMinimalUI = 1
	let g:NERDTreeIgnore = []
	let g:NERDTreeStatusline = ''
	" Automaticaly close nvim if NERDTree is only thing left open
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	" Toggle
	nnoremap <silent> <C-b> :NERDTreeToggle<CR>

	"move between vsplit or hsplit pannels
	"This allows you to move between your terminal and other panels with Alt+H, Alt+J, Alt+K, and Alt+L.
	tnoremap <A-h> <C-\><C-n><C-w>h
	tnoremap <A-j> <C-\><C-n><C-w>j
	tnoremap <A-k> <C-\><C-n><C-w>k
	tnoremap <A-l> <C-\><C-n><C-w>l
	nnoremap <A-h> <C-w>h
	nnoremap <A-j> <C-w>j
	nnoremap <A-k> <C-w>k
	nnoremap <A-l> <C-w>l

	"File Searching
	" press Ctrl+P , search for the file you’re looking for, and press:
	"CTRL+T to open it in a new tab. CTRL+S to open below (split view). CTRL+T to open to the side (vertical split). Enter to open it in the currently selected panel.
	nnoremap <C-p> :FZF<CR>
	let g:fzf_action = {
  	\ 'ctrl-t': 'tab split',
  	\ 'ctrl-s': 'split',
  	\ 'ctrl-v': 'vsplit'
  	\}
	
	"Ignore nodemodules and .gitignore
	let $FZF_DEFAULT_COMMAND = 'ag -g ""'

	"Syntax
	syntax enable
	colorscheme dracula

	"Prettify document press "fdn" (format document now)
	nnoremap fdn :silent %!prettier --stdin-filepath %<CR>



