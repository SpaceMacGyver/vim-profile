" Pathogen
execute pathogen#infect()

set nocompatible
set history=1000
:set laststatus=2
":set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
:set ruler
:set hidden
:color slate
:syn on
:set bs=2
:set nu
:set hlsearch
set autoindent
:set list!
:set listchars=tab:»·,trail:_,eol:$
:let do_syntax_sel_menu = 1|runtime! synmenu.vim
:filetype plugin on
:set incsearch
imap ({} ({})O	
imap (){} (){}O	
imap {} {}O	

imap action// add_action("mza", function() {});O	`za

" Gists
let g:gist_post_private = 1
let g:gist_show_privates = 1
