call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'nvie/vim-flake8'
Plug 'honza/vim-snippets'
"Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tweekmonster/django-plus.vim'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'junegunn/goyo.vim'
Plug 'ollykel/v-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'calviken/vim-gdscript3'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'amix/vim-zenroom2'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'skywind3000/asyncrun.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'justinmk/vim-sneak'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'rbgrouleff/bclose.vim'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
call plug#end()

set nu
let g:mapleader = "\<space>"
"let g:maplocalleader = ','
let g:asyncrun_open = 6
let g:user_emmet_leader_key = ','
let g:NERDTreeWinPos = "right"
let g:airline_powerline_fonts = 1

map <leader>t :AsyncRun
map <leader>T :AsyncStop<CR> 

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

nnoremap <silent> <leader>z :Goyo<CR>
nnoremap <silent> <leader>f :FZF<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <leader>n :NERDTreeToggle<CR>

nnoremap <silent> <C-j> :tabp<CR> 
nnoremap <silent> <C-k> :tabn<CR> 
nnoremap <silent> <C-h> :bnext<CR> 
nnoremap <silent> <C-l> :bprevious<CR> 

nnoremap <silent> <F8> :!autopep8 --in-place %<CR>

inoremap <C-s> <Esc>:Update<CR>
"au VimEnter *  NERDTree

"Write Shortcut
nnoremap <c-s> :w<cr>

set complete+=kspell
set background=dark
set timeoutlen=500
set mouse=a

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


let g:prettier#autoformat = 0

autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql,*.vue PrettierAsync
autocmd BufRead,BufNewFile *.md setlocal spell

colorscheme gruvbox
let g:airline_theme = "base16_gruvbox_dark_hard"
hi Normal guibg=NONE ctermbg=NONE

"Disable Arrow Keys and Escape
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

