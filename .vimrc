execute pathogen#infect()

syntax on
filetype plugin on
filetype plugin indent on

" Открыть/закрыть список тагов
nmap <F8> :TagbarToggle<CR>
nmap <F4> :NERDTreeToggle<CR>
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

" Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Raimondi/delimitMate'
Bundle 'majutsushi/tagbar'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/tComment'
Bundle 'scrooloose/nerdtree'
Bundle 'Yggdroot/indentLine'
Bundle 'ervandew/supertab'
Bundle 'klen/python-mode'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'elzr/vim-json'
"
" Python-mode
let g:pymode_doc = 0
let g:pymode_lint_checkers = ['pylint']
let g:pymode_lint_ignore = "C"

""
"" Searching
""

set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ... unless they contain at least one capital letter

""
"" Wild settings
""

" TODO: Investigate the precise meaning of these settings
set wildmode=list:longest,list:full
"
" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

"
"" Backup and swap files
"

set backupdir^=~/.vim/_backup// " where to put backup files.
set directory^=~/.vim/_temp// " where to put swap files.
au BufRead,BufNewFile *.md set filetype=markdown

map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]

map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '

map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .

map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }

map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "

map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

