set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set signcolumn=yes
set tabstop=2          "タブを何文字の空白に変換するか
set shiftwidth=2       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする
set smartcase          "小文字時に大文字でも検索する
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない

let g:goimports = 1
let mapleader = "\<Space>"

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
"  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

"set guifont=Ricty:h14


" no permission file force write
cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>


set showtabline=2
set termguicolors
set termguicolors
set clipboard+=unnamedplus
let g:tokyonight_style = 'night' " available: night, storm

colorscheme tokyonight

"colorscheme jellybeans
"colorscheme desert

"前回のカーソル位置を復元
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

function SetIME(mode)
  if has("unix") && a:mode=='off'
    call system('fcitx-remote -c')
  else
    call system('fcitx-remote -o')
  endif
endfunction

" 末尾スペースの自動削除
autocmd BufWritePre * :%s/\s\+$//ge
autocmd InsertLeave * :call SetIME('off')
