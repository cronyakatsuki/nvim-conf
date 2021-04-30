-- general settings
require('colorscheme')
require('keymaps')
require('plugins')
require('settings')

-- plugin settings
require('nv-autopairs')
require('nv-buftabline')
require('nv-colorizer')
require('nv-comment')
require('nv-compe')
require('nv-dashboard')
require('nv-galaxyline')
require('nv-gitsigns')
require('nv-nvimtree')
require('nv-telescope')
require('nv-treesitter')
require('nv-utils')


-- lsp
require('lsp')
require('lsp.bash-ls')
require('lsp.cpp-ls')
require('lsp.css-ls')
require('lsp.golang-ls')
require('lsp.html-ls')
require('lsp.js-ts-ls')
require('lsp.json-ls')
require('lsp.latex-ls')
require('lsp.lua-ls')
require('lsp.php-ls')
require('lsp.python-ls')
require('lsp.ruby-ls')
require('lsp.rust-ls')
require('lsp.vim-ls')
require('lsp.yaml-ls')

-- vimscript only
vim.cmd('source ~/.config/nvim/vimscript/functions.vim')
