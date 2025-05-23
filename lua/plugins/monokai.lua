return {
	"tanvirtin/monokai.nvim",
	config = function()
		local monokai = require("monokai")
		local palette = monokai.soda

		require("monokai").setup({
			palette = palette,
			italics = false,
			custom_hlgroups = {
				ExplorerGitModified = { fg = palette.yellow },
				ExplorerGitAdd = { fg = palette.green },
			},
		})

		vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {
			undercurl = true,
			fg = palette.grey,
			sp = palette.pink,
		})
	end,
}

-- CLASSIC
-- palette = {
--     name = 'monokai',
--     base1 = '#272a30',
--     base2 = '#26292C',
--     base3 = '#2E323C',
--     base4 = '#333842',
--     base5 = '#4d5154',
--     base6 = '#9ca0a4',
--     base7 = '#b1b1b1',
--     border = '#a1b5b1',
--     brown = '#504945',
--     white = '#f8f8f0',
--     grey = '#8F908A',
--     black = '#000000',
--     pink = '#f92672',
--     green = '#a6e22e',
--     aqua = '#66d9ef',
--     yellow = '#e6db74',
--     orange = '#fd971f',
--     purple = '#ae81ff',
--     red = '#e95678',
--     diff_add = '#3d5213',
--     diff_remove = '#4a0f23',
--     diff_change = '#27406b',
--     diff_text = '#23324d',
-- },
