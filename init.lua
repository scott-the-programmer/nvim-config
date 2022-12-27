if vim.g.vscode then
	return
end

vim.g.mapleader = " "
vim.wo.number = true

require("plugins")
require("keybindings")

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
