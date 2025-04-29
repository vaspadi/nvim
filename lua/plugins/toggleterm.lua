return {
	{
		"akinsho/toggleterm.nvim",
		opts = {
			open_mapping = "<C-_>",
			-- shell = "bash",
			-- open_mapping = "<C-/>",
			start_in_insert = true,
			-- direction = "float",
			-- hide_numbers = false,
			size = 20,
		},
		-- config = true,
		config = function(_, opts)
			-- print(
			-- vim.o.shell = "D:/Git/bin/bash.exe"
			-- vim.o.shell = "C:/Program Files/Git/bin/bash.exe"
			-- vim.o.shellcmdflag = "-s"
			require("toggleterm").setup(opts)
		end,
	},
}
