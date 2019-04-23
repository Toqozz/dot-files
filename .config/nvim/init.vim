" set the runtime path to include Vundle and initialize
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jeromedalbert/auto-pairs', { 'branch': 'better-auto-pairs' }
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'justinmk/vim-syntax-extra'
Plug 'pboettch/vim-highlight-cursor-words'
Plug 'rust-lang/rust.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'racer-rust/vim-racer'
Plug 'desmap/ale-sensible' | Plug 'w0rp/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Yilin-Yang/vim-markbar'
call plug#end()

" set
set relativenumber                        " line numbers are relative to cursor position
set number                                " show number where 0 would be in relativenumber
set scrolloff=2                           " amount of context lines
set background=dark                       " enable a dark background for colorscheme
set expandtab                             " whether to use spaces instead of tabs
set softtabstop=4                         " use the appropriate amount of spaces to insert a tab
set pumheight=10                          " number of autocompletion lines
set shiftwidth=4                          " documentation is bare, similar to tabs
set noshowmode                            " put a message on the last line depending on mode
set list listchars=tab:⟶\ ,trail:·,extends:>,precedes:<,nbsp:% " set the characters to list, like spaces or tabs
set list                                  " show list characters, required for the previous option
set tabstop=4                             " the amount of spaces that a tab counts for in the file
set laststatus=0                          " show the last status, which is required for airline and powerline
set showmatch                             " show matches in search
set incsearch                             " match searches as you type
set hlsearch                              " highlight searches
set ignorecase                            " ignore case when searching
set smartcase                             " no ignorecase if uppercase character present
set foldenable                            " enable the use of folds (basiccaly folders for indents)
set foldlevelstart=10                     " start folding at X level
set foldnestmax=10                        " fold extremely nested things automatically
set foldmethod=indent                     " set the fold method, such as marker or indent
set clipboard+=unnamedplus                " enable the copy/pasting to use the system clipboard
set termguicolors                         " truecolor support(?)
set cmdheight=2                           " give messages a bit more room to display
set signcolumn=no                         " hide the sign column (left side gutter)

" let
let g:gruvbox_italic=1
let g:gruvbox_termcolors = 256
let g:gruvbox_contrast_dark = 'hard'

set hidden                                " make vims windowing usable

" --------- Racer --------
let g:racer_cmd = "/home/toqoz/.cargo/bin/racer"    " racer directory
let g:racer_experimental_completer = 1              " enable racer to show the complete function definition
let g:racer_insert_paren = 1
let g:LanguageClient_serverCommands = { 'rust': ['/home/toqoz/.cargo/bin/rustup', 'run', 'stable', 'rls'] }

" ------ FZF ------
" default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'left': '~30%' }     " default fzf layout - down / up / left / right

" customize fzf colors to match color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_buffers_jump = 1                " [buffers] jump to the existing window if possible

" ------- Ale -------
let g:ale_lint_on_text_changed = 'normal' " don't check while typing.
let g:ale_fixers = { 'rust': ['rustfmt'] }
let g:ale_set_balloons = 1                " show lint info on mouse hover.  doesn't work for me atm.

" ------ Autopairs -------
let g:AutoPairsMapCh = 0                  " don't map C-h for removing pairs (i want to use it for something else)
                                          " maybe change the binding to something else, might be useful.


" ------- Bindings -------
" use space to open/close folds
nnoremap <space> za
" disable highlight with esc
nnoremap <esc> :noh<return><esc>
" don't know
inoremap <C-@> <C-Space>
" bindings for omnicomplete menu
inoremap <C-l> <C-n>
inoremap <C-h> <C-p>
" make . = control . (not fully sure: https://danielmiessler.com/study/vim/
vnoremap . :norm.<CR>
" enable the sudo-save
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" ------ Bindings -> COC ------
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <leader>rn <Plug>(coc-rename)
imap <C-Space> <Plug>(coc-snippets-expand)
let g:coc_snippet_next = '<tab>'

" ------ Bindings -> fzf ------
nmap <leader><tab> :Files<CR>
nmap <leader>1 :Files ~/code/<CR>


" filetype
filetype plugin indent on          " enable indent for filetypes, not entirely sure

" i think these are Ale related.
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-split)
au FileType rust nmap gx <Plug>(rust-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)




" scheme / colors
colorscheme gruvbox  " set the colorscheme
syntax on                   " set syntax highlighting to on
