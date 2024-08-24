-- turns out typescript-language-server is named tsserver
-- bruh I just spent 10 minutes searching for that
-- vim.lsp.start({
-- 	name = "ts_ls",
-- 	cmd = { "typescript-language-server", "--stdio" },
-- 	root_dir = vim.fs.dirname(vim.fs.find({ "tsconfig.json", "package.json" }, { upward = true })[1]),
-- })

return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp = require("lspconfig")
			lsp.clangd.setup({})
			lsp.basedpyright.setup({})
			lsp.tsserver.setup({})
			-- lsp.eslint.setup({})
			lsp.lua_ls.setup({})
		end,
	},
}
