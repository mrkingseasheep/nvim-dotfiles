return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function () 
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = { "cpp", "lua", "vim", "vimdoc", "html", "markdown" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },  
			})
		end
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {},
	},
}
