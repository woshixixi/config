set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
set foldmethod=indent
au BufWinLeave * silent mkview  
au BufRead * silent loadview   
nnoremap <space> za             

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}

set number

syntax on

colorscheme molokai
