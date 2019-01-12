set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'metakirby5/codi.vim'
Plug 'nightsense/rusticated'
Plug 'https://github.com/widatama/vim-phoenix'
Plug 'KKPMW/sacredforest-vim'
Plug 'mattn/emmet-vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'vim-airline/vim-airline'
call plug#end()
execute pathogen#infect()
set t_Co=256
set termguicolors
set background=dark
colorscheme hybrid_material
let g:airline_theme='Base2Tone_ForestDark'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:enable_bold_font=1
let g:enable_italic_font=1
execute pathogen#infect()
"set termguicolors
"let g:gruvbox_contrast='soft'
"set background=light
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2017 Sep 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

"if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
"else
"  set backup		" keep a backup file (restore to previous version)
"  if has('persistent_undo')
"    set undofile	" keep an undo file (undo changes after closing)
"  endif
"endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

if has('syntax') && has('eval')
  packadd! matchit
endif

set nobackup
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set number
set cursorline
set splitright
:map <F3> :NERDTree <Return>
:map <F2> :!node % <Return>
:map <F4> :!g++ % -o %:r <Return>
:map <F5> :!./%:r <Return>
"hi CursorLine cterm=NONE ctermbg=8
":ab ic #include
":ab us using
":ab #! #!/bin/bash
":ab ot std::cout <<
":ab cn std::cin >>
":ab el << std::endl;
":ab main #include <iostream><CR><CR><CR>int main(int argc, char **argv){<CR><CR>return 0;<CR>}<UP><UP>
