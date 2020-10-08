
" Theming and syntax enable
if (has("termguicolors"))
	set termguicolors
endif

" ======================= 
" Turn persistent undo on
" =======================
try 
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry


syntax enable
colorscheme onedark

" Other Settings
set nocompatible

inoremap jk <Esc>
inoremap kj <Esc>
inoremap <C-H> <C-W>
"noremap! <BS> <C-w>
"noremap! <C-h> <C-w>
" Set C-BS to C-W (delete prev typed word)

" set C-V in insert mode to paste system clipboard
inoremap <C-v> <Esc>"+p

set number
set relativenumber

" Set global copy/paste 
set clipboard=unnamedplus

" Set no visualbell
set vb t_vb=


" Have lines wrap instead of continue off-screen
set linebreak

" Convert tabs to spaces
" Use 2 Spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4

" Keep 12 lines above and below the cursor when scrolling
set scrolloff=12

"" Use indents to determine folds
"set foldmethod=indent

" Show partial command in the bottom right
set showcmd

" SEARCH Settings
set incsearch hlsearch smartcase

" Enable highlithing of the current line
set cursorline

" More spaces for displaying messages 
set cmdheight=2

" set encondings
set encoding=UTF-8

" statusline
set laststatus=2

" Do  not show which mode you're in
set noshowmode

" This is recommend by Coc
set nobackup 
set nowritebackup

" Set to show leader key
set showcmd

" More natural split opening, will open new window below or right
set splitbelow
set splitright

" # FINDING FILES
" Use the `:find` command to fuzzy search files in the working directory
" The `:b` command can also be used to do the same for open buffers

" Search all folders
set path+=**

" Display matching files on tab complete
set wildmenu

" Ignore node_modules and images from search results
set wildignore+=**/node_modules/**,**/dist/**,**_site/**,*.swp,*.png,*.gif,*.webp,*.jpeg,*.map

:set number relativenumber

" Treal all numbers as decimal regardless of whether they are padded with zeos
set nrformats=

" Enable word completion
set complete+=kspell

" hi NonText guifg=#4a4a59
" hi SpecialKey guifg=white guibg=#cc0000


""-------------------------------------------""
""""""""""""""""" Keybindings """""""""""""""""
""-------------------------------------------""

" 1. CTRL-T + t :: Open new tab 
nnoremap <C-t>t :tabnew<CR>
"" Tab navigation

