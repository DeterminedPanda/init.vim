call plug#begin('~/.vim/plugged') " all plugins need to be added between call plug#begin and call plug#end
Plug 'scrooloose/nerdtree' " file explorer
Plug 'vim-airline/vim-airline' " shows information in the footer of the current buffer
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'airblade/vim-gitgutter' " shows git diff
Plug 'scrooloose/nerdcommenter' " plugin to write comments
Plug 'DeterminedPanda/vim-material-monokai' " colorscheme
Plug 'Shougo/deoplete.nvim' " enables code completion
Plug 'zchee/deoplete-clang' " enables c code completion for deoplete
Plug 'Shougo/neoinclude.vim' " enables completion from c header files
Plug 'neomake/neomake' " enables a error checker for c
Plug 'Valloric/YouCompleteMe' " code completion engine used for Java
Plug 'lervag/vimtex' " LaTeX environment
call plug#end()

" toggles NERDTree by pressing CTRL+N
nnoremap <c-n> :NERDTreeToggle <CR>

" navigate between splits by pressing CTRL+DIRECTION_KEY in normal mode
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" navigate between splits by pressing CTRL+DIRECTION_KEY in terminal mode
tnoremap <c-h> <C-\><C-N><C-w>h
tnoremap <c-j> <C-\><C-N><C-w>j
tnoremap <c-k> <C-\><C-N><C-w>k
tnoremap <c-l> <C-\><C-N><C-w>l

" enables the ESC key in terminal mode
tnoremap <Esc> <C-\><C-n> 

" select code completion suggestions by using the TAB key
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 

colorscheme material-monokai " sets the colorscheme

" sets the color of the vertical line, which will be drawn as a reminder to
" write shorter lines of code
highlight colorcolumn guibg=#015577

set number " enables line numbers
set splitbelow " opens splits to the bottom of your current buffer
set splitright " opens new splits to the right of your current buffer
set cursorline " makes it easier to see in which line you currently are
set termguicolors " uses terminal gui settings
set colorcolumn=120 " draws a vertical line at the specified column number 
set tabstop=4 " tab spacing is set to 4
set shiftwidth=4 " intendation in new line is set to 4
set completeopt-=preview " disables YouCompleteMe's scratch splitscreen
set list lcs=tab:\|\ " shows indentation lines. The space before the comment must be included
set updatetime=100
let g:gitgutter_highlight_lines = 1
let g:airline_theme='materialmonokai' " set airline theme
let g:ycm_error_symbol = '??' " replaces the '>>' error-indicator in YouCompleteMe
let g:NERDTreeShowLineNumbers=1 " shows line numbers in NERDTree
let g:airline_powerline_fonts=1 " enables powerline fonts
let g:deoplete#enable_at_startup=1 " automatically start deoplete with nvim
let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so' " set the path to libclang
let g:deoplete#sources#clang#clang_header='/usr/lib/clang' " sets the path to clangs header
let g:ycm_filetype_blacklist = { 'c': 1, 'cpp' : 1 } " disables YouCompleteMe for all filetypes inside of the map 

" disables all kinds of line numbers in :terminal mode
autocmd Termopen * setlocal norelativenumber
autocmd Termopen * setlocal nonumber

" reduces the update time of the pdf to 1 second
autocmd Filetype tex setl updatetime=500

if !exists('g:ycm_semantic_triggers')                                                                                                                                                     
	let g:ycm_semantic_triggers = {}                                                                                                                                                      
endif                                                                                                                                                                                     
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme 
