local opts = { noremap = true, silent = true }

-- отменяет раскрытие скрытого кода при навигации
-- vim.cmd('nmap k gj')
-- vim.cmd('nmap l gk')

vim.keymap.set(
	{ "n", "v" },
	"<leader><leader>",
	"<cmd>lua require('vscode').action('workbench.action.quickOpen')<cr>",
	opts
)
vim.keymap.set({ "n", "v" }, "<leader>qs", "<cmd>lua require('vscode').action('workbench.action.openRecent')<cr>", opts)
vim.keymap.set({ "n", "v" }, "<leader>e", "<cmd>lua require('vscode').action('workbench.view.explorer')<cr>", opts)

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Windows
vim.keymap.set(
	{ "n", "v" },
	"<leader>ws",
	"<cmd>lua require('vscode').action('workbench.action.splitEditorDown')<cr>",
	opts
)
vim.keymap.set(
	{ "n", "v" },
	"<leader>wv",
	"<cmd>lua require('vscode').action('workbench.action.splitEditorRight')<cr>",
	opts
)
vim.keymap.set(
	{ "n", "v" },
	"<leader>wd",
	"<cmd>lua require('vscode').action('workbench.action.closeEditorsInGroup')<cr>",
	opts
)

-- Buffers
vim.keymap.set(
	{ "n", "v" },
	"<leader>bd",
	"<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<cr>",
	opts
)
vim.keymap.set(
	{ "n", "v" },
	"H",
	"<cmd>lua require('vscode').action('workbench.action.openPreviousRecentlyUsedEditorInGroup')<cr>",
	opts
)
vim.keymap.set(
	{ "n", "v" },
	"L",
	"<cmd>lua require('vscode').action('workbench.action.openNextRecentlyUsedEditorInGroup')<cr>",
	opts
)

-- Move buffers
vim.keymap.set(
	{ "n", "v" },
	"<leader>bk",
	"<cmd>lua require('vscode').action('workbench.action.moveEditorToAboveGroup')<cr>",
	opts
)
vim.keymap.set(
	{ "n", "v" },
	"<leader>bl",
	"<cmd>lua require('vscode').action('workbench.action.moveEditorToRightGroup')<cr>",
	opts
)
vim.keymap.set(
	{ "n", "v" },
	"<leader>bj",
	"<cmd>lua require('vscode').action('workbench.action.moveEditorToBelowGroup')<cr>",
	opts
)
vim.keymap.set(
	{ "n", "v" },
	"<leader>bh",
	"<cmd>lua require('vscode').action('workbench.action.moveEditorToLeftGroup')<cr>",
	opts
)

vim.notify("config.vscode")
