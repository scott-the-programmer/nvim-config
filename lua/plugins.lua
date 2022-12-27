return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Handy tools
    use('nvim-treesitter/nvim-treesitter')
    use({
        "nvim-treesitter/nvim-treesitter.configs",
        config = function()
            require("nvim-treesitter.configs").setup {
                ensure_installed = "all",
                highlight = {
                    enable = true
                },
                indent = {
                    enable = true
                }

            }
        end
    })
    use("folke/which-key.nvim")
    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}}

    })

    -- Cosmetic
    use("EdenEast/nightfox.nvim")

    -- Nicer code action signs
    use("kosayoda/nvim-lightbulb")

    -- Status bar
    use({
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup()
        end,
        requires = "kyazdani42/nvim-web-devicons",
        after = {"nightfox.nvim"}
    })

    -- File tree
    use({
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons' -- optional, for file icons
        },
        tag = 'nightly', -- optional, updated every week. (see issue #1193)
        config = function()
            require("nvim-tree").setup()
        end
    })

    -- Lazygit
    use('kdheepak/lazygit.nvim')

    -- Golang
    use({
        "ray-x/go.nvim",
        config = function()
            require("go").setup()
        end,
        requires = "nvim-treesitter/nvim-treesitter"
    })
    use('neovim/nvim-lspconfig')
    use('ray-x/guihua.lua')

    -- Terraform
    use('hashivim/vim-terraform')

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = { -- LSP Support
        {'neovim/nvim-lspconfig'}, {'williamboman/mason.nvim'}, {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'}, {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-nvim-lua'}, -- Snippets
        {'L3MON4D3/LuaSnip'}, {'rafamadriz/friendly-snippets'}}
    }

    -- Coc
    use("OmniSharp/omnisharp-vim")
    use("neoclide/coc.nvim")

end)
