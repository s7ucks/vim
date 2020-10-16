"================================================== 
" MAIN SETTINGS
"================================================== 
" Theming and syntax enable
if (has("termguicolors"))
	set termguicolors
endif

" Turn persistent undo on
try 
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry

syntax enable
colorscheme onedark
set nocompatible
inoremap jk <Esc>
" Set C-BS to C-W (delete prev typed word)
inoremap <C-H> <C-W>
" set C-V in insert mode to paste system clipboard
inoremap <C-v> <Esc>"+p
set number
set relativenumber
set clipboard=unnamedplus
set vb t_vb=
" Have lines wrap instead of continue off-screen
set linebreak
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent smartindent
set scrolloff=12
"set foldmethod=indent
set showcmd
set incsearch hlsearch smartcase
set cursorline
set cmdheight=2
set encoding=UTF-8
set laststatus=2
set noshowmode
set nobackup 
set nowritebackup
set showcmd
set splitbelow
set splitright
set wildmenu
" # FINDING FILES
" Use the `:find` command to fuzzy search files in the working directory
" The `:b` command can also be used to do the same for open buffers
" Search all folders
set path+=**
" Ignore node_modules and images from search results
set wildignore+=**/node_modules/**,**/dist/**,**_site/**,*.swp,*.png,*.gif,*.webp,*.jpeg,*.map
" Treal all numbers as decimal regardless of whether they are padded with zeos
set nrformats=
" Enable word completion
set complete+=kspell

"================================================== 
" KEYBINDINGS
"================================================== 

" 1. CTRL-T + t :: Open new tab 
nnoremap <C-t>t :tabnew<CR>
"" Tab navigation

