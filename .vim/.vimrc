"""
" vundle settings
"""
set nocompatible              " be iMproved, required
filetype off                  " required


let mapleader = '\'
let g:mapleader = '\'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" colorscheme
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

" tagbar
Plugin 'majutsushi/tagbar'

" Ctrl P
Plugin 'kien/ctrlp.vim'
" Ctrl-P config:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_max_files = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" NERDTree
Plugin 'scrooloose/nerdtree'

"snipmate.vim
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'

Plugin 'ervandew/supertab'
Plugin 'xuhdev/SingleCompile'

Plugin 'davidhalter/jedi-vim'
let g:jedi#show_call_signatures = "2"
autocmd FileType python setlocal completeopt-=preview


Plugin 'editorconfig/editorconfig-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/google.vim'
Plugin 'drmikehenry/vim-headerguard'
Plugin 'vim-scripts/Python-Syntax-Folding'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/a.vim'
Plugin 'lepture/vim-jinja'
Plugin 'pangloss/vim-javascript'


" Python-mode
"Plugin 'klen/python-mode'

" Matrix Screen
Plugin 'uguu-org/vim-matrix-screensaver'

" Java tab completion
let g:SuperTabDefaultCompletionType = 'context'

" NERDcommenter
Plugin 'scrooloose/nerdcommenter'
filetype plugin indent on     " required!


" Hive syntax highlight
Plugin 'autowitch/hive.vim'
" for .hql .ql .q files
au BufNewFile,BufRead *.hql set filetype=hive expandtab
au BufNewFile,BufRead *.ql set filetype=hive expandtab
au BufNewFile,BufRead *.q set filetype=hive expandtab


" HowTo
" Navigate to the window you'd like to move
" Press <leader>ww
" Navigate to the window you'd like to swap with
" Press <leader>ww again
Plugin 'wesQ3/vim-windowswap'

" Go Style
Plugin 'fatih/vim-go'
let g:go_def_mode = "godef"

" Bash support
"Plugin 'bash-support.vim'

" quick toggle
Plugin 'milkypostman/vim-togglelist'
nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" common
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""`
set encoding=utf8 nobomb
"set langmenu=zh_CN.UTF-8
set imcmdline
set nocp	"no compatible
syntax enable
set wildmode=longest:full
set wildmenu
set ruler	"ruler
set number
set wrap
set autoindent
set smartindent
set nocindent
set ts=4 sw=4 noet
set smarttab
set expandtab
set showmode
set showcmd
set showmatch
set hlsearch	
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
set ignorecase
set smartcase
set incsearch
set autochdir
set termencoding=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936
set viminfo='10,\"100,:20,%,n~/.viminfo'
let g:tex_flavor = "latex"
set ffs=unix,dos,mac
"au BufWritePost .vimrc so ~/.vimrc
"set guifontwide=FangSong:h12
set gfn=Monaco:h13
set mouse=a
set autoread
set cursorline
set cursorcolumn  

set foldmethod=syntax
set foldlevel=100
set foldcolumn=2

set cinoptions+=g1,h2
autocmd FileType vim setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal smartindent ts=2 sw=2
autocmd FileType html setlocal sw=2 ts=2
autocmd FileType jinja setlocal sw=2 ts=2
autocmd FileType yaml setlocal sw=2 ts=2
set backspace=2


"""""""""""""""""""
" for work
"""""""""""""""""""
" Use UTF-8 without BOM set above
" set encoding=utf-8 nobomb
" Show “invisible” characters
set lcs=tab:?\ ,trail:·,eol:¬,nbsp:_
set list
" Tabs set above
" set expandtab
set tabstop=4
" Character limit
set textwidth=80


"""
" colorscheme
"""
set t_Co=256

if has("gui_running")
    "Solarized
    "let g:solarized_termtrans=1
    let g:solarized_termcolors=256
    "let g:solarized_contrast="high"
    "let g:solarized_visibility="high"
    colorscheme solarized
    let g:Powerline_symbols= 'fancy'
else
    " Molokai
    colorscheme molokai
    let g:molokai_original = 1
    let g:Powerline_symbols = 'fancy'
endif

set background=dark

" Air Line setup 
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
"let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'luna'

"" Molokai
"colorscheme molokai
"set background=dark
"let g:molokai_original = 1
"set t_Co=256
"let g:Powerline_symbols = 'fancy'

" Solarized"
"set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"colorscheme solarized

"""
" GUI 
"""
" Open MacVim in fullscreen mode
if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
    "au GUIEnter * set fullscreen
endif



""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
""""
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry



"""""""""""""""""""
" buffer related
""""""""""""""""""""
" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" switch to next buffer
nmap <leader>[ :bNext<cr>
nmap <leader>] :bnext<cr>


" turn on the paste [which is the true paste] in intert mode
set pastetoggle=<F3> 


" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l



"""
" http://vim.wikia.com/wiki/Restore_cursor_to_file_position_in_previous_editing_session
"""
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

"""
" FUNCTION Full Tabpage full Path
"""
function! TabpageName(mode) 
  if     a:mode == 1 
      return fnamemodify(expand("%"), ":p:h") 
  elseif a:mode == 2 
      let name = fnamemodify(expand("%"), ":p:t") 
      if name == "" 
          return "(Untitled)" 
      endif 
      return name 
  endif 
endfunction 
function! TabpageState() 
  if &modified != 0 
      return '*' 
  else 
      return '' 
  endif 
endfunction 
set guitablabel=%{TabpageName(1)}/%{TabpageName(2)}%{TabpageState()} "1:Full Path, 2:File Name

"""
" automatically open and close the popup menu / preview window
"""
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

let g:syntastic_python_checkers = ['flake8', 'pyflakes']
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'


"Key Map"
nmap <F8> :TagbarToggle<cr>
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>

"Disable EX mode"
map Q <Nop>
map f <Nop>

" select the current word
nmap <F5> viw
" copy the selection to system clipboard
vmap <F5> "+y


" Stoping searching
nmap <F2> :nohlsearch<CR>
" show hive highlight
nmap <F4> :set filetype=hive<CR>


"" Clang complete options
"let g:clang_complete_copen=1
"let g:clang_periodic_quickfix=1
"let g:clang_snippets=1
"let g:clang_close_preview=1
"let g:clang_use_library=1
"let g:clang_user_options='|| exit 0'
"let g:clang_user_options='-std=c++11'
"let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'



" NERDTree shortcut map
map <C-e> :NERDTreeToggle<CR>

" Reveal current file in tree
nmap ,n :NERDTreeFind<CR>



" "For C++ and lua indentation
"autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
"autocmd FileType lua setlocal shiftwidth=3 tabstop=3

" For pymode driving
" Disable all rope completions, since it is much worse than Omni-completion.
let g:pymode_rope=0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0
let g:go_bin_path='/Users/qingxianlai/GO_PROJECT/bin/'


" only keep one of the modes below:
" 1] disable checker of pymode since it preduce the same with syntastic
let g:pymode_lint = 0
" 2] disable checker for .py of syntastic since it preduces same result of pymode
let g:syntastic_ignore_files = ['\.py$']

map <s-right> gt
map <s-left> gT


map j gj
map k gk


map <space> /
map <c-space> ?

"""
" close qucikfix window when leave
"""
au BufEnter * call MyLastWindow()
function! MyLastWindow()
  " if the window is quickfix go on
  if &buftype=="quickfix"
    " if this window is last on screen quit without warning
    if winbufnr(2) == -1
      quit!
    endif
  endif
endfunction


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind  to grep word under cursor
nnoremap <leader>k :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" grep
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
map <c-f> :Ag<SPACE>

" quickfix and loclist
noremap - :cprev<CR>
noremap = :cnext<CR>
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10
