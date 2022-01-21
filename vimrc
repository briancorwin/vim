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

"" Look
Plugin 'bling/vim-airline'

"" Files
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

"" Coding
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'
Plugin 'stefandtw/quickfix-reflector.vim'

"" Snippets
" Plugin 'honza/vim-snippets'
" Plugin 'SirVer/ultisnips'
" Plugin 'matthewsimo/angular-vim-snippets'

"" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

"" Hardcore IDE
Plugin 'scrooloose/syntastic'
" Plugin 'majutsushi/tagbar'
" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required, enable loading indent file for filetype



""" GENERAL SETTINGS
" Automatically reload .vimrc
autocmd! bufwritepost .vimrc source %

" Show trailing whitespace
" MUST be inserted before setting up the color scheme
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/

"" GLOBAL SETTINGS
" For all files (but may be overridden in ftplugin).
" set noeol                       " no newline char at EOF
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
set nowritebackup
set noswapfile


""" PLUGIN SETTINGS

"" NERD Commenter
let g:NERDSpaceDelims = 1

"" NERD Tree (File Explorer)
" close if only NERD Tree left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"" Git Gutter
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '!!'
let g:gitgutter_sign_removed = 'xx'
let g:gitgutter_sign_modified_removed = 'ww'
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_highlight_lines = 0

"" Minibufexpl
let g:miniBufExplAutoStart = 0

"" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(pyc|so)$',
  \ }

"" Syntastic
let g:syntastic_mode_map = { "mode": "passive" }
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 0



""" KEYMAP
" Set <Leader>
let mapleader=','

" No need for SHIFT to do :
nnoremap ; :

" Exit insert mode with <ESC>
inoremap kj <esc>

" Toggle plugin windows
noremap <F2> :NERDTreeToggle<CR>
noremap <F3> :MBEToggle<cr>
noremap <F4> :GitGutterLineHighlightsToggle<CR>

" Remove highlighting of last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Window movement shortcuts
" noremap <c-j> <c-w>j
" noremap <c-k> <c-w>k
" noremap <c-l> <c-w>l
" noremap <c-h> <c-w>h

" Switch buffers
" noremap <C-Right> :MBEbn<CR>
" noremap <C-Left> :MBEbp<CR>
" noremap <C-Up> :MBEbf<CR>
" noremap <C-Down> :MBEbb<CR>
noremap <C-l> :MBEbn<CR>
noremap <C-h> :MBEbp<CR>
noremap <C-k> :MBEbf<CR>
noremap <C-j> :MBEbb<CR>
noremap <C-E> :bd<CR>

" Toggle folding
nnoremap \ za
vnoremap \ za

" Easier indentation of code blocks
vnoremap < <gv
vnoremap > >gv

" New windows
nnoremap <silent><Leader>wv <C-w>v
nnoremap <silent><Leader>wh <C-w>s

" Quick save command (DOES NOT SEEM TO WORK!!!)
"nnoremap <C-s> :update<CR>
"vnoremap <C-s> <C-C>:update<CR>
"inoremap <C-s> <C-O>:update<CR>

" Quick quit command
noremap <silent><Leader>wk :quit<CR>  " kill current window
noremap <silent><Leader>E :qa!<CR>  " kill current window

"" Git Gutter
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterRevertHunk
nmap <Leader>hr <Plug>GitGutterPreviewHunk

"" Syntastic
nmap <silent><Leader>l :SyntasticCheck<CR>
