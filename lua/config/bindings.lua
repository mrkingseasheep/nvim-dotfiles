function nmap(action, result)
	local options = { noremap = true, silent = true }
	vim.keymap.set("n", action, result, options)
end

function vmap(action, result)
	local options = { noremap = true, silent = true }
	vim.keymap.set("v", action, result, options)
end

function imap(action, result)
	local options = { noremap = true, silent = true }
	vim.keymap.set("i", action, result, options)
end

function map(mode, action, result, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, action, result, options)
end

imap("jk", "<ESC><CMD>w<CR>")
imap("jjk", "<ESC>")

--- copy all
nmap("<LEADER>a", 'ggVG"+y')

--- undo with U
nmap("U", "<C-r>")

--- file explorer
nmap("-", "<CMD>Oil<CR>")

--- doesn't clog up system clipboard
nmap("x", '"_x')
nmap("X", '"_d')
nmap("c", '"_c')
--- proper Y command
nmap("Y", "v$y")
nmap("<LEADER>Y", 'v$"+y')
nmap("<LEADER>y", '"+y')
vmap("<LEADER>y", '"+y')
nmap("<LEADER>yy", '"+yy')
nmap("<LEADER>p", '"+p')
nmap("<LEADER>x", '"+d')

--- better use of $ and ^
nmap("_", "$")

--- jumps feel better
nmap("<C-u>", "<C-u>zz")
nmap("<C-d>", "<C-d>zz")
nmap("G", "Gzz")
--nmap("j", "jzz")
--nmap("k", "kzz")
nmap("n", "nzz")
nmap("N", "Nzz")
nmap("{", "{zz")
nmap("}", "}zz")

--- fuzzy finder magic
nmap("<LEADER>ff", "<CMD>Telescope find_files<CR>")
nmap("<LEADER>fl", "<CMD>Telescope live_grep<CR>")
nmap("<LEADER>fs", "<CMD>Telescope grep_string<CR>")
nmap("<LEADER>fg", "<CMD>Telescope git_files<CR>")
nmap("<LEADER>fo", "<CMD>ObsidianSearch<CR>")

--- obsidian
nmap("<LEADER>n", "<CMD>e /home/yang/Documents/archives/1721625004-hub.md<CR>")
nmap("<LEADER>on", "<CMD>ObsidianToday<CR>")
nmap("<LEADER>ot", "<CMD>ObsidianToday 1<CR>")
nmap("<LEADER>oy", "<CMD>ObsidianToday -1<CR>")
nmap("<LEADER>ob", "<CMD>ObsidianBacklinks<CR>")
nmap("<LEADER>ot", "<CMD>ObsidianTags<CR>")

--- compile + run cpp file
-- nmap("<LEADER>c", "<CMD>terminal<CR>ig++ <CMD>echo %:t<CR>")
nmap("<LEADER>C", "<CMD>terminal g++ % -Wall && time ./a.out<CR><CMD>startinsert<CR>")
nmap("<LEADER>c", "<CMD>terminal make && time ./app<CR><CMD>startinsert<CR>")
nmap("<LEADER>t", "<CMD>terminal<CR><CMD>startinsert<CR>")

nmap("<TAB>", "/\\[*\\]<CR>")
nmap("<S-TAB>", "/\\[*\\]<CR>NN")
