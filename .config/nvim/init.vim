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
set foldlevelstart=20
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

set colorcolumn=100
highlight ColorColumn ctermbg=0 
highlight Pmenu ctermbg=lightgray 

call plug#begin(stdpath('data') . '/plugged')
    " Language support
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    " Fashionscape
    Plug 'morhetz/gruvbox'
    Plug 'nvim-lualine/lualine.nvim'
    " QoL
    Plug 'vim-test/vim-test'
    Plug 'tpope/vim-fugitive'
    Plug 'sbdchd/neoformat'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'preservim/nerdtree'
    Plug 'folke/trouble.nvim'
    Plug 'rcarriga/vim-ultest'
    Plug 'nvim-treesitter/nvim-treesitter', {'do':':TSUpdate'}
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

let g:NERDTreeWinSize=60

lua require('treeshitter')
lua require('lualaine')
lua require('autocomplete')
lua require('troubleindouble')
lua require('golspconfig')
lua require('jsonlspconfig')
lua require('yamllspconfig')

set completeopt=menu,menuone,noselect 

" Lsps
lua require('lspconfig').tsserver.setup{ }

" Keybindings
nnoremap <Leader>s :Git status<CR>
nnoremap <Leader>t :TestNearest<CR>
nnoremap <space>f :Neoformat<CR>
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fc <cmd>Telescope lsp_code_actions<cr>
nnoremap <leader><cr> :lua require'telescope.builtin'.lsp_definitions{}<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>tf :tab split<CR>
nnoremap <leader>tc :tab close<CR>
nnoremap <leader><C-f> :set foldmethod=syntax<CR>
nnoremap <leader>e :TagbarToggle<CR>

colorscheme gruvbox

" rust.vim config
let g:rustfmt_autosave = 1

" netrw
let g:netrw_liststyle = 3

" neoformat
let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.ts Neoformat
autocmd BufWritePre *.go Neoformat
