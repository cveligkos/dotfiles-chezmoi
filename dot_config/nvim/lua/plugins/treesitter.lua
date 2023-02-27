local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	ensure_installed = {
		"c",
		"lua",
		"rust",
		"vim",
		"json",
		"gitignore",
		"css",
		"html",
		"svelte",
		"python",
		"markdown",
		"markdown_inline",
	},
	auto_install = true,
})
