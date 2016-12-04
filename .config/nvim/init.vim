" set the runtime path to include Vundle and initialize
call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
Plug 'lilydjwg/colorizer'
Plug 'sjl/badwolf'
Plug 'scrooloose/syntastic', {'commit':'0bedeb9'}
Plug 'w0ng/vim-hybrid'
Plug 'Townk/vim-autoclose'
Plug 'justinmk/vim-syntax-extra'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'jacquesbh/vim-showmarks'
"Plug 'Shougo/deoplete.nvim'
"Plug 'zchee/deoplete-clang'
Plug 'frankier/neovim-colors-solarized-truecolor-only'

call plug#end()
" set 
" set nowrap                                " you have to scroll horizontally to see the entire line
" set spell                                 " how to spell
set relativenumber
set scrolloff=10                          " amount of context lines
set modeline                              " enable the modeline [insert, visual, normal, etc]
set background=dark                      " enable a dark background for colorscheme
set expandtab                             " whether to use spaces instead of tabs
set softtabstop=4                         " use the appropriate amount of spaces to insert a tab
set shiftwidth=4                          " documentation is bare, similar to tabs
set noshowmode                            " put a message on the last line depending on mode
set list listchars=tab:⟶\ ,trail:·,extends:>,precedes:<,nbsp:% " set the characters to list, like spaces or tabs
set list                                  " show list characters, required for the previous option
set cursorcolumn                          " hight the column that the cursor is in
set cursorline                            " highlight the line that the cursor is on
set tabstop=4                             " the amount of spaces that a tab counts for in the file
set laststatus=2                          " show the last status, which is required for airline and powerline
set number                                " enable display of line numbers
set showcmd                               " show the last command on the last line (bottom right)
set showmatch                             " show matches in search
set incsearch                             " match searches as you type
set hlsearch                              " highlight searches
set ignorecase                            " ignore case when searching
set smartcase                             " no ignorecase if uppercase character present
set foldenable                            " enable the use of folds (basiccaly folders for indents)
set foldlevelstart=10                     " start folding at X level
set foldnestmax=10                        " fold extremely nested things automatically
set foldmethod=indent                     " set the fold method, such as marker or indent
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set clipboard+=unnamedplus                " use the system clipboard all the time
set termguicolors

" let
let g:deoplete#enable_at_startup = 1      " use deoplete
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#sources#clang#libclang_path = '/home/toqoz/code/build/clang+llvm/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/home/toqoz/code/build/clang+llvm/lib/clang'
let NERDTreeShowHidden = 1
let g:airline_powerline_fonts = 1         " enable powerline fonts for airline
"let base16colorspace = 256                  " access colors present in 256 colorspace 
"let g:solarized_termcolors= 256
"let g:solarized_contrast = "normal"
let g:colorizer_maxlines = 100            " set a maxline value for colorizer in order to be sane
let g:move_key_modifier = 'C'             " 'vim move' move key modifier
let g:gruvbox_italic=1                    " use italics in the gruvbox theme
"let g:gruvbox_color_contrast= 'hard'      " dark contrast for gruvbox theme
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_shell = '/bin/bash'
let g:syntastic_c_include_dirs = ['/usr/include/dbus-1.0', '/usr/include/glib-2.0', '/usr/include/cairo']
let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ 'active': {
    \   'left': [ [ 'filename' ],
    \             [ 'readonly', 'fugitive' ] ],
    \   'right': [ [ 'percent', 'lineinfo' ],
    \              [ 'fileencoding', 'filetype' ],
    \              [ 'fileformat', 'syntastic' ] ]
    \ },
    \ 'separator': { 'left': '▓▒░', 'right': '░▒▓' },
    \ 'subseparator': { 'left': '▒', 'right': '░' }
    \ }                                   " lightline scheme

"let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1

" mappings
" nnoremap j gj   " make it so that j and k move down lines visually, rather than 'real' lines
" nnoremap k gk   " ''
" i dont like commenting these, seems to skrew up bindings.
" 1. use space to open/close folds
" 2. make hl = <esc>
" 3. make . = control . (not fully sure: https://danielmiessler.com/study/vim/
" 4. enable the sudo-save
nnoremap <space> za
nnoremap <Leader>; :Goyo<CR>
nnoremap <Leader>q :Limelight!! 0.5<CR>
inoremap hl <esc>

"inoremap <expr><C-h> deoplete#mappings#smart_close_popup()."\<C-h>"
vnoremap . :norm.<CR>
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
map <C-n> :NERDTreeToggle<CR>
nmap <C-m> :TagbarOpenAutoClose<CR>

" tab for completion.
inoremap <silent><expr> <C-l>
        \ pumvisible() ? "\<C-n>" :
        \ deoplete#mappings#manual_complete()

" filetype
filetype plugin indent on          " enable indent for filetypes, not entirely sure

autocmd VimEnter * DoShowMarks

" scheme / colors
colorscheme gruvbox  " set the colorscheme
syntax on                   " set syntax highlighting to on
