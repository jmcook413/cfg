" =======================================================================
"    Vundle
" =======================================================================
set nocompatible                " Don't maintain compatibilty with Vim. Required for Vundle.
set filetype=off                " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" GitGutter
Plugin 'airblade/vim-gitgutter'

" Emmet
Plugin 'mattn/emmet-vim'

" Auto-Pairs
Plugin 'jiangmiao/auto-pairs'

" Indent Line
Plugin 'Yggdroot/indentLine'

" Find and Replace
Plugin 'brooth/far.vim'

" multichange
Plugin 'AndrewRadev/multichange.vim'

" vim-autoformat
Plugin 'Chiel92/vim-autoformat'

" Sneak search
Plugin 'justinmk/vim-sneak'

" Dracula coloscheme
Plugin 'dracula/vim'

" Polyglot
Plugin 'sheerun/vim-polyglot'

" Jbuilder plugin
Plugin 'juanchanco/vim-jbuilder'

" React plugins
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Syntastic
Plugin 'scrooloose/syntastic'

" Vim-Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Vinegar
Plugin 'tpope/vim-vinegar'

" vim-commentary
Plugin 'tpope/vim-commentary'

" Surround
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" =======================================================================
"     Settings
" =======================================================================

colorscheme JellyBeans
let g:jellybeans_use_term_italics = 1
syntax on

set termguicolors
set number                      " Display line numbers beside buffer
set hidden                      " Allow buffer change w/o saving
set lazyredraw                  " Don't update while executing macros
set backspace=indent,eol,start  " Sane backspace behavior
set history=1000                " Remember last 1000 commands
set scrolloff=5                 " Keep at least 4 lines below cursor
set ic
set hlsearch
set incsearch
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set conceallevel=1
let mapleader="\<Space>"

" =======================================================================
"     MultiChange Settings
" =======================================================================
let g:multichange_mapping        = '<c-m>'
let g:multichange_motion_mapping = '<c-m>'

" =======================================================================
"    vim-autoformat Settings
" =======================================================================
" au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0


" =======================================================================
"    Vim-Airline Settings
" =======================================================================

set laststatus=2
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme='distinguished'

" =======================================================================
"     Netrw Settings
" =======================================================================
let g:netrw_liststyle = 3
map <C-N> :Lexplore<CR>

" =======================================================================
"     FZF Settings
" =======================================================================
map <C-P> :FZF --preview=head\ -20\ {}<CR>
let g:fzf_colors=
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" =======================================================================
"     Indent Line Settings
" =======================================================================
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 0

" =======================================================================
"     Mappings
" =======================================================================

" mappings for buffer control
noremap <Leader>n :bn<cr>
noremap <Leader>p :bp<cr>
noremap <Leader>d :bd<cr>

" remap for <ESC> key
inoremap jj <ESC>
