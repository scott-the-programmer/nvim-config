

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Improve startup time
	use("lewis6991/impatient.nvim")

	-- Handy tools
	use("nvim-treesitter/nvim-treesitter")
	use("folke/which-key.nvim")

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
		after = { "nightfox.nvim" },
	})

	-- File tree
	use({
  		'kyazdani42/nvim-tree.lua',
  		requires = {
    			'kyazdani42/nvim-web-devicons', -- optional, for file icons
  		},
  		tag = 'nightly', -- optional, updated every week. (see issue #1193)
		config = function()
		   	require("nvim-tree").setup()
		end,
	})

	-- Golang
	use({
		"ray-x/go.nvim",
		config = function()
			require("go").setup()
		end,
		requires="nvim-treesitter/nvim-treesitter"
	})

	-- Coc
	use ("OmniSharp/omnisharp-vim")
	use ("neoclide/coc.nvim")

end)
