return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "echasnovski/mini.icons" },
		config = function()
			require("fzf-lua").setup({
				"border-fused",
				winopts = {
					-- width = 0.80,
					-- col = 0.60,
					preview = {
						layout = "vertical",
					},
				},
				-- split = "aboveright new",-- open in a split instead?
				-- "belowright new"  : split below
				-- "aboveleft new"   : split above
				-- "belowright vnew" : split right
				-- "aboveleft vnew   : split left
				-- winopts = {                       -- builtin previewer window options
				--   number            = true,
				--   relativenumber    = true,
				--   -- cursorline        = true,
				--   -- cursorlineopt     = "both",
				--   -- cursorcolumn      = false,
				--   -- signcolumn        = "no",
				--   -- list              = false,
				--   -- foldenable        = false,
				--   -- foldmethod        = "manual",
				-- },
				-- preview = {
				--   winopts = {
				--     relativenumber    = true,
				--   }
				-- }
				files = {
					--  path_shorten = 4,
					formatter = "path.filename_first",
					cwd_prompt = false,
				},
			})
		end,
		keys = {
			{ "<leader><space>", "<cmd>FzfLua files<cr>", desc = "Find files" },
			{ "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Find grep" },
			{ "<leader>bb", "<cmd>FzfLua tabs<cr>", desc = "Find files" },
			{
				"gd",
				"<cmd>FzfLua lsp_definitions     jump1=true ignore_current_line=true<cr>",
				desc = "Goto Definition",
			},
			{
				"gr",
				"<cmd>FzfLua lsp_references      jump1=true ignore_current_line=true<cr>",
				desc = "References",
				nowait = true,
			},
			{
				"gI",
				"<cmd>FzfLua lsp_implementations jump1=true ignore_current_line=true<cr>",
				desc = "Goto Implementation",
			},
			{
				"gy",
				"<cmd>FzfLua lsp_typedefs        jump1=true ignore_current_line=true<cr>",
				desc = "Goto T[y]pe Definition",
			},
			{ "ga", "<cmd>FzfLua lsp_code_actions<cr>", desc = "Lsp Code Actions" },
		},
	},
}
