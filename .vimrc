" Vim syntax file

" Automatically reload .vimrc when changing
autocmd! bufwritepost .vimrc source! %

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
    set fileencodings=utf-8,latin1
endif
set encoding=utf-8

set nocompatible        "  Use Vim defaults (much better!)
set bs=2                "  allow backspacing over everything in insert mode
set expandtab
"set textwidth=80
set tabstop=8
set softtabstop=4
set shiftwidth=4
set background=dark
set ttyfast
set showcmd
set showmode
set wildmenu
set wildmode=list:longest

set viminfo='20,\"50    "  read/write a .viminfo file, don't store more
                        "+ than 50 lines of registers
set history=50          "  keep 50 lines of command line history
set ruler               "  show the cursor position all the time
set showmatch           "  briefly highlight matching paren/bracket/brace
set hls                 "  highlight search results

" "Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
set hidden

" This setting can be useful for determining how many lines of text you want to
" yank. It will display the line number column, but lines will be the distance
" from the current line.
" set relativenumber

" Added 2005-03-23 Based on http://www.perlmonks.org/index.pl?node_id=441738
set smarttab
set shiftround
set noautoindent
set smartindent

"  Enable code folding if available
if has("folding")
    set foldmethod=marker
endif

" PHP syntax settings
let php_sql_query=1
let php_htmlInStrings=1
let php_folding=0
let php_parent_error_close=1
let php_parent_error_open=1
autocmd BufNewFile,BufRead *.php call PhpDocLoad()

filetype indent plugin on

"  Only do this part when compiled with support for autocommands
if has("autocmd")
    "  Remove all autocmds before we start
    autocmd!

    "  In text files, always limit the width of text to 78 characters
    "autocmd BufNewFile,BufReadPost,FileReadPost *.txt set tw=78

    " use php syntax for phtml files
    autocmd BufNewFile,BufRead *.inc set ft=php
    autocmd BufNewFile,BufRead *.phpt set ft=php
    autocmd BufNewFile,BufRead *.phtml set ft=php
    autocmd BufNewFile,BufRead *.phps set ft=php
    autocmd BufNewFile,BufRead *.twig set ft=html

    autocmd BufNewFile,BufRead *.rs set ft=rust

    "  Set some default file editing settings
    "autocmd BufNewFile,BufReadPost,FileReadPost * set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    "autocmd BufReadPost,FileReadPost * exe "hi Search ctermfg=black ctermbg=yellow" |

    "  Reset the defaults for Makefiles as they need proper tabs.
    autocmd BufNewFile,BufReadPost,FileReadPost Makefile* set tabstop=8 shiftwidth=8 softtabstop=8 noexpandtab

    "  When editing an existing file, always jump to the last cursor position
    autocmd BufReadPost,FileReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \     exe "normal g'\"" |
                \ endif

    "autocmd BufNewFile,BufReadPost,FileReadPost *.php highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    "autocmd BufNewFile,BufReadPost,FileReadPost *.php match OverLength /\%81v.\+/
endif


if &term=="xterm"
    set t_Co=16
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif

"  Switch syntax highlighting on, when the terminal has colors
"+ Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

" bash is my shell
let bash_is_sh=1

" PHPDocumenter Commands
inoremap <C-D>p <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-D>p :call PhpDocSingle()<CR>
let g:pdv_cfg_Author = $AUTHOR
let g:pdv_cfg_Version = ""
let g:pdv_cfg_Copyright = "2011 Herman J. Radtke III"
"let g:pdv_cfg_License = "GNU Lesser General Public License {@linkhttp://www.gnu.org/licenses/lgpl.html}"
 
" Debugger.py
let g:debuggerPort = 9002 " use non-standard port to prevent conflicts with fcgi
let g:debuggerMaxDepth = 3

if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb

    map <C-_> :scstag <C-R>=expand("<cword>")<CR><CR>
    map c<C-]> :scs find g <C-R>=expand("<cword>")<CR><CR>
    map c<C-\> :scs find s <C-R>=expand("<cword>")<CR><CR>
endif

" only indent one shiftwidth each line
let g:SimpleJsIndenter_BriefMode = 1
