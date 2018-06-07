set encoding=utf-8			" set encoding to utf-8
set number					" display numbers
set tabstop=4				" number of spaces in a tab
set shiftwidth=4			" >> shifts by 4 spaces, i.e. one tab
filetype plugin indent on	" indent code

set mouse=a					" enables the mouse

" this makes pane resizing work in tmux:
if has("mouse_sgr")
	set ttymouse=sgr
else
	set ttymouse=xterm2
endif

set nojoinspaces
set nowrap

set expandtab
"set softtabstop=4

"set background=dark
"colorscheme solarized

" for visualising whitespace:
set listchars=eol:¬,tab:>·,precedes:<,space:␣
"set list
