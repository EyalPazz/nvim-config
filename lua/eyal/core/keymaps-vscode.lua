-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
-- VSCode splits (panes)
keymap.set("n", "<leader>sv", "<Cmd>call VSCodeNotify('workbench.action.splitEditorRight')<CR>")
keymap.set("n", "<leader>sh", "<Cmd>call VSCodeNotify('workbench.action.splitEditorDown')<CR>")
keymap.set("n", "<leader>sx", "<Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>")
keymap.set("n", "<leader>se", "<Cmd>call VSCodeNotify('workbench.action.evenEditorWidths')<CR>")

-- VSCode tabs (editors)
keymap.set("n", "<leader>to", "<Cmd>call VSCodeNotify('workbench.action.files.newUntitledFile')<CR>")
keymap.set("n", "<leader>tx", "<Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>")
keymap.set("n", "<leader>tn", "<Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR>")
keymap.set("n", "<leader>tp", "<Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>")

-- Move between splits
keymap.set("n", "<leader>sl", "<Cmd>call VSCodeNotify('workbench.action.navigateLeft')<CR>")
keymap.set("n", "<leader>sr", "<Cmd>call VSCodeNotify('workbench.action.navigateRight')<CR>")
keymap.set("n", "<leader>sd", "<Cmd>call VSCodeNotify('workbench.action.navigateDown')<CR>")
keymap.set("n", "<leader>su", "<Cmd>call VSCodeNotify('workbench.action.navigateUp')<CR>")
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
