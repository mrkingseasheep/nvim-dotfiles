return {
	{
		"williamboman/mason.nvim",
		dependencies = "WhoIsSethDaniel/mason-tool-installer.nvim",
		lazy = false,
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = "williamboman/mason.nvim",
		config = {
			ensure_installed = {
				"clang-format",
				"stylua",
				"isort",
				"black",
				"prettier",
				"typescript-language-server",
				"eslint-lsp",
			},
			auto_update = true,
			run_on_start = true,
			start_delay = 5000,
			debounce_hours = 12,
		},
	},
}
