require("config.bindings")

imap(",cout", "std::cout << <+++> << std::endl;<ESC>5bct<SPACE>")
imap(",cerr", "std::cerr << <+++> << std::endl;<ESC>5bct<SPACE>")
imap(",cin", "std::cin >> ;<ESC>i")
-- imap(",inc", '#include ""<ESC>i')
imap(",inc", "#include <><ESC>i")
imap(",start", "<CMD>-1read ~/.config/nvim/ftplugin/templates/cppBasic.cpp<CR><ESC>3jo")
imap(",comp", "<CMD>-1read ~/.config/nvim/ftplugin/templates/cppComp.cpp<CR><ESC>5jo<CR>")
