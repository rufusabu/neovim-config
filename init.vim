call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'
"Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tweekmonster/django-plus.vim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'amix/vim-zenroom2'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'skywind3000/asyncrun.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
call plug#end()

let mapleader = ","
let g:asyncrun_open = 6
let g:user_emmet_leader_key = ','

map <leader>t :AsyncRun
map <leader>T :AsyncStop<CR> 

nnoremap <silent> <leader>z :Goyo<CR>
nnoremap <silent> <Leader><Space> :Files<CR>

au VimEnter *  NERDTree

set number relativenumber
set complete+=kspell
set background=dark

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql,*.vue PrettierAsync
autocmd BufRead,BufNewFile *.md setlocal spell

colorscheme palenight 
let g:airline_theme = "palenight"

"Disable Arrow Keys and Escape
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

