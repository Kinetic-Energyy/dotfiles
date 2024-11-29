local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
-- Enable system clipboard integration in VSCode with Neovim
vim.g.clipboard = vim.g.vscode_clipboard

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "




-- Map 'y' in Visual mode to copy to the system clipboard
vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true, silent = true })


-- Yank the current line to the system clipboard
vim.api.nvim_set_keymap('n', 'yy', '"+yy', { noremap = true, silent = true })

-- Yank the selected text to the system clipboard in Visual mode
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- Remap `p` to paste from the system clipboard
vim.api.nvim_set_keymap('v', 'p', '"+p', { noremap = true, silent = true })


-- Maps 'p' to paste from the system clipboard
vim.api.nvim_set_keymap('n', 'gp', 'o<Esc>"+p', { noremap = true, silent = true })


-- Maps 'P' to paste from the system clipboard before the cursor
vim.api.nvim_set_keymap('n', 'gP', 'O<Esc>"+P', { noremap = true, silent = true })

--vim.api.nvim_set_keymap('n', 'gP', '"+P', { noremap = true, silent = true })

-- yank to system clipboard
--keymap({"n", "v"}, "<leader>gy", '"+y', opts)

-- paste from system clipboard
--keymap({"n", "v"}, "<leader>gp", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Exit to Normal mode by pressing 'jk' in Insert mode
--vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Scroll down and center cursor
--keymap("n", "<C-d>", "<C-d>zz", opts)

-- Scroll up and center cursor
--keymap("n", "<C-u>", "<C-u>zz", opts)

-- Map Shift + j to move to the left split
--vim.api.nvim_set_keymap('n', 'J', '<C-w>h', { noremap = true, silent = true })

-- Map Shift + k to move to the right split
--vim.api.nvim_set_keymap('n', 'K', '<C-w>l', { noremap = true, silent = true })


-- Resize windows using Shift + Arrow keys in normal mode
vim.api.nvim_set_keymap('n', '<S-Left>', ':vertical resize -5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Right>', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Down>', ':resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Up>', ':resize -5<CR>', { noremap = true, silent = true })



-- Escape insert mode using 'jk'
keymap("i", "jk", "<Esc>", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

--keymaps conflicting with the modes of text up and down 
vim.keymap.set("n", "<S-j>", function()
  require('vscode').call("workbench.action.nextEditor")
end, { noremap = true, silent = true })

vim.keymap.set("n", "<S-k>", function()
  require('vscode').call("workbench.action.previousEditor")
end, { noremap = true, silent = true })



-- Leader jk to switch tabs (next editor)
--vim.keymap.set("n", "<leader>jk", function()
 -- require('vscode').action("workbench.action.nextEditor")
--end)

-- Leader jk to switch tabs (previous editor)
--vim.keymap.set("n", "<leader>kj", function()
  --require('vscode').action("workbench.action.previousEditor")
--end)




-- paste preserves primal yanked piece
--keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)




-- call vscode commands from neovim
vim.o.hlsearch = true

-- general keymaps
--keymap({"n", "v"}, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
keymap({"n", "v"}, "<leader>b", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap({"n"}, "<leader>zz", "<cmd>lua require('vscode').action('workbench.action.toggleZenMode')<CR>")
keymap({"n"}, "<leader>ct", "<cmd>lua require('vscode').action('workbench.action.closeOtherEditors')<CR>")
vim.api.nvim_set_keymap("n", "<leader>sa", "ggVG", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>da", "ggVGd", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>d;', ':s/;$//<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d,', ':s/,$//<CR>', { noremap = true, silent = true })


--keymap({"n", "v"}, "<leader>d", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
keymap({"n", "v"}, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
keymap({"n", "v"}, "<leader>vp", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
keymap({"n", "v"}, "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
keymap({"n", "v"}, "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
--keymap({"n", "v"}, "<leader>p", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
keymap({"n", "v"}, "<leader>fd", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")
keymap({"n", "v"}, "<leader>th", "<cmd>lua require('vscode').action('workbench.action.selectTheme')<CR>")
keymap({"n", "v"}, "<leader>x", "<cmd>lua require('vscode').action('workbench.view.extensions')<CR>")

keymap({"n", "v"}, "<leader>sk", "<cmd>lua require('vscode').action('workbench.action.openGlobalKeybindings')<CR>")
keymap('n', '<leader>gr', ':lua require("vscode").action("periscope.search")<CR>', { noremap = true, silent = true })




keymap({"n", "v"}, "<C-h>", "<cmd>lua require('vscode').action('workbench.action.focusEditorLeft')<CR>")
keymap({"n", "v"}, "<C-j>", "<cmd>lua require('vscode').action('workbench.action.focusEditorDown')<CR>")
keymap({"n", "v"}, "<C-k>", "<cmd>lua require('vscode').action('workbench.action.focusEditorUp')<CR>")
keymap({"n", "v"}, "<C-l>", "<cmd>lua require('vscode').action('workbench.action.focusEditorRight')<CR>")
keymap({"n", "v"}, "<leader>w", "<cmd>lua require('vscode').action('workbench.action.files.save')<CR>")




keymap({"n", "v"}, "<leader>q", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")


vim.keymap.set({ "n", "v" }, "<A-j>", function()
  vim.fn.VSCodeNotify("workbench.action.nextEditorInGroup")
end, { desc = "Next editor in group" })

vim.keymap.set({ "n", "v" }, "<A-k>", function()
  vim.fn.VSCodeNotify("workbench.action.previousEditorInGroup")
end, { desc = "Previous editor in group" })



-- Map `x` to delete a character and store it in register 'q'
vim.api.nvim_set_keymap('n', 'x', '"qx', { noremap = true, silent = true })



--testing
vim.api.nvim_set_keymap('n', 'gft', [[:execute "normal! f".nr2char(getchar())."a"<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>;', 'mzA;<Esc>`z', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>,', 'mzA,<Esc>`z', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>bs', [[:%s/\([^\\]\)\\\([^\\]\)/\1\\\\\2/g<CR>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>pr', [[mzOprintln!("{}", );<Esc>hi]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', 'J', { noremap = true, silent = true })
-- Join the current line with the upper line
vim.api.nvim_set_keymap('n', '<leader>k', 'kJ', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>n", "o<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>N", "O<Esc>", { noremap = true, silent = true })




-- harpoon keymaps
keymap({"n", "v"}, "<leader>ha", "<cmd>lua require('vscode').action('vscode-harpoon.addEditor')<CR>")
keymap({"n", "v"}, "<leader>ho", "<cmd>lua require('vscode').action('vscode-harpoon.editorQuickPick')<CR>")
keymap({"n", "v"}, "<leader>he", "<cmd>lua require('vscode').action('vscode-harpoon.editEditors')<CR>")
keymap({"n", "v"}, "<leader>h1", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor1')<CR>")
keymap({"n", "v"}, "<leader>h2", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor2')<CR>")
keymap({"n", "v"}, "<leader>h3", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor3')<CR>")
keymap({"n", "v"}, "<leader>h4", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor4')<CR>")
keymap({"n", "v"}, "<leader>h5", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor5')<CR>")
keymap({"n", "v"}, "<leader>h6", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor6')<CR>")
keymap({"n", "v"}, "<leader>h7", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor7')<CR>")
keymap({"n", "v"}, "<leader>h8", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor8')<CR>")
keymap({"n", "v"}, "<leader>h9", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor9')<CR>")

-- project manager keymaps
keymap({"n", "v"}, "<leader>pa", "<cmd>lua require('vscode').action('projectManager.saveProject')<CR>")
keymap({"n", "v"}, "<leader>po", "<cmd>lua require('vscode').action('projectManager.listProjectsNewWindow')<CR>")
keymap({"n", "v"}, "<leader>pe", "<cmd>lua require('vscode').action('projectManager.editProjects')<CR>")


--testing
keymap({"n", "v"}, "<leader>s", "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR>")
keymap({"n", "v"}, "<S-l>", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
-- Map leader + g + p to open the Problems pane in VSCode
vim.api.nvim_set_keymap('n', '<leader>op', ":call VSCodeCall('workbench.actions.view.problems')<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>vp", function() vim.fn.VSCodeNotify("workbench.actions.view.problems") end)


--vscode coding 
keymap("n", "<leader>ca", "<cmd>lua require('vscode').action('editor.action.codeAction')<CR>")
keymap("n", "<leader>cr", "<cmd>lua require('vscode').action('editor.action.rename')<CR>")
keymap("n", "<leader>cs", "<cmd>lua require('vscode').action('workbench.action.gotoSymbol')<CR>")

-- Toggle Explorer window with <leader>e
-- Toggle Explorer with <leader>e
keymap("n", "<leader>e", "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR><cmd>lua require('vscode').action('workbench.files.action.focusFilesExplorer')<CR>")
vim.api.nvim_set_keymap('n', '<leader>ow', '<Cmd>lua require("vscode").action("workbench.action.output.toggleOutput")<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "gd", function()
  require('vscode').action("editor.action.revealDefinition")
end, { desc = "Go to definition in the same window" })

vim.keymap.set("n", "gD", function()
  require('vscode').action("editor.action.peekDefinition")
end, { desc = "Peek definition in a split window" })
vim.keymap.set("n", "gr", function()
  require('vscode').action("editor.action.referenceSearch.trigger")
end, { desc = "Search references" })

vim.keymap.set("n", "za", function()
  require('vscode').action("editor.toggleFold")
end, { desc = "Toggle fold" })
 


vim.keymap.set("n", "<leader>gr", function()
  require('vscode').action("editor.action.referenceSearch.trigger")
end, { desc = "Show references" })
vim.keymap.set("n", "<leader>gi", function()
  require('vscode').action("editor.action.goToImplementation")
end, { desc = "Go to implementation" })



if vim.g.vscode then
  -- Define the keymap for VS Code
  --vim.keymap.set("n", "gd", function()
    --require('vscode').action("editor.action.revealDefinitionAside")
  --end)

  -- Set the leader key to space
  vim.g.mapleader = " "

  -- Configuration specifically for VS Code Neovim
  require('lazy').setup({
    {
      "kylechui/nvim-surround",
      event = "VeryLazy",
      config = function()
        require("nvim-surround").setup({
          -- Custom configuration for VS Code if needed
        })
      end
    },
    { "nvim-lua/plenary.nvim" },
    { "numToStr/Comment.nvim", config = true, event = "VeryLazy" },
    { "ThePrimeagen/harpoon", config = true, event = "VeryLazy" },
    { "tpope/vim-repeat" },
	{"wellle/targets.vim",
    lazy = false, -- Load immediately or adjust to your preference
	},
    {
      'ggandor/leap.nvim',
      config = function()
        -- Add configuration for leap.nvim here
        require('leap').add_default_mappings()
        -- Customize the keybinding for leap.nvim
        vim.api.nvim_set_keymap('n', 's', '<Cmd>lua require("leap").leap({ target_windows = { vim.fn.win_getid() } })<CR>', { noremap = true, silent = true })
      end
    },
    {
      'vscode-neovim/vscode-multi-cursor.nvim',
      event = 'VeryLazy',
      cond = not not vim.g.vscode,
      opts = {},
    },
	{
  "chentoast/marks.nvim",
  event = "VeryLazy",
  opts = {},
},

    
  })  -- Close the setup function
end  -- Close the if vim.g.vscode block
-- End of the if vim.g.vscode then block
-- CSGO-BORz3-xufcq-heiLN-E2qKN-vzj9Q
-- Ensure smooth scrolling with `zz`
