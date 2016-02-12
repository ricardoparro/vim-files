execute pathogen#infect()
"default indent settings
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
set runtimepath^=~/.vim/bundle/ctrlp.vim
set number
set clipboard=unnamed
syntax on

" highlight current line
set cursorline
set cmdheight=1
set switchbuf=useopen
set showtabline=2
set winwidth=79

filetype indent on
set noerrorbells visualbell t_vb=
if has('autocmd')
      autocmd GUIEnter * set visualbell t_vb=
  endif
autocmd VimEnter * wincmd p

:let mapleader = ","
map <Leader>gf :CtrlP
map <Leader>nt :NERDTree
map <Leader>cc :!cucumber
map <Leader>rt :!rake test
map <Leader>vi :vsplit ~/.vimrc

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

"for ruby, autoindent with two spaces, always expand tabs
autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
autocmd FileType python set sw=4 sts=4 et
autocmd! BufRead,BufNewFile *.sass setfiletype sass 
autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;
