-- plugin definitions

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    vim.cmd([[packadd packer.nvim]])
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'


    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"

    use "tpope/vim-fugitive"
    use "tpope/vim-surround"
    use "mbbill/undotree"

    use 'nvim-treesitter/nvim-treesitter'

    -- LSP
    -- enable LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/mason-lspconfig.nvim"

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- Telescope
    -- easily find things in code etc
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = { {'nvim-lua/plenary.nvim'} },
    }


    -- themes
    use "savq/melange-nvim"


    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)
