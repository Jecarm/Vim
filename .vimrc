set nocompatible              " required
filetype off                  " required
  
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 	
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tmhedberg/SimpylFold'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'Valloric/YouCompleteMe'
 
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:SimpylFold_docstring_preview=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
  
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set encoding=utf-8
set nu
let python_highlight_all=1
syntax on

"Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

"在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
"autocmd VimEnter * NERDTree
"按下 F1 调出/隐藏 NERDTree
map <F1> :NERDTreeToggle<CR>
"将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
"let NERDTreeWinPos="right"
"当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
"不显示帮助面板
let NERDTreeMinimalUI=1 
