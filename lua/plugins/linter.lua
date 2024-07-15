return {
	{
		"mfussenegger/nvim-lint",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			-- vim.cmd(
			-- 	-- General/Global LSP Configuration
			-- 	local api = vim.api
			-- local lsp = vim.lsp
			--
			-- local make_client_capabilities = lsp.protocol.make_client_capabilities
			-- function lsp.protocol.make_client_capabilities()
			-- 	local caps = make_client_capabilities()
			-- 	if not (caps.workspace or {}).didChangeWatchedFiles then
			-- 		vim.notify(
			-- 			'lsp capability didChangeWatchedFiles is already disabled',
			-- 			vim.log.levels.WARN
			-- 		)
			-- 	else
			-- 		caps.workspace.didChangeWatchedFiles = nil
			-- 	end
			--
			-- 	return caps
			-- end
			-- )

			require("lint").linters_by_ft = {
				markdown = { "vale" },
				lua = { "luacheck" },
				cpp = { "clang-tidy" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				-- group = vim.api.nvim_create_augroup("lint", { clear = true }),
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
