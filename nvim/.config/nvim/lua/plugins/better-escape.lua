return {

	"max397574/better-escape.nvim",
	-- `k` would be the second key of a mapping
	config = function()
		require("better_escape").setup()
	end,
	k = function()
		vim.api.nvim_input("<esc>")
		local current_line = vim.api.nvim_get_current_line()
		if current_line:match("^%s+j$") then
			vim.schedule(function()
				vim.api.nvim_set_current_line("")
			end)
		end
	end,
	-- enabled = false,
	-- config = function()
	--   require("better_escape").setup({
	--     mapping = { "jk", "jj", "kk" }, -- a table with mappings to use
	--     timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
	--     clear_empty_lines = false, -- clear line after escaping if there is only whitespace
	--     keys = "<Esc>",
	--   })
	-- end,
}
