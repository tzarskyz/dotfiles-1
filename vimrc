" Most general settings first
set nocompatible 	        " Set Vim rather than Vi settings; must go first
set noeb 		            " Set no audio or visual error beep
set bs=indent,eol,start     " Backspace over everything in insert mode
set history=500		        " Keep 50 lines of command line history

" Set items for view @ bottom of windows
set ruler                   " Show the cursor position all the time
set showcmd                 " Display incomplete commands
set showmode                " Display current mode
set ls=2                    " Always show status bar

" Syntax basics
syntax on
filetype indent on
set autoindent
set smartindent
filetype plugin on

" Text basics
set textwidth=80            " Set text to wrap at 80 columns
set expandtab				" Convert tabs to spaces
set tabstop=4               " Tabs = 4 spaces 
set shiftwidth=4            " Indent/outdent 4 spaces
set softtabstop=4           " Tab key indents 
set shiftround              " Indent/outdent to nearest tabstop
set smarttab                " Uses shiftwidth @ start of lines
set fo=trcn

" An exception for Ruby files
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set softtabstop=2

" Syntax for HTML files
autocmd FileType html set tabstop=2
autocmd FileType html set shiftwidth=2
autocmd FileType html set softtabstop=2
autocmd FileType html set fo=tcroqn
autocmd FileType html set wrap linebreak textwidth=0

" Syntax for CSS files
autocmd FileType css set tabstop=2
autocmd FileType css set shiftwidth=2
autocmd FileType css set softtabstop=2
autocmd FileType css set fo=tcroqn
autocmd FileType css set wrap linebreak textwidth=0

" Syntax for JSON files
autocmd FileType json set fo=tcroq
autocmd FileType json set wrap linebreak textwidth=0

" Search basics
set incsearch               " Do incremental searching
set showmatch               " Show matching brackets
set hlsearch                " Highlight all matches in a search

" Don't use Ex mode, use Q for formatting
map Q gq

" Enable mouse
set mouse=a

" Use IR_BLACK for my colorscheme
colorscheme ir_black

" Add matching brackets for Perl
autocmd FileType perl set showmatch
autocmd FileType perl set matchpairs+=<:>

" Show line numbers in Perl, Ruby and C
autocmd FileType perl set number
autocmd FileType ruby set number
autocmd FileType c    set number
autocmd FileType html set number

" Add more Markdown support
autocmd FileType mkd set ai formatoptions=tcroqn comments=n:>
autocmd FileType mkd set wrap linebreak textwidth=0

" Make tab in v-mode indent code
vmap <tab> >gv
vmap <s-tab> <gv

" Make tab in normal mode indent code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

" Fix placement of backups and swap files
set backup
set backupdir=/Users/paris/.vim_backups,/tmp
set directory=/tmp,/Users/paris/.vim_backups

" Some Perl voodoo: insert Perl base & set filetype
imap ,perl #!/usr/bin/env perl<CR>use strict;
    \<CR>use warnings;<CR><esc>:set filetype=perl<ENTER>i
"
" Check for templates at start up
:autocmd BufNewFile *.html 0r ~/.vim/templates/html.tpl

" Tell Vim to print using US-sized paper, not A4
set printoptions:paper:letter

" Stuff from here: http://tuxtraining.com/2008/11/11/exploring-vim-configurations
set hidden
nnoremap ' `
nnoremap ` '
let mapleader = ","
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest
set title
set scrolloff=3
nmap <silent> <leader>n :silent :nohlsearch<CR>
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>
set shortmess=atI
