set encoding=utf-8			" set encoding to utf-8
set number					" display numbers
set tabstop=4				" number of spaces in a tab
set shiftwidth=4			" >> shifts by 4 spaces, i.e. one tab

"filetype on         " automatically detect filetype
"filetype plugin on  " activate appropriate plugin for the filetype
"filetype indent on  " indent code
"
" or in a single command:
"
filetype plugin indent on

" To automatically set tabs (et/ts/sw/sts) in javascript files:
autocmd filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2



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

" for horizontal scrolling
map <C-L> 10zl  " rightward
map <C-H> 10zh  " leftward
