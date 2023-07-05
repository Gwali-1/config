vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("config.keymaps")
require("config.options")
require("config.autocmds")
require("plugins")

vim.g.lsp_zerocomp_confirm_key = '<CR>'
