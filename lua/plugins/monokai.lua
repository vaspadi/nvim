return {
	"tanvirtin/monokai.nvim",
	config = function()
		require("monokai").setup({ italics = false })
		vim.api.nvim_set_hl(0, "DapStoppedLine", { bg = "#2e4d3d", ctermbg = "Green" })
	end,
}
