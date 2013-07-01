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
syntax enable

let g:clang_complete_auto=1
let g:clang_use_library=0
let g:clang_user_options = '2> NUL || exit 0"'

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