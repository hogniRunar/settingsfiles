set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set nu
set runtimepath^=~/.vim/bundle/ctrlp.vim
set laststatus=2  
set t_Co=256
syntax on
colorscheme delek


" stuff for bullet.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

" stuff for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_sh_checkers = ['shellcheck', 'sh']

" How should we execute the search?
" --heading and --stats are required!
let g:side_search_prg = 'ag --word-regexp'
  \. " --ignore='*.js.map'"
  \. " --heading --stats -B 1 -A 4"

" Can use `vnew` or `new`
let g:side_search_splitter = 'vnew'

" I like 40% splits, change it if you don't
let g:side_search_split_pct = 0.4

let g:airline_theme='badwolf'

let mapleader=","
map <Leader>t :NERDTreeTabsToggle<CR>

" makes nerdtree open on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd w

" change dir
map <Leader>d :lcd %:p:h<CR>

filetype plugin indent on
execute pathogen#infect()
call pathogen#helptags()

"stebbis changes
"move lines with arrows
nnoremap <Down> :m+<CR>==
nnoremap <Up> :m-2<CR>==
"save with ss
noremap ss :w<CR>
"quit with qq
noremap qq :q<CR>
"jk is escape
imap jk <Esc>
