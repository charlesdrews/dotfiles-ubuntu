" *******************************************************************
" Configure Vundle (see https://github.com/gmarik/Vundle.vim)
" *******************************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add YouCompleteMe (http://valloric.github.io/YouCompleteMe/)
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" *******************************************************************
" End configuration of Vundle
" *******************************************************************

" Use the Solarized color scheme
syntax enable
set background=dark
colorscheme solarized
set t_Co=16

" Specify the C-family compilation flags for YouCompleteMe
let g:ycm_global_extra_conf = '~/.ycm_extra_conf.py'
" Control preview window behavior with YouCompleteMe
" let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"set nocompatible	   " don't use vi compatible mode (in Vundle config above)
set number             " turn on line numbers
set ruler              " show line & column #s in statusline
set visualbell         " flash screen rather than sound beep
set pastetoggle=<F12>  " paste from other apps w/o indent problems
set colorcolumn=72,79  " visual reminder to avoid overlong lines

set hlsearch           " highlight search results
set incsearch          " highlight next match while typing pattern
nnoremap <silent> <C-l> :nohlsearch<CR><C-l> " use Ctrl-l to mute hl

" enable filetype detection, plugins, & indenting
"	-defaults are in /usr/share/vim/vim73/
"		& /usr/share/vim/vim73/indent/
"	-my overrides in ~/.vim/after/ftplugin/)
"filetype plugin indent on
" for non-recognized filetypes, use:
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
"filetype plugin indent on " (in the Vundle config above)

" set digraphs for easy use of certain non-ascii characters
"	convert the unicode hex values to decimal
digraph pp 182   " paragraph sign: U+00B6 = 182
digraph u> 8593  " up arrow: U+2191 = 8593
digraph -> 8594  " right arrow: U+2192 = 8594
digraph d> 8595  " down arrow: U+2193 = 8595
digraph [[ 10214 " left double bracket: U+27E6 = 10214
digraph ]] 10215 " right double bracket U+U27E7 = 10215
digraph << 10216 " left angle bracket U+27E8 = 10216
digraph >> 10217 " right angle bracket U+27E9 = 10217
digraph ln 172   " logical negation sign U+00AC = 172
digraph la 8743  " logical and/conjunction U+2227 = 8743
digraph lo 8744  " logical or/disjunction U+2228 = 8744
