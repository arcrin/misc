" Print a message to confirm the config is loaded
echo "main init.vim loaded"

" Check if running in VSCode (equivalent to exists('vim.g.vscode'))
if exists('g:vscode')
    " VSCode-specific settings can go here if needed
endif

" Set <Space> as the leader key
nnoremap <Space> <Nop>
let mapleader = " "

" File Explorer (same as vim.cmd.Ex in Lua)
nnoremap <leader>pv :Ex<CR>

" Move selected lines up and down in Visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Join lines and maintain cursor position
nnoremap J mzJ`z

" Keep cursor centered when scrolling half-pages
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Keep cursor centered when searching
nnoremap n nzzzv
nnoremap N Nzzzv

" Copy to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap <leader>p "+p

" Delete without affecting the default register
nnoremap <leader>d "_dd
vnoremap <leader>d "_d

" Make <C-c> behave like <Esc> in Insert mode
inoremap <C-c> <Esc>

" Disable Ex mode (avoid accidental presses)
nnoremap Q <nop>

" Enable line numbers and relative numbering
set number
set relativenumber

" Disable search highlight but keep incremental search
set nohlsearch
set incsearch

" Keep cursor 11 lines from the top/bottom when scrolling
set scrolloff=11
