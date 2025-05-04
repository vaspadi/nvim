return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	enabled = false,
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			vue = { "eslint_d" },
			svelte = { "eslint_d" },
			python = { "pylint_d" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		local debounce_timer = nil

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "TextChanged", "TextChangedI" }, {
			-- group = lint_augroup,
			-- callback = function()
			-- 	-- echo("try_lint")
			-- 	lint.try_lint()
			-- end,
			group = lint_augroup,

			callback = function()
				if debounce_timer then
					vim.fn.timer_stop(debounce_timer)
				end

				debounce_timer = vim.fn.timer_start(500, function()
					lint.try_lint()
				end)
			end,
		})

		-- vim.keymap.set("n", "<leader>l", function()
		-- 	lint.try_lint()
		-- end, { desc = "Trigger linting for current file" })
	end,
}
