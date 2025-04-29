return {
	"lewis6991/gitsigns.nvim",
	enabled = false,
	config = function()
		require("gitsigns").setup({
			current_line_blame = true,
			signs = {
				-- add = { text = "┃" },
				-- change = { text = "┃" },
				delete = { text = "◣" },
				topdelete = { text = "◤" },
				changedelete = { text = "◣" },
				-- untracked = { text = "┆" },
			},
			-- signs = {
			--   delete = { text = '▶' },        -- или '▸'
			--   topdelete = { text = '▶' },
			--   changedelete = { text = '▶' },
			-- }
			signs_staged = {
				-- add = { text = "┃" },
				-- change = { text = "┃" },
				delete = { text = "◣" },
				topdelete = { text = "◤" },
				changedelete = { text = "◣" },
				-- untracked = { text = "┆" },
			},
		})
		-- require("scrollbar.handlers.gitsigns").setup()
	end,
}
