if vim.g.vscode then
	return
end

vim.g.mapleader = " "
vim.wo.number = true

require("plugins")
require("keybindings")
