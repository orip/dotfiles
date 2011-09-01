set sw=4
set ts=4
set sts=4
set et
set modeline

" follow the steps at http://sontek.net/turning-vim-into-a-modern-python-ide

filetype off
runtime! autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
"colorscheme ir_black
set bg=dark
filetype on
filetype plugin indent on

set laststatus=2

set statusline=%<%f\    " Filename
set statusline+=%w%h%m%r " Options
set statusline+=%{fugitive#statusline()} "  Git Hotness
set statusline+=\ [%{&ff}/%Y]            " filetype
set statusline+=\ [%{getcwd()}]          " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

map <leader>g :GundoToggle<CR>
