require("config.bindings")

imap(",cout", "std::cout << <++> << std::endl;<ESC>5bct<SPACE>")
imap(",cerr", "std::cerr << <++> << std::endl;<ESC>5bct<SPACE>")
imap(",cin", "std::cin >> ;<ESC>i")
-- imap(",inc", '#include ""<ESC>i')
imap(",inc", "#include <><ESC>i")

-- longer templates, read from files
imap(",start", "<CMD>-1read ~/.config/nvim/ftplugin/templates/cppBasic.cpp<CR><ESC>3jo")
imap(",comp", "<CMD>-1read ~/.config/nvim/ftplugin/templates/cppComp.cpp<CR><ESC>5jo<CR>")
imap(",if", "<CMD>-1read ~/.config/nvim/ftplugin/templates/if.cpp<CR><ESC>ci(")
imap(",wh", "<CMD>-1read ~/.config/nvim/ftplugin/templates/while.cpp<CR><ESC>ci(")
imap(",do", "<CMD>-1read ~/.config/nvim/ftplugin/templates/doWhile.cpp<CR><ESC>ji<TAB>")
imap(",for", "<CMD>-1read ~/.config/nvim/ftplugin/templates/for.cpp<CR><ESC>ci(")
