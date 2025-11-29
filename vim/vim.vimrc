" =============================================================================
"                          BASIC SETTINGS
" =============================================================================
" Set core Vim options
set nocompatible           " Behave like Vim, not Vi
set encoding=utf-8         " Use UTF-8 for everything
set tabstop=4              " Number of spaces a <Tab> counts for
set shiftwidth=4           " Number of spaces to use for auto-indent
set expandtab              " Use spaces instead of tabs
set autoindent             " Auto-indent new lines
set mouse=a

" UI and visual settings
set number                 " Show line numbers
set relativenumber         " Show relative line numbers for easy navigation
set colorcolumn=80         " Highlight column 80 for line length awareness
set cursorline             " Highlight the current line
set termguicolors          " Enable true colors in the terminal
set background=dark        " Set background to dark for themes
set scrolloff=8            " Keep 8 lines above/below the cursor when scrolling
set hlsearch               " Highlight search results

" Clipboard and leader key
set clipboard=unnamedplus  " Use system clipboard by default
let mapleader=" "          " Set leader key to space

" Enable syntax and filetype detection
syntax enable
filetype plugin indent on

" =============================================================================
"                          PLUGIN MANAGER (VIM-PLUG)
" =============================================================================
call plug#begin('~/.vim/plugged')

" File Navigation
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Undo History
Plug 'mbbill/undotree'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Git Integration
Plug 'tpope/vim-fugitive'

" Statusline
Plug 'itchyny/lightline.vim'

" Commenting
Plug 'tpope/vim-commentary'

" Color Scheme
Plug 'morhetz/gruvbox'

call plug#end()

" =============================================================================
"                          COLOR SCHEME AND THEME
" =============================================================================
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_transparent_bg = 1
colorscheme gruvbox

" Make background transparent for terminal themes
if has("gui_running") || &termguicolors
  highlight Normal guibg=NONE
  highlight NonText guibg=NONE
endif

" =============================================================================
"                          KEYBINDINGS
" =============================================================================
" NERDTree
nnoremap <silent> <leader>e :NERDTreeToggle<CR>

" Undo Tree
nnoremap <silent> <leader>u :UndotreeToggle<CR>

" FZF
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :Rg<CR>

" Save file
nnoremap <silent> <C-s> :w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>

" =============================================================================
"                          LIGHTLINE CONFIG
" =============================================================================
let g:lightline = {'colorscheme': 'gruvbox'}

" =============================================================================
"                          ADDITIONAL KEYBINDINGS
" =============================================================================
" Navigate buffers
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>

