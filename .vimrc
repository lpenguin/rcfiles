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
set laststatus=2
"PYTHONMODE

" Включаем библиотеку Rope
let g:pymode_rope = 1

" Включаем linting
let g:pymode_lint = 1

" Какие ошибки подсвечивать
let g:pymode_lint_checker = "pyflakes,pep8"

" Отключаем надоедливое окно, отображающее ошибки и предупреждения
let g:pymode_lint_cwindow = 0

" Включаем поддержку virtualenv
let g:pymode_virtualenv = 1

" Подсветка синтаксиса и ошибок
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Отключаем фолдинг
let g:pymode_folding = 0

" Загружаем плагин для вставки брейкпоинтов
let g:pymode_breakpoint = 1

" По leader + e будет устанавливаться брейкпоинт
let g:pymode_breakpoint_key = '<leader>e'
imap <leader>c <C-R>=RopeCodeAssistInsertMode()<CR>
