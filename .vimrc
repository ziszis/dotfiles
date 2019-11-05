source ~/.vimrc-minimal

" Vundle begin
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mhinz/vim-signify'
Plugin 'PeterRincker/vim-argumentative'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Vundle end
call vundle#end()
filetype plugin indent on

" Airline
source ~/tools/vim/airline.vim

" vim-gitgutter
set signcolumn=yes

" Tmuxline
let g:tmuxline_preset = {
  \'a'    : '#S',
  \'win'  : '#I #W',
  \'cwin' : '#I #W',
  \'y'    : '%R %F',
  \'z'    : '#H'}

" BufExplorer
let g:bufExplorerShowRelativePath=1

" Always display quickfix on the right
autocmd FileType qf wincmd L
