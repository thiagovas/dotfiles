set softtabstop=2 tabstop=2 shiftwidth=2 expandtab cindent
set number mouse=a ruler

set splitbelow
set splitright
set shiftround
syntax on

" Unset clipboard so I can yank lines to other programs.
set clipboard=unnamedplus

" Telling vim to not bother redrawing the screen all the time.
set lazyredraw

" Show matching parenthesis, brackets and etc.
set showmatch

" Incremental search.
set incsearch

" Ignore Case when searching.
set ignorecase

" Highlight search terms.
set hlsearch

" Dont Beep.
set visualbell
set noerrorbells

" Don't highlight the current line.
set nocursorline

" 
set wrap

"
set t_Co=256

"
set scrolloff=1

" Disabling mousewheel...
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ==> Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin List:
"
" - Pathogen                  ( https://github.com/tpope/vim-pathogen )
" - Vim Windows Swap          ( https://github.com/wesQ3/vim-windowswap )
" - NERDTree                  ( https://github.com/scrooloose/nerdtree )
" - Vim Airline               ( https://github.com/vim-airline/vim-airline )
" - Syntastic                 ( https://github.com/vim-syntastic/syntastic )
" - YouCompleteMe             ( https://github.com/Valloric/YouCompleteMe )
" - DoxygenToolkit            ( https://github.com/vim-scripts/DoxygenToolkit.vim.git )
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""
" ==> Pathogen
"""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()



"""""""""""""""""""""""""""""""""""""""
" ==> NERDTree
"""""""""""""""""""""""""""""""""""""""
" Opening NERDTree Automatically
" autocmd VimEnter * NERDTree

" Close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" Show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toogle NERDTree
nmap <space>n :NERDTreeToggle<cr>

" Close vim if the only window left open is a NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open NERDTree automatically when vim starts up on opening a directory
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif



"""""""""""""""""""""""""""""""""""""""
" ==> Vim-Airline
"""""""""""""""""""""""""""""""""""""""

" Showing Vim Airline at all times.
  set laststatus=2

" the separator used on the left side
  let g:airline_left_sep='>'

" the separator used on the right side
  let g:airline_right_sep='<'

" enable modified detection
  let g:airline_detect_modified=1

" enable paste detection
  let g:airline_detect_paste=1

" enable crypt detection
  let g:airline_detect_crypt=1

" enable spell detection
  let g:airline_detect_spell=1

" enable iminsert detection
  let g:airline_detect_iminsert=0

" determine whether inactive windows should have the left section collapsed to
"  only the filename of that buffer.
  let g:airline_inactive_collapse=1

" themes are automatically selected based on the matching colorscheme. this
"  can be overridden by defining a value.
  let g:airline_theme='dark'



"""""""""""""""""""""""""""""""""""""""
" ==> Syntastic
"""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_checkers = ['clang_check', 'gcc']
let g:syntastic_python_checkers = ['python']
let g:syntastic_cpp_compiler_options = '-std=c++11'

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }

" Check Code -> Space-M
nmap <space>m :SyntasticCheck<CR>

:autocmd BufWritePost * :redraw! | SyntasticReset



"""""""""""""""""""""""""""""""""""""""
" ==> DoxygenToolkit
"""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_briefTag_pre="@Brief  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Thiago Silva"
let g:DoxygenToolkit_commentType = "C++"

" Run :Dox
nmap <C-x> :Dox<CR>
