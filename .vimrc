" -------- set ↓---------------------------
set encoding=utf-8

" no need vi
set nocompatible

" equals backspace=indent,eol,start , :help 'backspace'
set backspace=2

" press <TAB> will be several spaces. how many spaces? see 'tabstop' below
set expandtab

" how many spaces in a <TAB>
set tabstop=2

" show line number
set number

" in Command Line, press <TAB>, candidate words will all show in list
" default not a list, but a world only
set wildmenu

" highlight search
set hlsearch

" real time search. <Esc> go back to prev cursor
set incsearch

" command line remember history
set history=200

set pastetoggle=<F9>

" set vim support 256 colors, use for status bar: vim-airline
set t_Co=256

syntax on

" set search match items color(default color is not good)
highlight Search cterm=NONE ctermfg=white ctermbg=blue

" Visual mode selecting color
highlight Visual cterm=NONE ctermfg=white ctermbg=blue


" fold: https://stackoverflow.com/a/4789615/2752670
set foldmethod=syntax
set foldlevelstart=999

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML


" -------- map ↓---------------------------
" quick press <j><k> as <Esc>
inoremap jk <esc>

" https://stackoverflow.com/a/676619/2752670
" use: select text, then press `Ctrl+r`
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>


" Get off my lawn - helpful when learning Vim :)
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

nnoremap <Home> :echoe "Use 0"<CR>
nnoremap <End> :echoe "Use $"<CR>


map <F4> :Ack


" -------- Leader Mappings ↓---------------

" plugin: fzf, find file in dir
nnoremap <silent> <Leader>f :Files<CR>

" switch buffers
nnoremap <silent> <Leader>b :Buffers<CR>

" plugin: ack.vim, find contents in dir
nnoremap <leader>a :Ack!<Space>

" -------- runtimepath ↓--------------
set runtimepath^=~/.vim/bundle/ctrlp.vim
" otherwise ctrlp search not ok
let g:ctrlp_max_files=0
let g:ctrlp_show_hidden = 1


" -------- vim-plug packages ↓--------------
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeNodeDelimiter = "\u00a0"
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
set fillchars+=vert:│ 
hi VertSplit cterm=NONE ctermbg=NONE guibg=NONE


if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
autocmd BufWritePre *.html,*.htm,*.vue,*.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync

Plug 'posva/vim-vue'

Plug 'airblade/vim-gitgutter'
set updatetime=100
let GitGutterEnable = 1

Plug 'rking/ag.vim'
Plug 'mhinz/vim-startify'
Plug 'itchyny/vim-cursorword'

Plug 'alvan/vim-closetag'

call plug#end()


