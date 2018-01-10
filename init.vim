call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree' " file explorer
Plug 'vim-airline/vim-airline' " shows information in buffer footer
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'scrooloose/nerdcommenter' " plugin to write comments
Plug 'skielbasa/vim-material-monokai' " colorscheme
Plug 'Shougo/deoplete.nvim' " enables code completion
Plug 'zchee/deoplete-clang' " enables clang for deoplete
Plug 'Shougo/neoinclude.vim' " enables completion from c header files
Plug 'neomake/neomake' " c language error checker
call plug#end()
call neomake#configure#automake('nw', 500) " calls neomake after 500ms

nnoremap <c-n> :NERDTreeToggle <CR>

nnoremap <f3> :Autoformat <CR>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

tnoremap <c-h> <C-\><C-N><C-w>h
tnoremap <c-j> <C-\><C-N><C-w>j
tnoremap <c-k> <C-\><C-N><C-w>k
tnoremap <c-l> <C-\><C-N><C-w>l

tnoremap <Esc> <C-\><C-n> " remap normal mode to ESC

colorscheme material-monokai
highlight colorcolumn guibg=#015577

set number
set splitbelow
set splitright
set cursorline
set termguicolors
set colorcolumn=80 " a reminder to write short codelines
set tabstop=4 " tab spacing is set to 4
set shiftwidth=4 " intendation in new line is set to 4

let g:NERDTreeShowLineNumbers=1
let g:airline_powerline_fonts=1
let g:deoplete#enable_at_startup=1
let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/lib/clang'

autocmd Termopen * setlocal nonumber " disables lines in terminal
