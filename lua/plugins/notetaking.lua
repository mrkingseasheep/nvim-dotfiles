return {
	{
		"epwalsh/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		-- lazy = "VeryLazy",
		lazy = false,
		ft = "markdown",
		-- keys = {
		-- 	"<LEADER>fn",
		-- 	"<LEADER>zh",
		-- 	"<LEADER>zn",
		-- 	"<LEADER>zt",
		-- 	"<LEADER>zy",
		-- 	"<LEADER>zb",
		-- },
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		-- 	-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		-- 	-- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		-- 	"BufReadPre ~/Documents/notes/**.md",
		-- 	"BufNewFile ~/Documents/notes/**.md",
		-- },
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- conceallevel = 2,
		config = {
			workspaces = {
				{
					name = "archives",
					path = "~/Documents/archives/",
				},
				{
					name = "info",
					path = "~/Documents/info/",
				},
			},
			-- notes_subdir = "notes",
			-- new_notes_location = "notes_subdir",
			daily_notes = {
				-- Optional, if you keep daily notes in a separate directory.
				folder = "journal",
				-- Optional, if you want to change the date format for the ID of daily notes.
				date_format = "%Y-%m-%d",
				-- Optional, if you want to change the date format of the default alias of daily notes.
				alias_format = "%B %-d, %Y",
				-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
				template = nil,
			},

			-- Optional, customize how note IDs are generated given an optional title.
			---@param title string|?
			---@return string
			note_id_func = function(title)
				-- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
				-- In this case a note with the title 'My new note' will be given an ID that looks
				-- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
				local suffix = ""
				if title ~= nil then
					-- If title is given, transform it into valid file name.
					suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
				else
					-- If title is nil, just add 4 random uppercase letters to the suffix.
					for _ = 1, 4 do
						suffix = suffix .. string.char(math.random(65, 90))
					end
				end
				return tostring(os.time()) .. "-" .. suffix
			end,
		},
	},
}
