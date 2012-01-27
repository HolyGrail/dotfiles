" Last Change:     2011/11/05 21:47:30 .
call pathogen#infect()
set fileencodings=iso-2022-jp-3,iso-2022-jp,enc-jisx0213,euc-jp,utf-8,ucs-bom,euc-jp,eucjp-ms,cp932

syntax enable
if has('gui_running')
  set background=light
else
  set background=dark
endif
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized
set helplang=ja
set laststatus=2
set statusline=%{expand('%:p:t')}\ %<\(%{expand('%:p:h')}\)%=\ %m%r%y%w%{fugitive#statusline()}%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}[%3l,%3c]
set showcmd
set showmatch
set hlsearch
set updatetime=500
set number
set autoindent
set expandtab
set ts=2
set sw=2

" タブをスペースを表示
" set list listchars=tab:>-,trail:_

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

" set foldmethod=indent

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=10
let g:indent_guides_guide_size=1
"let g:indent_guides_start_level=2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=black guibg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey guibg=darkgrey

:nnoremap <ESC><ESC> :nohlsearch<CR>

:let g:Align_xstrlen = 3
:let g:DrChipTopLvlMenu = ''

:let autodate_format=" %Y/%m/%d %H:%M:%S "

let g:neocomplcache_enable_at_startup = 1
