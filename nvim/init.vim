syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch


set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin(stdpath('data') . '/plugged')
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'tpope/vim-fugitive'
    Plug 'https://github.com/ycm-core/YouCompleteMe.git'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

lua << END
    require('lualine').setup({
        options = {
            theme = 'codedark'
        }
    })
END

nnoremap <C-p> :Files<CR>
