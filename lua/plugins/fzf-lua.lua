return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "echasnovski/mini.icons" },
		config = function()
			require("fzf-lua").setup({
				"border-fused",
				buffers = {
					formatter = "path.filename_first",
				},
				files = {
					fd_opts = [[ -H -I -tf -tl -E .git -E node_modules -E build -E .dart_tool]],
					formatter = "path.filename_first",
					cwd_prompt = false,
					winopts = {
						title = false,
						width = 0.5,
						number = true,
						preview = {
							hidden = true,
						},
					},
				},
				grep = {
					formatter = "path.filename_first",
				},
				keymap = {
					builtin = {
						-- ["<M-Esc>"] = "hide", -- hide fzf-lua, `:FzfLua resume` to continue
						-- ["<F1>"] = "toggle-help",
						["<F2>"] = "toggle-fullscreen",
						-- -- Only valid with the 'builtin' previewer
						["<F3>"] = "toggle-preview-wrap",
						["<F4>"] = "toggle-preview",
						-- -- Rotate preview clockwise/counter-clockwise
						-- ["<F5>"] = "toggle-preview-ccw",
						-- ["<F6>"] = "toggle-preview-cw",
						-- -- `ts-ctx` binds require `nvim-treesitter-context`
						-- ["<F7>"] = "toggle-preview-ts-ctx",
						-- ["<F8>"] = "preview-ts-ctx-dec",
						-- ["<F9>"] = "preview-ts-ctx-inc",
						-- ["<S-Left>"] = "preview-reset",
						["<C-d>"] = "preview-page-down",
						["<C-u>"] = "preview-page-up",
						-- ["<M-S-down>"] = "preview-down",
						-- ["<M-S-up>"] = "preview-up",
					},
				},
			})
		end,
		keys = {
			{ "<leader><space>", "<cmd>FzfLua files<cr>", desc = "Find files" },
			{ "<leader>fh", "<cmd>FzfLua oldfiles<cr>", desc = "Files history" },
			{ "<leader>sq", "<cmd>FzfLua grep_quickfix<cr>", desc = "Find quickfix" },
			{ "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Find grep", mode = "n" },
			{ "<leader>sg", "<cmd>FzfLua grep_visual<cr>", desc = "Search visual", mode = "v" },
			{ "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "Find word" },
			{ "<leader>sW", "<cmd>FzfLua grep_cWORD<cr>", desc = "Find WORD" },
			{ "<leader>tt", "<cmd>FzfLua tabs<cr>", desc = "Find tabs" },
			{ "<leader>bb", "<cmd>FzfLua buffers<cr>", desc = "Find buffers" },
			{
				"gd",
				"<cmd>FzfLua lsp_definitions jump1=true ignore_current_line=true<cr>",
				desc = "Goto Definition",
			},
			{
				"gr",
				"<cmd>FzfLua lsp_references jump1=true ignore_current_line=true<cr>",
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
				"<cmd>FzfLua lsp_typedefs jump1=true ignore_current_line=true<cr>",
				desc = "Goto T[y]pe Definition",
			},
			{ "ga", "<cmd>FzfLua lsp_code_actions<cr>", desc = "Lsp Code Actions" },
		},
	},
}
