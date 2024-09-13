---@type LazySpec
return {
	{
		"rebelot/kanagawa.nvim",
		config = function()
			local kanagawa = require("kanagawa")
			kanagawa.setup({
				transparent = true,
				theme = "wave",
			})
		end,
	},
}
