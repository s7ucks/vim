
" Theming and syntax enable
if (has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme dracula

" Other Settings
set nocompatible

let mapleader=","

inoremap jk <Esc>

set number
set relativenumber

" Set global copy/paste 
set clipboard+=unnamed

" Set no visualbell
set vb t_vb=

" Have lines wrap instead of continue off-screen
set linebreak

" Convert tabs to spaces
" Use 2 Spaces instead of tabs
set expandtab
set tabstop=2
set shiftwidth=2

" Keep 12 lines above and below the cursor when scrolling
set scrolloff=12

" Use indents to determine folds
set foldmethod=indent

" Show partial command in the bottom right
set showcmd

" Show which mode you're in
set showmode

" SEARCH Settings
set incsearch hlsearch


""-------------------------------------------""
""""""""""""""""" Keybindings """""""""""""""""
""-------------------------------------------""

" 1. CTRL-T + t :: Open new tab 
nnoremap <C-t>t :tabnew<CR>
"" Tab navigation
