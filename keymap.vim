" ALL KEYMAPPING
" Setting LEADER keys to space
map <Space> <NOP>
let mapleader=" "
nnoremap <Leader>t :tabnext<CR>
" This is to create new terminal
"nnoremap <Leader>` :new term://cmd<CR>
nnoremap - :res -2<CR>

" Coc-Explorer mapping key
nmap <silent> <Leader>e :CocCommand explorer<CR>


"-------------------- 
" FUZZY KEYMAP
"-------------------- 
nnoremap <Leader>b :Buffers<CR> 
nnoremap <Leader>h :History<CR>

" Save state of open Windows and Buffers
nnoremap <leader>s :mksession<CR>


"-------------------- 
" Integrated terminal
"-------------------- 

" Turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
nnoremap <silent> <Leader>` :CocCommand terminal.Toggle<CR>
" Start terminal on ctrl-n
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" Open terminal on ctrl-`
function! OpenTerminal()
"    split term://cmd
    CocCommand terminal.Toggle
    resize 10
endfunction
"nnoremap <Leader>` :call OpenTerminal()<CR>


