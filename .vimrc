call plug#begin()
    Plug 'dense-analysis/ale'
    Plug 'wuelnerdotexe/vim-astro'
    Plug 'tpope/vim-endwise'
    Plug 'windwp/nvim-autopairs'
    Plug 'sainnhe/sonokai'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()

" General settings
set nocompatible
set path+=**
set wildmenu
set clipboard+=unnamedplus
set nowrap
set ignorecase
set smartcase
set hlsearch
set autochdir
set number relativenumber
set splitright splitbelow 
set encoding=utf-8
set wildmode=longest,list,full
set redrawtime=10000
set tabstop=4 expandtab
set shiftwidth=4
set guicursor=n-v-c-i:block
set omnifunc=syntaxcomplete#Complete

autocmd BufRead * :TSEnable highlight

let $FZF_DEFAULT_COMMAND = 'find .'
let g:phpfmt_standard = 'PSR12'
syntax on
highlight LineNr ctermfg=gray
filetype plugin on

" Functions

"" fzf Find Project Root
function GetGitRoot()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command CdToGitRoot execute 'cd' . GetGitRoot()

function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

nnoremap <leader>e :call FzyCommand("find . -type f", ":e")<cr>
nnoremap <leader>v :call FzyCommand("find . -type f", ":vs")<cr>
nnoremap <leader>s :call FzyCommand("find . -type f", ":sp")<cr>

" Mappings
nnoremap <C-p> :CdToGitRoot<CR>:e ./**/*
nore <C-S-C> "+y

nn <silent> + :res +5<CR>
nn <silent> - :res -5<CR>
nno <silent><C-\> :vs <CR>

inoremap <C-Space> <C-N>
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

"" Autoappend closing characters
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O
ino        (  ()<Left>
ino <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

nno <C-U> <C-U>zz
nno <C-D> <C-D>zz
nno <silent><C-G>:ALEGoToDefinition<CR>

tnoremap <Esc> <C-\><C-n>

" Abbrevs
iabbrev </ </<C-X><C-O>

" Colors
hi Pmenu ctermbg=236 ctermfg=7
set termguicolors

" Themes
let g:sonokai_style = 'atlantis'
let g:sonokai_better_performance = 1
let g:sonokai_transparent_background = 1

colorscheme sonokai
