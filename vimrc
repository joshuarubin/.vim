if has("syntax")
  syntax on
endif

set background=dark
"set background=light

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  filetype plugin indent on
endif

set showcmd    " Show (partial) command in status line.
set showmatch  " Show matching brackets.
set ignorecase " Do case insensitive matching
set smartcase  " Do smart case matching
set incsearch  " Incremental search
set autowrite  " Automatically save before commands like :next and :make
set hidden     " Hide buffers when they are abandoned
"set mouse=a    " Enable mouse usage (all modes)

set smarttab
set list
"set listchars=eol:$,tab:>-,trail:-
set listchars=tab:>-,trail:-
set autoindent
set smartindent
"set modeline
set wrap
set nocopyindent
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set wildmode=longest,list:longest,list:full
"set spell

"set textwidth=80
set wrap
set expandtab
set tabstop=2
set formatoptions=croqlt
set shiftwidth=2
set backspace=indent,eol,start

set exrc   " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files
set ofu=syntaxcomplete#Complete

let mapleader = ","
let php_asp_tags = 1

if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1
let g:DisableAutoPHPFolding = 1
let g:ctrlp_root_markers = ['.root']
let g:syntastic_coffee_coffeelint_args = "--csv -f ~/.vim/coffeelint.config.json"

set nu

set guifont=Inconsolata\ for\ Powerline:h12

au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

colorscheme solarized

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

if has('gui_running')
  set transparency=1
endif
