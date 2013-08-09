set background=dark
set nobackup
set nowritebackup
set noswapfile
set number
set tw=79
"set colorcolumn=80
set fo-=t
set nowrap

highlight ColorColumn ctermbg=233




set pastetoggle=<F8>


autocmd FileType php setlocal ts=4 sts=4 sw=4


let g:neocomplcache_enable_at_startup = 1

au BufWritePost .vimrc so ~/.vimrc

let mapleader = ","

autocmd FileType php setlocal omnifunc=phpcomplete#Complete
autocmd FileType html setlocal omnifunc=htmlcomplete


"Подсветка синтаксиса

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
syntax on
set hlsearch
endif

" Отображать панель с marks по умолчанию (plugin/showmarks.vim)
let showmarks_enable=1


" Проверка орфографии
" - включить/выключить проверку
map :call amv#toggle_spell()


" Преобразование Таба в пробелы
set expandtab

" Размер табулации по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4




" Включить автоотступы
set autoindent


" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent


" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i


set mouse=a

scriptencoding utf-8

set nocompatible



set novisualbell

" statusline
set laststatus=2

set showcmd

nnoremap <F3> :NERDTree<CR> 
nnoremap <F5> :NERDTreeClose<CR>


nnoremap <F4> :quit!<CR>


let mimic_font_style = 1



let g:nerdtree_tabs_open_on_console_startup=1


let g:CommandTAcceptSelectionTabMap = '<CR>'

:highlight VendorPrefix guifg=#00ffff gui=bold
:match VendorPrefix /-\()moz\|webkit\|o\|ms\)-[]a-zA-Z-]\+/




noremap <Leader>e :quit!<CR>
noremap <Leader>n :tabnext<CR>
noremap <Leader>m :tabprevious<CR>


set t_Co=256


filetype off
filetype plugin indent on
syntax on

colorscheme wombat256mod





function! SuperTab()
        if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
                    return "\<Tab>"
                        else
                                    return "\<C-n>"
                                        endif
                                    endfunction
                                    imap <Tab> <C-R>=SuperTab()<CR>





call pathogen#runtime_append_all_bundles()


:let g:closetag_html_style=1 

:set ft=html.php


function! StartUp()     
        if !exists("s:std_in") && 0 == argc()
                    NERDTree
                        end
                    endfunction

                    autocmd StdinReadPre * let s:std_in=1
                    autocmd VimEnter * call StartUp()

