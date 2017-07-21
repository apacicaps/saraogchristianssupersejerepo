" Obviously this is my vimrc

" Keybindings
map <F6> :set spell<CR>
map <F7> :set nospell<CR>
map <F12> :LLPStartPreview<CR>

" Keybindings insert
inoremap kj <Esc>
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
autocmd filetype html inoremap ;i <em></em><Space><++><Esc>FeT>i
autocmd filetype html inoremap ;b <b></b><Space><++><Esc>FbT>i
autocmd filetype html inoremap ;c <code></code><Space><++><Esc>FcT>i
autocmd filetype html inoremap ;l <a href="<link>"><++></a> <++><Esc>/<link><CR>6xi
autocmd filetype html inoremap ;1 <h1></h1><Space><++><Esc>F1T>i
autocmd filetype html inoremap ;2 <h2></h2><Space><++><Esc>F2T>i
autocmd filetype html inoremap ;3 <h3></h3><Space><++><Esc>F3T>i
autocmd filetype html inoremap ;4 <h4></h4><Space><++><Esc>F4T>i

"autocmd filetype tex inoremap ;i
"autocmd filetype tex inoremap ;b
"autocmd filetype tex inoremap ;u
"autocmd filetype tex inoremap ;r
"autocmd filetype tex inoremap ;

" Keybindings console
cnoremap kj <Esc>

" Keybindings normal
nnoremap <leader>rv :source $MYVIMRC<CR>

" Settings
set relativenumber
set nocompatible
set wrap
set linebreak
set rtp+=~/.vim/bundle/Vundle.vim
syntax on

" Plugins (vundle)
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'junegunn/goyo.vim'
Bundle "xuhdev/vim-latex-live-preview"
Bundle "danielmiessler/VimBlog"
Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin indent on    " required

" LaTeX
let g:livepreview_previewer = 'evince'
autocmd Filetype tex setl updatetime=500
