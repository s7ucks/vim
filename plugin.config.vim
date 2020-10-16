"" NERDTree config
"let g:NERDTreeShowHidden = 1
"let g:NERDTreeMinimalUI = 1
"let g:NERDTreeIgnore = []
"let g:NERDTreeStatusLine = ''
""" Auto close nvim if NERDTree is the only thing left open
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""" Toggle
"nnoremap <silent> <C-b> :NERDTreeToggle<CR>
"" NERDTree config end

"================================================== 
" fzf config
"================================================== 
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
	\ 'ctrl-t': 'tab split',
	\ 'ctrl-s': 'split',
	\ 'ctrl-v': 'vsplit'
	\}

" Requires silversearcher-ag
" used to ignore gitignore files
"let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" fzf config end

"================================================== 
" coc.vim config
"================================================== 
	let g:coc_global_extensions = ['coc-rome', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <TAB>
		  \ pumvisible() ? "\<C-n>" :
		  \ <SID>check_back_space() ? "\<TAB>" :
		  \ coc#refresh()
" coc.vim config end

" Treat all .md files as markdown
autocmd BufNewFile, BufRead *.md set filetype=markdown
" Highlight the line the cursor is on
autocmd FileType markdown set cursorline

" Coc-prettier config
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')


"================================================== 
" Startify Config
"================================================== 

" CUSTOM HEADER
let g:startify_custom_header2 = [
            \ '  _______  ______            _______  _        _______  ',
            \ ' |  ____ \/ ___  \ |\     /||  ____ \| \    /\|  ____ \ ',
            \ ' | |    \/\/   | | | )   ( || (    \/|  \  / /| |    \/ ',
            \ ' | |_____     /  / | |   | || |      |  (_/ / | |_____  ',
            \ ' |_____  |   /  /  | |   | || |      |   _ (  |_____  | ',
            \ '       | |  /  /   | |   | || |      |  ( \ \       | | ',
            \ ' /\____| | /  /    | (___) || (____/\|  /  \ \/\____| | ',
            \ ' \_______| \_/     |_______||_______/|_/    \/\_______| ',
            \ ]


let g:startify_custom_header = [
      \ '  .----------------. .----------------. .----------------. .----------------. ',
      \ '  | .--------------. | .--------------. | .--------------. | .--------------. |',
      \ '  | |  ____  ____  | | | ____    ____ | | |      __      | | |  _______     | |',
      \ '  | | |_  _||_  _| | | ||_   \  /   _|| | |     /  \     | | | |_   __ \    | |',
      \ '  | |   \ \  / /   | | |  |   \/   |  | | |    / /\ \    | | |   | |__) |   | |',
      \ '  | |    > `` <    | | |  | |\  /| |  | | |   / ____ \   | | |   |  __ /    | |',
      \ '  | |  _/ /``\ \_  | | | _| |_\/_| |_ | | | _/ /    \ \_ | | |  _| |  \ \_  | |',
      \ '  | | |____||____| | | ||_____||_____|| | ||____|  |____|| | | |____| |___| | |',
      \ '  | |              | | |              | | |              | | |              | |',
      \ '  | i--------------i | i--------------i | i--------------i | i--------------i |',
      \ '  i----------------i i----------------i i----------------i i----------------i i',
      \ ]


let g:startify_session_dir = '~/.vim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']             },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()]  },
          \ { 'type': 'sessions',  'header': ['   Sessions']        },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']       },
          \ ]

let g:startify_session_autoload = 1

" Let startify  take care of buffers
let g:startify_session_delete_buffers = 1

" Similar to vim-rooter
let g:startify_change_to_vcs_root = 1

" Automatically Update Sessions
let g:startify_session_persistence = 1

" Get rid of empty buffer and quit
let g:startify_enable_special = 0
