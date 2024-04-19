set nocompatible              " be iMproved, required
filetype off                  " required
let $GIT_ASKPASS='true'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'AndrewRadev/tagalong.vim'
Plugin 'tpope/vim-surround'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

syntax on
" Put your non-Plugin stuff after this line
"
set encoding=utf-8
set number
set relativenumber
set mouse=a
set tabstop=4
set shiftwidth=4
set autoindent
set noexpandtab

colorscheme gruvbox
set background=dark
set t_Co=256
let g:gruvbox_contrast_dark='hard'

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
	let l:raw_color = trim(a:color, '#')

	let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)	
	let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
	let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

	let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

	return l:brightneed > 155
endfunction

set nu
set nobackup

set ruler
set showcmd
set ignorecase
set smartcase
set incsearch

inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha

let g:user_emmet_install = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key = ','

let g:tagalong_verbose = 1
