if vim.g.vscode then
	return
end

vim.g.mapleader = " "

require("plugins")
require("keybindings")
