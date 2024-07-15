return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp = require("lspconfig")
			lsp.clangd.setup({})
			lsp.basedpyright.setup({})
		end,
	},
}
