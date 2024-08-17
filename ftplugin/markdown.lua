require("config.bindings")

-- vim trick: o in visual mode jumps to other side
-- vim trick: gv highlights last visual area https://builtin.com/articles/vim-visual-mode#:~:text=In%20blockwise%20visual%20mode%2C%20you,command%20(%20%3Ah%20normal%20).
-- highlights visual mode text in obsidian.nvim
vmap("<LEADER>h", "<ESC>a==<ESC>gvo<ESC>i==<ESC>")
vmap("<LEADER>i", "<ESC>a_<ESC>gvo<ESC>i_<ESC>")
vmap("<LEADER>b", "<ESC>a**<ESC>gvo<ESC>i**<ESC>")
vmap("<LEADER>s", "<ESC>a~~<ESC>gvo<ESC>i~~<ESC>")
-- this took too long to research actual obsure af info

imap(",lishort", "<CMD>-1read ~/.config/nvim/ftplugin/templates/loremIpsumShort.md<CR><ESC>")
imap(",limed", "<CMD>-1read ~/.config/nvim/ftplugin/templates/loremIpsumMedium.md<CR><ESC>")
imap(",lilong", "<CMD>-1read ~/.config/nvim/ftplugin/templates/loremIpsumLong.md<CR><ESC>")
