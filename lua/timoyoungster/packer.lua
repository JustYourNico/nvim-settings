-- This file can be loaded by calling `lua require('plugins')` from your init.lua

-- Only required if you have packer configuered as `opt`
-- vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    -- CMP
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'mfussenegger/nvim-dap'

    -- LuaSnip
    use ({'L3MON4D3/LuaSnip', tag = "v<CurrentMajor>.*"})

    -- Colortheme
    use 'folke/tokyonight.nvim'
    
    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Folds and Highlight
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true}) end,
    }

    -- Auto Pairs
    use 'jiangmiao/auto-pairs'

    -- Comment
    use 'preservim/nerdcommenter'

    -- Collab plugin
    use 'jbyuki/instant.nvim'

    -- Harpoon
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'

end)
