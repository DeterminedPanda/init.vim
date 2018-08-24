call plug#begin('~/.vim/plugged') " all plugins need to be added between call plug#begin and call plug#end
  Plug 'scrooloose/nerdtree' " file explorer
  Plug 'vim-airline/vim-airline' " shows information in the footer of the current buffer
  Plug 'tpope/vim-fugitive' " git wrapper
  Plug 'scrooloose/nerdcommenter' " plugin to write comments
  Plug 'skielbasa/vim-material-monokai' " cute colorscheme
  Plug 'Shougo/deoplete.nvim' " enables code completion
  Plug 'zchee/deoplete-clang' " enables c code completion for deoplete
  Plug 'Shougo/neoinclude.vim' " enables completion from c header files
  Plug 'neomake/neomake' " enables a error checker for c
  Plug 'Valloric/YouCompleteMe' " code completion engine used for Java
call plug#end()
call neomake#configure#automake('nw', 350) " calls neomake after 500ms

" makes it possible to toggle NERDTree by pressing CTRL+N
nnoremap <c-n> :NERDTreeToggle <CR>

" makes it possible to navigate between splits by pressing CTRL+DIRECTION_KEY in normal mode
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" makes it possible to navigate between splits by pressing CTRL+DIRECTION_KEY in terminal mode
tnoremap <c-h> <C-\><C-N><C-w>h
tnoremap <c-j> <C-\><C-N><C-w>j
tnoremap <c-k> <C-\><C-N><C-w>k
tnoremap <c-l> <C-\><C-N><C-w>l

" enables the ESC key in terminal mode
tnoremap <Esc> <C-\><C-n> 

" makes it possible to select code completion suggestions via the TAB key
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 

colorscheme material-monokai " sets the colorscheme
highlight colorcolumn guibg=#015577 " creates a vertical line, as a reminder to write shorter code lines

set number relativenumber " enables line numbers
set splitbelow " opens splits to the bottom of your current buffer
set splitright " opens new splits to the right of your current buffer
set cursorline " makes it easier to see in which line you currently are
set termguicolors " uses terminal gui settings

set colorcolumn=120 " a reminder to write short codelines
set tabstop=4 " tab spacing is set to 4
set shiftwidth=4 " intendation in new line is set to 4
set completeopt-=preview " disables YouCompleteMe's scratch splitscreen

let g:ycm_error_symbol = '!!' " replaces the '>>' error-indicator in YouCompleteMe with '!!'
let g:NERDTreeShowLineNumbers=1 " shows line numbers in NERDTree
let g:airline_powerline_fonts=1 " enables a powerline font
let g:deoplete#enable_at_startup=1 " automatically start deoplete with nvim
let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so' " set the path to libclang
let g:deoplete#sources#clang#clang_header='/usr/lib/clang' " sets the path to clangs header
let g:ycm_filetype_blacklist = { 'c': 1, 'cpp' : 1 } " disables YouCompleteMe for all filetypes inside of the list

autocmd Termopen * setlocal nonumber " disables  lines in :terminal
