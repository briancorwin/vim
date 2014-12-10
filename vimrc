""" PLUGINS
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugins from GitHub repos

" Look
Plugin 'bling/vim-airline'

" Files
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdtree'

" Coding
Plugin 'scrooloose/nerdcommenter'
Plugin 'msanders/snipmate.vim'
"Plugin 'Lokaltog/vim-easymotion'

" Git
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'

" Python
Plugin 'klen/python-mode'
Plugin 'alfredodeza/pytest.vim'
Plugin 'davidhalter/jedi-vim'

" Hardcore IDE 
"Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'majutsushi/tagbar'

" Other
"Plugin 'edsono/vim-matchit'
"Plugin 'tpope/vim-surround'
"Plugin 'kien/ctrlp.vim'
"Plugin 'xolox/vim-session'
"Plugin 'xolox/vim-misc' " required by vim-session
 

" Tool Integration

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required, enable loading indent file for filetype


""" SETTINGS 
"" GLOBAL SETTINGS
" For all files (but may be overridden in ftplugin).
set noeol                         " have a newline char at EOF
syntax on                       " syntax highlighing
set laststatus=2           	    " statusline all the time
set scrolloff=2            	    " have at least 2 lines above/below the cursor
set clipboard=unnamedplus   	" use system clipboard for yank/copy and paste
set visualbell                  " turn on the visual bell
set cursorline                  " highlight the line under the cursor
set fillchars+=vert:│           " better looking for windows separator
set ttyfast                     " better screen redraw
set title                       " set the terminal title to the current file
set showcmd                     " shows partial commands
set hidden                      " hide the inactive buffers
set ruler                       " sets a permanent rule
set lazyredraw                  " only redraws if it is needed
"set autoread                   " update a open file edited outside of Vim
set ttimeoutlen=200             " toggle between modes almost instantly
set virtualedit=all             " to edit where there is no actual character
set number                      " show line numbers
set showmatch                   " set show matching parenthesis
set wrapscan                    " searches wrap around the end of the file

" Searching
set incsearch               	" turn on search-as-you-type
set ignorecase		    	    " do case insensitive matching
set smartcase               	" smart case ignore
set showmatch               	" show pairs match
set hlsearch                	" highlight search results

 "Folding
set foldmethod=indent           " use indent for code folding
set foldlevel=99            	" not sure what this is?

" Tabs, space and wrapping
set expandtab                   " spaces instead of tabs
set tabstop=4                   " a tab = four spaces
set softtabstop=4               " a soft-tab of four spaces
set shiftwidth=4                " number of spaces for auto-indent
set autoindent                  " copy indent from current line when starting a new line

" Turn off backup
set nobackup
set noswapfile

" PLUGIN SETTINGS
" NERD Tree (File Explorer)
" close if only NERD Tree left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Signify (VCS Change Highlighting)
let g:signify_vcs_list = ['git']
let g:signify_line_highlight = 1
let g:signify_disable_by_default = 1

" Minibufexpl
let g:miniBufExplAutoStart = 0 


""" KEYMAP
" Set <Leader>
let mapleader=','

" no need for SHIFT to do :
nnoremap ; :

" Exit insert mode with <ESC>
inoremap kj <esc>
 
" Toggle plugin windows
noremap <F2> :NERDTreeToggle<CR>
noremap <F3> :MBEToggle<cr>
noremap <F4> :SignifyToggle<CR>
 
" window movement shortcuts
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
 
" Switch buffers 
noremap <C-Right> :MBEbn<CR>
noremap <C-Left> :MBEbp<CR>
noremap <C-Up> :MBEbf<CR>
noremap <C-Down> :MBEbb<CR>
noremap <C-E> :bd<CR>
 
" Toggle folding
nnoremap \ za
vnoremap \ za
 
" Toggle the search results highlighting
nmap <silent><Leader>hs :set invhlsearch<CR>
 
" Fast window & buffer close and kill
nnoremap <silent><Leader>wk <C-w>c
" New windows
nnoremap <silent><Leader>wv <C-w>v
nnoremap <silent><Leader>wh <C-w>s
 
" Quick exiting without save
nnoremap <silent><Leader>`` :qa!<CR>

" Jump to next Git change
let g:signify_mapping_next_hunk = '<Leader>gn'
let g:signify_mapping_prev_hunk = '<Leader>gp'
let g:signify_mapping_toggle_highlight = '<Leader>gh'
