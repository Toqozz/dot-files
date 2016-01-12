set nocompatible              " be iMproved, required
filetype on                   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'
Plugin 'lilydjwg/colorizer'
Plugin 'matze/vim-move'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sjl/badwolf'

call vundle#end()

" set 
set modeline                              " enable the modeline [insert, visual, normal, etc]
set background=dark                       " enable a dark background? im not entirely sure
set expandtab                             " whether to stop 
set softtabstop=4                         " use the appropriate amount of spaces to insert a tab
set shiftwidth=4                          " documentation is bare, similar to tabs
set noshowmode                            " put a message on the last line depending on mode
set list listchars=tab:⟶\ ,trail:·,extends:>,precedes:<,nbsp:% " set the characters to list, like spaces or tabs
set list                                  " show list characters, required for the previous option
set cursorline                            " highlight the line that the cursor is on
set tabstop=4                             " the amount of spaces that a tab counts for in the file
set laststatus=2                          " show the last status, which is required for airline and powerline
set number                                " enable display of line numbers
set showcmd                               " show the last command on the last line (bottom right)
set showmatch                             " show matches in search
set incsearch                             " match searches as you type
set hlsearch                              " highlight searches
set foldenable                            " enable the use of folds (basiccaly folders for indents)
set foldlevelstart=10                     " start folding at X level
set foldnestmax=10                        " fold extremely nested things automatically
set foldmethod=indent                     " set the fold method, such as marker or indent

" let
let g:airline_powerline_fonts = 1         " enable powerline fonts for airline
" let g:ctrlp_working_path_mode = 'c'     " change the working path mode for the ctrl+p plugin
let g:colorizer_maxlines = 100            " set a maxline value for colorizer in order to be sane
let g:move_key_modifier = 'C'             " 'vim move' move key modifier
let g:gruvbox_italic=1                    " use italics in the gruvbox theme
let g:gruvbox_color_contrast='hard'       " dark contrast for gruvbox theme

" mappings
" nnoremap j gj   " make it so that j and k move down lines visually, rather than 'real' lines
" nnoremap k gk   " ''
" i dont like commenting these, seems to skrew up bindings.
" 1. use space to open/close folds
" 2. make hl = <esc>
" 3. make . = control . (not fully sure: https://danielmiessler.com/study/vim/
" 4. enable the sudo-save
nnoremap <space> za
inoremap hl <esc>
vnoremap . :norm.<CR>
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" filetype
filetype indent on     " enable indent for filetypes, not entirely sure

" scheme / colors
colorscheme gruvbox    " set the colorscheme
syntax on              " set syntax highlighting to on
