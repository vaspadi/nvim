return {
	{
		"mason-org/mason.nvim",
		version = "1.*",
		build = ":MasonUpdate",
		config = true,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		version = "1.*",
		dependencies = { "mason-org/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
				automatic_installation = true,
			})
		end,
	},
}
