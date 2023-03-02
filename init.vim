call plug#begin()

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'chriskempson/base16-vim'

call plug#end()

set termguicolors
colorscheme base16-decaf
hi Normal guibg=NONE ctermbg=NONE

nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <Esc> :noh<CR>
imap jk <Esc>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" nmap <F10> :Ex<CR>
nmap <F10> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
