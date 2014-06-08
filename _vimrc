set nocompatible
set autoindent
set fileencodings=ucs-bom,utf-8,iso-2022-jp,cp932,euc-jp,utf-16,default,latin1
set fileencoding=utf-8
set fileformats=unix,dos,mac
set fileformat=unix
set encoding=utf-8
set number
set iminsert=0
set imsearch=-1
set formatoptions+=mM
set ambiwidth=double
set display+=lastline
set backspace=indent,eol,start
set nobackup
set history=200
set tabstop=4
set shiftwidth=4
set scrolloff=10
syntax enable


for path in split(glob($HOME.'/_vimfiles/*').glob($HOME.'/.vimfiles/*'), '\n')
  if isdirectory(path) | let &runtimepath = &runtimepath.','.path | end
endfor

if has('win32unix') 
  noremap  
  noremap!  

elseif has('win32')
  if expand("%")==""
    cd $HOME
  endif
elseif has('unix')
endif 

noremap  
noremap!  

if $keyboard=='dvorak'
  set langmap='q,\\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,s\\;,-',\\;z,qx,jc,kv,xb,bn,mm,w\\,,v.,z/,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\",:Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?
endif

set expandtab
function! TabToggle()
  if &expandtab
    set shiftwidth=2
    set softtabstop=2
    set expandtab
	echo "Tab Width is 2, with Tab character"
  else
    set shiftwidth=4
    set softtabstop=4
    set noexpandtab
	echo "Tab Width is 4 , with Space characters"
  endif
endfunction




"NeoBundle Scripts-----------------------------
if has('vim_starting')
set nocompatible               " Be iMproved

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
