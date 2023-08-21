local opts = { noremap = true, silent = true }

local map = vim.keymap.set

vim.cmd([[autocmd BufWritePost *.html !htmlbeautifier %]])
map("n", "<C-Space>", ":WhichKey \\<space><cr>", opts)
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)
map("n", "<leader><leader>", ":Telescope buffers<CR>", opts)
map("n", "<leader>m", ":Mason<CR>", opts)
map("v", "<leader>\\",":norm I//<CR>", opts)
map("v", "<leader>\\\\",":norm ^xx <CR>", opts)
-- Remap for dealing with visual line wraps
map("n", "k", "v:count == 0 ? '3gk' : '3k'", { expr = true })
map("n", "j", "v:count == 0 ? '3gj' : '3j'", { expr = true })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- paste over currently selected text without yanking it
map("v", "p", '"_dp')
map("v", "P", '"_dP')
