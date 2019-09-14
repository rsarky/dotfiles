set nocompatible
filetype off 


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
"Plugin 'Buffergator' 
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox' "Another colorscheme
"Plugin 'kien/ctrlp.vim' "Fuzzy file finder
Plugin 'tpope/vim-commentary' "easy toggling of comments

Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Bundle 'edkolev/tmuxline.vim'

Plugin 'Valloric/YouCompleteMe'  

Plugin 'airblade/vim-gitgutter' "Git plugin that shows diffs
Plugin 'tpope/vim-fugitive' "Git plugin
Plugin 'tpope/vim-sleuth' "Autodetect indentation settings

Plugin 'vimwiki/vimwiki'
call vundle#end()

filetype plugin indent on

syntax on

"Theme
set t_Co=256
"let g:gruvbox_italic=1 "GruvBox specific.
"colorscheme gruvbox
set background=dark
colorscheme dracula


"Spaces and tabs
set softtabstop=2 " Same as above but while editing.
set shiftwidth=2
set expandtab "tabs are spaces
set autoindent

"UI config
set number "show line numbers
set wildmenu
set cursorline "highlight current line
filetype indent on  
set lazyredraw
set showmatch
syntax on "Toggle Syntax Highlighting:wq
set relativenumber "Relative Line Numbering
"set colorcolumn=80 "Makes a reference line at column 80.


"Searching
set incsearch "Search as characters are entered
set hlsearch "Highlight matches
nnoremap <leader><space> :nohlsearch<CR>

"Folding
" set foldmethod=indent
" set foldlevelstart=10
" nnoremap <space> za "Space opens closes folds

set showcmd "Shows the command typed.

"Useful mappings.
let mapleader="," "Map leader to comma
"jk is escape.
inoremap jk <esc>

"Mapping leader-s to save files.
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

"Mapping leader-q to quit.Will prompt if file is not written.
nnoremap <leader>q :q<cr>

"Mapping leader Q to force quit.
nnoremap <leader>Q :q!<cr>

"Movement between panes.
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

"Remove highlights after search.
nnoremap <leader>h :noh<cr>

"Enable Mouse
set mouse=a

"Airline
let g:airline_powerline_fonts = 1

"Automatically insert matching bracket.
inoremap {<CR> {<CR>}<Esc>ko
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

noremap <F2> :source ~/.vimrc<CR>

"Move 5 lines at a moment with up down keys.
nnoremap <Up> 5k
nnoremap <Down> 5j

set tags=./tags,./TAGS,tags;~,TAGS;~

"Change update time
set updatetime=100

"Always show sign column
set signcolumn=yes

"Nerdtree mapping
map <leader>n :NERDTreeToggle<CR>

"Easy Buffer switching
nnoremap <leader>b :ls<CR>:b<Space>
nnoremap <leader>p :b#<CR>
set hidden

"For vim-latex
let g:tex_flavor='latex'

"vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
