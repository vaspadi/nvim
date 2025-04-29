return {
	"nvimtools/none-ls.nvim",
  enabled = false,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- ✨ Diagnostics (линтинг)
				null_ls.builtins.diagnostics.eslint_d,

				-- 🛠️ Code actions (как в VSCode)
				null_ls.builtins.code_actions.eslint_d,

				-- 🧼 Formatting
				null_ls.builtins.formatting.eslint_d.with({
					filetypes = {
						"javascript",
						"typescript",
						"javascriptreact",
						"typescriptreact",
						"vue",
						"html",
					},
				}),

				null_ls.builtins.formatting.prettier.with({
					filetypes = {
						"css",
						"json",
						"yaml",
					},
				}),

				null_ls.builtins.formatting.stylua,
			},

			-- Optional: auto-format on save (как в conform)
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = "FormatOnSave", buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr, timeout_ms = 500 })
						end,
					})
				end
			end,
		})

		-- Мапа для ручного запуска форматирования
		vim.keymap.set("n", "<leader>f", function()
			vim.lsp.buf.format({ async = true })
		end, { desc = "[F]ormat buffer" })
	end,
}
