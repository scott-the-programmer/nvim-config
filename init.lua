local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local map = require("map").map

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  vim.cmd [[packadd packer.nvim]]
end

require("plugins")
require("cmp_settings")
require("dap_settings")
require("keymaps")
require("lsp_settings")
