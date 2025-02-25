return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			local flav = "mocha"
			require("catppuccin").setup({
				flavour = flav,
				transparent_background = false,
			})
			local cols = require("catppuccin.palettes").get_palette(flav)
			-- print(vim.inspect(cols))
			vim.cmd.colorscheme("catppuccin")
			--pick more visible colour than flamingo
			vim.api.nvim_set_hl(0, "LineNr", { fg = cols.flamingo })
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = cols.green, bold = true })
		end,
	},
}