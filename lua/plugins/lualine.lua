return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	init = function()
		vim.g.lualine_laststatus = vim.o.laststatus
		if vim.fn.argc(-1) > 0 then
			-- set an empty statusline till lualine loads
			vim.o.statusline = " "
		else
			-- hide the statusline on the starter page
			vim.o.laststatus = 0
		end
	end,
	config = function()
		-- local function xkblayout()
		-- return "asdsdf"
		-- return vim.api.nvim_eval([[
		--      libcall(g:XkbSwitchLib, 'Xkb_Switch_getXkbLayout', '')
		--    ]])
		-- end

		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				-- component_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = true,
				refresh = {
					statusline = 100,
					tabline = 100,
					winbar = 100,
				},
			},
			sections = {
				lualine_a = {},
				lualine_b = { "branch", "diff", "diagnostics" },
				-- lualine_c = { "filename" },
				lualine_c = {
					{
						"filename",
						path = 1,
					},
				},
				lualine_x = { "location" },
				lualine_y = { "tabs" },
				lualine_z = {
					-- xkblayout,
					{
						"datetime",
						style = "%H:%M, %a",
					},
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				-- lualine_c = { "filename" },
				-- lualine_x = { "location" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
