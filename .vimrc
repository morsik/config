filetype plugin on

syntax enable
set autoindent
set number

set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set list listchars=tab:»·,trail:·
set cursorline

if v:version >= 703
    set colorcolumn=80
endif

set nocompatible

" enable 256 color terminal for theme
set t_Co=256
colorscheme leo

hi LineNr ctermfg=darkgrey ctermbg=black

" tabs settings
map <C-left> :tabprev<CR>
map <C-right> :tabnext<CR>
map <C-up> :tabnew<CR>
map <C-down> :tabclose<CR>

let g:AutoClosePairs = {'<': '>', '(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}

" save cursor position
set viminfo='10,\"100,:20,%,n~/.viminfo

" and restore (-;
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
