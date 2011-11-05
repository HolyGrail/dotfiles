" Last Change:     2011/11/05 21:47:30 .
set fileencodings=iso-2022-jp-3,iso-2022-jp,enc-jisx0213,euc-jp,utf-8,ucs-bom,euc-jp,eucjp-ms,cp932

syntax enable
colorscheme solarized
set helplang=ja
set laststatus=2
set statusline=%{expand('%:p:t')}\ %<\(%{expand('%:p:h')}\)%=\ %m%r%y%w%{fugitive#statusline()}%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}[%3l,%3c]
set showcmd
set showmatch
set hlsearch
set updatetime=500

" タブをスペースを表示
set list listchars=tab:>-,trail:_

let buftabs_only_basename = 1
let buftabs_in_statusline = 1
let bufExplorerDetailedHelp = 1

:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

set incsearch
if has("migemo")
	set migemo
endif

set foldmethod=indent

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1

:nnoremap <ESC><ESC> :nohlsearch<CR>

:let g:Align_xstrlen = 3
:let g:DrChipTopLvlMenu = ''

:let autodate_format=" %Y/%m/%d %H:%M:%S "

let g:neocomplcache_enable_at_startup = 1