syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set hidden


set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin(stdpath('data') . '/plugged')
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'tpope/vim-fugitive'
    Plug 'https://github.com/ycm-core/YouCompleteMe.git'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'morhetz/gruvbox'
    Plug 'jiangmiao/auto-pairs'
call plug#end()

lua << END
    require('lualine').setup({
        options = {
            theme = 'gruvbox'
        }
    })
END

" Keybindings
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>v :Ex<CR>
nnoremap <Leader><CR> :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>s :Git status<CR>
nnoremap <Leader>c :Buffers<CR>

colorscheme gruvbox
