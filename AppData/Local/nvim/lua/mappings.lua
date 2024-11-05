require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- for vscode to work with keymaps

vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })

-- Center screen after scrolling up with Ctrl + u
vim.api.nvim_set_keymap("n" , "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Map 'jk' to escape insert mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Map 'jk' to escape command-line mode
vim.api.nvim_set_keymap("c", "jk", "<C-c>", { noremap = true, silent = true })

vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true, desc = "Next Buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true, desc = "Previous Buffer" })

-- Keybindings for opening and closing buffers
vim.keymap.set("n", "<leader>bn", ":enew<CR>", { noremap = true, silent = true, desc = "New Buffer" }) -- Open a new buffer
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true, desc = "Delete Buffer" }) -- Close the current buffer

--Atl V to get in Block visual mode as ctrl v is binded in windows 
vim.keymap.set('n', '<A-v>', '<C-v>')

-- Yank to system clipboard only when using these mappings
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })  -- Visual mode
vim.api.nvim_set_keymap('n', '<leader>gy', '"+y', { noremap = true, silent = true })  -- Normal mode

-- Paste from system clipboard only with these mappings
vim.api.nvim_set_keymap('n', '<leader>gp', '"+p', { noremap = true, silent = true })  -- Normal mode
vim.api.nvim_set_keymap('i', '<C-p>', '<C-r>+', { noremap = true, silent = true })   -- Insert mode using Ctrl+P


-- In Insert mode
vim.api.nvim_set_keymap('i', '<C-CR>', '<C-o>o', { noremap = true, silent = true })


-- Custom Key Mappings
vim.api.nvim_set_keymap('n', '<leader>k', '"+gy', { noremap = true, silent = true }) -- Yank to clipboard
vim.api.nvim_set_keymap('n', '<leader>l', '"+gp', { noremap = true, silent = true }) -- Paste from clipboard












 

