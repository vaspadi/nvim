return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		-- "rcarriga/nvim-notify",
	},
	opts = {
		-- lsp = {
		--   override = {
		--     ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
		--     ["vim.lsp.util.stylize_markdown"] = true,
		--     -- ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
		--   },
		-- },
		presets = {
			bottom_search = false,
			-- command_palette = true,
			-- long_message_to_split = true,
		},
		status = {
			mode = {
				event = "msg_showmode",
			},
		},
	},
	config = function(_, opts)
		-- HACK: noice shows messages from before it was enabled,
		-- but this is not ideal when Lazy is installing plugins,
		-- so clear the messages in this case.
		if vim.o.filetype == "lazy" then
			vim.cmd([[messages clear]])
		end
		require("noice").setup(opts)
	end,
	keys = {
		{ "<leader>n", "<cmd>Noice fzf<cr>", desc = "Notifications" },
	},
}
