return {
	"https://github.com/SirVer/ultisnips",
	init = function()
		vim.UltiSnipsExpandTrigger = "<tab>"
		vim.UltiSnipsJumpForwardTrigger = "<c-b>"
		vim.UltiSnipsJumpBackwardTrigger = "<c-z>"
	end,
}
