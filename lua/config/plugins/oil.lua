return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		event = "VeryLazy",
		opts = {
			-- Add any specific options you want to set for Oil.nvim here
			view_options = {
				show_hidden = true, -- Show hidden files
				-- Add any other view options here
			},
		},
		dependencies = {
			{ "echasnovski/mini.icons", opts = {} }, -- Optional dependency for icon support
			-- Alternatively, you can use nvim-web-devicons
			-- { "nvim-tree/nvim-web-devicons" }, -- Uncomment this line if you prefer nvim-web-devicons
		},
		cmd = "Oil", -- Command to activate Oil
		keys = {
			{ "<leader>-", ":tabnew | Oil<CR>", desc = "Open Oil file explorer", silent = true }, -- Key mapping to open Oil
		},
	},
}