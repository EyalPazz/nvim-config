require("eyal.core.options")
require("eyal.core.keymaps-vscode")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- import packer safely
require("lazy").setup({
	-- Lazy manages itself
	{ "folke/lazy.nvim" },

	-- Colorschemes
	{ "catppuccin/nvim", name = "catppuccin" },
	"bluz71/vim-nightfly-guicolors",

	-- Utilities
	"nvim-lua/plenary.nvim",
	"szw/vim-maximizer",
	"tpope/vim-surround",
	"inkarkat/vim-ReplaceWithRegister",
	"numToStr/Comment.nvim",

	-- File Explorer
	-- "nvim-tree/nvim-tree.lua",
	-- "nvim-tree/nvim-web-devicons",
	--
	-- -- Statusline
	"nvim-lualine/lualine.nvim",
	--
	-- -- Fuzzy Finder
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	-- { "nvim-telescope/telescope.nvim", branch = "0.1.x" },
	--
	-- Autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-nvim-lsp",

	-- Snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- LSP
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"glepnir/lspsaga.nvim",
	"onsails/lspkind.nvim",
	"jose-elias-alvarez/typescript.nvim",

	-- Formatting & linting
	{
		"nvimtools/none-ls.nvim",
		dependencies = { "nvimtools/none-ls-extras.nvim" },
	},
	"jayp0521/mason-null-ls.nvim",

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate", -- only runs on plugin install/update
		event = { "BufReadPost", "BufNewFile" }, -- lazy-load on file read
		config = function()
			local status, _ = pcall(require, "nvim-treesitter.configs")
			if not status then
				return
			end
		end,
	},

	-- Autopairs and autotag("windwp/nvim-autopairs"),
	{ "windwp/nvim-ts-autotag", dependencies = { "nvim-treesitter/nvim-treesitter" } },
	--
	-- Git Integration
	-- "lewis6991/gitsigns.nvim",
	-- {
	-- 	"NeogitOrg/neogit",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"sindrets/diffview.nvim",
	-- 		"nvim-telescope/telescope.nvim",
	-- 	},
	-- },
	"sindrets/diffview.nvim",
	"junegunn/fzf",
	"christoomey/vim-tmux-navigator",
})
-- require("eyal.core.colorscheme")
require("eyal.plugins.comment")
-- require("eyal.plugins.nvim-tree")
require("eyal.plugins.lualine")
require("eyal.plugins.telescope")
require("eyal.plugins.nvim-cmp")
require("eyal.plugins.lsp.mason")
-- require("eyal.plugins.lsp.lspconfig")
-- require("eyal.plugins.lsp.lspsaga")
-- require("eyal.plugins.lsp.null-ls")
-- require("eyal.plugins.lsp.treesitter")
require("eyal.plugins.lsp.autopairs")
-- require("eyal.plugins.gitsigns")
require("eyal.plugins.neogit")
