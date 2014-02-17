execute pathogen#infect()

syntax on
filetype plugin on
filetype plugin indent on

" Открыть/закрыть список тагов
nmap <F8> :TagbarToggle<CR>
" Управление мышью
:set mouse=a
" Показывать номера строк
:set nu
" Переключение между окнами
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
" Отступы влево/вправо
vnoremap > >gv
vnoremap < <gv
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

nmap <C-b> gccj^

" CommandT
noremap <leader>m <Esc>:CommandTBuffer<CR>
if has("gui_running")
	" Solarized color scheme
	set background=dark
	let g:solarized_termtrans=1
	let g:solarized_termcolors=256
	" let g:solarized_contrast="high"
	" let g:solarized_visibility="high"
	colorscheme solarized

	set guioptions-=T  "remove menu bar
endif

" TABS
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" let g:jedi#completions_command = "<M-Space>"

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Raimondi/delimitMate'
Bundle 'majutsushi/tagbar'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/tComment'
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'Yggdroot/indentLine'
Bundle 'ervandew/supertab'
Bundle 'klen/python-mode'

" Python-mode
let g:pymode_doc = 0
let g:pymode_lint_checkers = ['pylint']
let g:pymode_lint_ignore = "C"



