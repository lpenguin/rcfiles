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

" Solarized color scheme
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
colorscheme solarized

set guioptions-=T  "remove menu bar
