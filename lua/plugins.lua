return require('packer').startup(function()
    -- Packer can manage itself
    use {
        'wbthomason/packer.nvim'
    }
    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- coc
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }
    -- bufferline
    use {
        'akinsho/bufferline.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            'moll/vim-bbye'
        }
    }
    -- indentLine
    use {
        'Yggdroot/indentLine'
    }
    -- nerdcommenter
    use {
        'scrooloose/nerdcommenter'
    }
    -- auto-pairs
    use {
        'jiangmiao/auto-pairs'
    }
    -- vim-quickhl
    use {
        't9md/vim-quickhl'
    }
    -- zephyr-nvim(colorscheme)
    use {
        'glepnir/zephyr-nvim',
        requires = 'nvim-treesitter/nvim-treesitter'
    }
    -- lualine
    use {
        'nvim-lualine/lualine.nvim'
    }
    -- noice
    use {
        'folke/noice.nvim',
        requires = {
            'MunifTanjim/nui.nvim',
            'rcarriga/nvim-notify'
        }
    }
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = 'nvim-lua/plenary.nvim'
    }
    -- alpha-nvim
    use {
        'goolord/alpha-nvim'
    }
    -- aerial.nvim
    use {
        'stevearc/aerial.nvim'
    }
    -- nvim-ts-rainbow
    use {
        'p00f/nvim-ts-rainbow'
    }
    -- gitsigns.nvim
    use {
        'lewis6991/gitsigns.nvim'
    }
    -- leap.nvim
    use {
        'ggandor/leap.nvim'
    }
end)
