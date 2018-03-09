:set nocompatible

" Pathogen
execute pathogen#infect()

set nocompatible
set history=1000
:set laststatus=2


":set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
:set ruler
:set hidden
:syn on
:set bs=2
:set nu
:set hlsearch
hi Search ctermbg=13 ctermfg=0
set autoindent
:set list!
:set listchars=tab:»·,trail:_,eol:$
:let do_syntax_sel_menu = 1|runtime! synmenu.vim
:filetype plugin on
":filetype plugin indent on
:set incsearch

function ConfigureBaseJs()
    imap {} {}O	
    imap <Leader>clog /**/console.log();<Left><Left>a
    set tabstop=4
    set shiftwidth=4
    set expandtab
endfunction

function ConfigureNewJs()
    call ConfigureBaseJs()

    imap <Leader>() (maa);`aa
    imap <Leader>af () => {}
    imap <Leader>wcl (maa)i() => {}`ai
    imap <Leader>; %a;<Left>%i
endfunction
call ConfigureNewJs()

function ConfigureDefaultJs()
    call ConfigureBaseJs()

    imap ({} ({})O	
    imap (){} (){}O	

    " JS
    imap func( () => {}
endfunction

" Chai/Mocha
function ConfigureMocha()
    imap it( it('', );<Left><Left>afunc(
    imap desc( describe('', );<Left><Left>afunc(
    imap before( before('', );<Left><Left>afunc(
    imap after( after('', );<Left><Left>afunc(
    imap beforeEach( beforeEach('', );<Left><Left>afunc(
    imap afterEach( afterEach('', );<Left><Left>afunc(
endfunction

function RefactorRequireToImport()
    :'<,'>s/^\(.\{-}\) = require(\(.\{-})\)[,;]/import \1 from \2;
endfunction

" WP
" Gists
let g:gist_post_private = 1
let g:gist_show_privates = 1

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
" SyntasticToggleMode
"
map ,qn <Plug>QuickFixNote
map ,qd <Plug>QuickFixDelete
map ,qe <Plug>QuickFixEdit
map ,qE <Plug>QuickFixBuffer

map ,qs <Plug>QuickFixSave
map ,ql <Plug>QuickFixLoad
" QuickFix

set wildignore+=node_modules
set wildignore+=lib
