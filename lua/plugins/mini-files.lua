return {
	"echasnovski/mini.nvim",
	dependencies = {
		{
			"echasnovski/mini.icons",
			config = function()
				require("mini.icons").setup()
			end,
		},
	},
	config = function()
		require("mini.files").setup({
			windows = {
				preview = true,
				width_nofocus = 20,
				width_focus = 50,
				width_preview = 100,
			},
			options = {
				use_as_default_explorer = true,
			},
			mappings = {
				go_in = "L",
				go_in_plus = "l",
			},
		})
	end,
	keys = {
		{
			"<leader>e",
			function()
				require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
			end,
			desc = "Open mini.files",
		},
		{
			"<leader>E",
			function()
				require("mini.files").open(vim.uv.cwd(), true)
			end,
			desc = "Open mini.files (cwd)",
		},
		-- {
		--   "<leader>fm",
		--   function()
		--     require("mini.files").open(LazyVim.root(), true)
		--   end,
		--   desc = "Open mini.files (root)",
		-- },
	},
}
