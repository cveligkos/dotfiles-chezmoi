-- Bootstrap lazy.nvim
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

local status, lazy = pcall(require, "lazy")
if not status then
	return
end

lazy.setup({
	"wbthomason/packer.nvim",

	"nvim-lua/plenary.nvim",

	"ellisonleao/gruvbox.nvim",
	"bluz71/vim-nightfly-guicolors",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",

	"szw/vim-maximizer",

	"christoomey/vim-tmux-navigator",

	"tpope/vim-surround",
	"vim-scripts/ReplaceWithRegister",

	"numToStr/Comment.nvim",

	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },

	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",

	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	-- "rafamadriz/friendly-snippets",

	-- manage & install lsp servers, linters & formatters
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- configure lsp servers
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	{ "glepnir/lspsaga.nvim", branch = "main" },
	"jose-elias-alvarez/typescript.nvim",
	"onsails/lspkind.nvim",
	"ray-x/lsp_signature.nvim",

	-- formatting & linting
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	},

	-- auto closing
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",

	"simrat39/symbols-outline.nvim",

	"sheerun/vim-polyglot",

	-- git integration
	"lewis6991/gitsigns.nvim",
	"f-person/git-blame.nvim",

	"NoahTheDuke/vim-just",

	"gpanders/editorconfig.nvim",

	"NvChad/nvim-colorizer.lua",
	"lukas-reineke/indent-blankline.nvim",
	"tpope/vim-repeat",
	"ggandor/leap.nvim",
	"Mofiqul/dracula.nvim",
	"folke/twilight.nvim",
	"folke/zen-mode.nvim",

	"gpanders/nvim-parinfer",
	"elkowar/yuck.vim",
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		dependencies = "nvim-lua/plenary.nvim",
	},

	-- use({
	-- 	"folke/noice.nvim",
	-- 	dependencies = {
	-- 		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	-- 		"MunifTanjim/nui.nvim",
	-- 		-- OPTIONAL:
	-- 		--   `nvim-notify` is only needed, if you want to use the notification view.
	-- 		--   If not available, we use `mini` as the fallback
	-- 		"rcarriga/nvim-notify",
	-- 	},
	-- })
	--
})
