return {
	"lewis6991/gitsigns.nvim",
	branch = "fix/issue1300",
	config = function()
		-- Удалить знаки диагностики, чтобы не скрывали gitsigns
		vim.diagnostic.config({
			signs = false,
		})

		require("gitsigns").setup({
			current_line_blame = true,
			signs = {
				-- add = { text = "┃" },
				-- change = { text = "┃" },
				delete = { text = "◣" },
				topdelete = { text = "◤" },
				changedelete = { text = "┃" },
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
				changedelete = { text = "┃" },
				-- untracked = { text = "┆" },
			},
		})
		-- require("scrollbar.handlers.gitsigns").setup()
	end,
}
