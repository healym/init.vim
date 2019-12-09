set number
set visualbell
filetype indent on
set autoindent
set list listchars=tab:»\ ,trail:·,nbsp:·,eol:¬
set splitbelow splitright
set colorcolumn=80,100,120
set background=dark
"set termguicolors " NOTE: causes problems with MobaXterm
set cursorline " NOTE: looks gross without termguicolors

" Assume fzf installed to home
set rtp+=$HOME/.fzf

" set up minpac
packadd minpac

call minpac#init()

call minpac#add('tpope/vim-fugitive')

call minpac#add('neoclide/coc.nvim', {'branch': 'release'})

call minpac#add('junegunn/fzf.vim')

call minpac#add('drewtempelmeyer/palenight.vim', {'type': 'opt'})

packadd palenight.vim
colorscheme palenight
let g:one_allow_italics = 1

call minpac#add('itchyny/lightline.vim')
let g:lightline = {
  \ 'colorscheme': 'palenight',
  \ }

call minpac#update()

let mapleader=" "
nnoremap <space> <nop>

nnoremap <leader>p :FZF<CR>
nnoremap <leader>b :buffers<cr>:b<space>
