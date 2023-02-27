local setup, symbols_outline = pcall(require, "symbols-outline")
if not setup then
	return
end

symbols_outline.setup()
