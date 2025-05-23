return {
	"Wansmer/langmapper.nvim",
	lazy = false,
	priority = 1,
	config = function(opts)
		require("langmapper").setup(opts)

		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyDone",
			once = true,
			callback = function()
				local function escape(str)
					local escape_chars = [[;,."|\]]
					return vim.fn.escape(str, escape_chars)
				end

				local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm]]
				local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
				local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
				local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]

				vim.opt.langmap = vim.fn.join({
					-- | `to` should be first     | `from` should be second
					escape(ru_shift)
						.. ";"
						.. escape(en_shift),
					escape(ru) .. ";" .. escape(en),
				}, ",")
			end,
		})
	end,
}
