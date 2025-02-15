call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()

set number
set cursorline
set smartindent
set nowrap
set backup
set undofile

syntax on

" Leader キーをスペースに設定（多くの操作の起点となる重要な設定）
let mapleader = "\<Space>"

" 検索時のハイライトを<ESC><ESC>で消せるように
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>

" 行頭・行末移動を直感的に
nnoremap H ^
nnoremap L $

" バッファ間の移動をより簡単に
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

" ウィンドウ分割後の移動をより簡単に
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NERDTreeのトグルをより簡単に
nnoremap <Leader>n :NERDTreeToggle<CR>

" タブ操作をより直感的に
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>w :tabclose<CR>
nnoremap <Leader>] :tabnext<CR>
nnoremap <Leader>[ :tabprevious<CR>

" ファイル操作
nnoremap <Leader>w :w<CR>          " 保存
nnoremap <Leader>q :q<CR>          " 終了

" ウィンドウ操作
nnoremap <Leader>v :vsplit<CR>     " 垂直分割
nnoremap <Leader>s :split<CR>      " 水平分割

" インサートモードでjjと素早く押すとESCと同じように動作
inoremap jj <ESC>

" コピー&ペーストをクリップボードと連携
set clipboard=unnamed,unnamedplus

