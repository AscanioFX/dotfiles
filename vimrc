"*-------------------------------------
"|	VUNDLE SETTINGS
"*-------------------------------------

"Make sure that vim is not attempting to retain compatibility with vi, its predecessor. This is a vundle requirement.
"When vim attempts to be compatible, it disables most of the features that make it worth using over vi.

set nocompatible
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

filetype off


" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    "Add your bundles here
    Plugin 'ervandew/supertab'
    Plugin 'kien/ctrlp.vim'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'scrooloose/syntastic'
    Plugin 'wombat256.vim'
    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
    endif
" Setting up Vundle - the vim plugin bundler end

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
  set t_Co=256
" set term=xterm-256color
  color wombat256mod
" color distinguished

" Now we can turn our filetype functionality back on
filetype plugin indent on

" Enable syntax highlighting
 filetype off
 syntax on

"------------------
"|	GENERAL SETTINGS
"-----------------


" Automatic reloading of .vimrc
 autocmd! bufwritepost .vimrc source %


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

 set pastetoggle=<F2>
 set clipboard=unnamed

" Fix bad autoindent of pasted text
  set paste

" Mouse and backspace
  set mouse=a  " on OSX press ALT and click
""set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
 let mapleader = ","


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
 noremap <C-n> :nohl<CR>
 vnoremap <C-n> :nohl<CR>
 inoremap <C-n> :nohl<CR>


" Quicksave command
 noremap <C-Z> :update<CR>
 vnoremap <C-Z> <C-C>:update<CR>
 inoremap <C-Z> <C-O>:update<CR>

 " Quick write
 noremap <Leader>w :w<CR>

" Quick quit command
" Quit with "," + q
 noremap <Leader>q :quit<CR>  " Quit current window
 noremap <Leader>Q :qa!<CR>   " Quit all windows


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
"" map <c-j> <c-w>j
"" map <c-k> <c-w>k
"" map <c-l> <c-w>l
"" map <c-h> <c-w>h


" To create a tab: :tabnew
" easier moving between tabs
 noremap <Leader>t :tabnew<CR>
 map <Leader>n <esc>:tabprevious<CR>
 map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
" Sort with "," + s
 vnoremap <Leader>s :sort<CR>


" Easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
" It allows to indent while keeping the text selected..
 vnoremap < <gv  " better indentation
 vnoremap > >gv  " better indentation





" Showing line numbers and length
 set number  " show line numbers
 set nowrap  " don't automatically wrap on load
 set fo-=t   " don't automatically wrap text when typing
" set colorcolumn=80 " ############## FOR PYTHON MAX LINE LENGHT #############################

 highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
"" vmap Q gq
"" nmap Q gqap


" Useful settings
 set history=700
 set undolevels=700


" Real programmers don't use TABs but spaces
 set tabstop=4
 set softtabstop=4
 set shiftwidth=4
 set shiftround
 set expandtab


" Make search case insensitive
 set hlsearch
 set incsearch
 set ignorecase
 set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
 set nobackup
 set nowritebackup
 set noswapfile

"----------
"| PLUGINS SETTINGS
"----------

 " CtrlP - don't recalculate files on start (slow)
 let g:ctrlp_clear_cache_on_exit = 0
 let g:ctrlp_working_path_mode = 'ra'


" Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
