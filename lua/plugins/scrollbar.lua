return {
	"petertriho/nvim-scrollbar",
	event = "VeryLazy",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"tanvirtin/monokai.nvim",
	},
	config = function()
		local cursor_color = "#fd971f"

		require("scrollbar").setup({
			show_in_active_only = true,
			handlers = {
				search = true,
				gitsign = true,
			},
			marks = {
				Cursor = {
					color = cursor_color,
				},
				Error = {
					text = { "-", "E" },
				},
				Warn = {
					text = { "-", "W" },
				},
				GitAdd = {
					text = "┃",
					highlight = "GitSignsAdd",
				},
				GitChange = {
					text = "┃",
					highlight = "GitSignsChange",
				},
				GitDelete = {
					text = "┃",
					highlight = "GitSignsDelete",
				},
			},
		})
		require("scrollbar.handlers.gitsigns").setup()
	end,
}
