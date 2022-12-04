local map = require("map").map
local builtin = require('telescope.builtin')

map("n", "<Leader>op", ":NvimTreeToggle<CR>")
map("n", "<Leader>gg", ":LazyGit<CR>")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

