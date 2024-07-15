return {
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					bash = { "beautyshell" },
					cpp = { "clang-format" },
					css = { "prettier" },
					html = { "prettier" },
					json = { "prettier" },
					-- only run if first fails
					markdown = { { "prettier" } },
					yaml = { "yamlfix" },
					python = { "isort", "black" },
				},
			})

			require("conform").setup({
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})
		end,
	},
}
