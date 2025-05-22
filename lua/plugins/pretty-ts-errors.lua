return {
	"vaspadi/pretty-ts-errors.nvim",
	branch = "fix/typescript-server",
	-- name = "vaspadi/pretty-ts-errors.nvim",
	-- dir = "D:/projects/plugins/pretty-ts-errors.nvim/",
	config = function()
		require("pretty-ts-errors").setup({
			float_opts = {
				max_width = 140,
				wrap = true,
			},
			auto_open = false,
		})
	end,
	keys = {
		{
			"<leader>lD",
			function()
				require("pretty-ts-errors").show_formatted_error()
			end,
			desc = "Show TS error",
		},
	},
}
