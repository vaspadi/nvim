vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- line number
vim.opt.number = true
vim.opt.relativenumber = true

-- ignorecase in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- other
vim.opt.timeout = false
-- vim.opt.scrolloff = 4

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlights text when yanking",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.cmd("nmap <leader>fc :e ~/AppData/Local/nvim/init.lua<cr>") -- open config

vim.keymap.set("n", "U", "<C-r>", opts) -- Отменить Ctrl + z (u)
vim.keymap.set("n", "<Esc>", ":nohlsearch<cr>", opts) -- отменить глобальный поиск
vim.keymap.set("i", "jj", "<Esc>", opts)

-- Clipboard
vim.keymap.set({ "n", "v" }, "y", '"+y', opts)
vim.keymap.set({ "n", "v" }, "Y", '"+Y', opts)
vim.keymap.set({ "n", "v" }, "<leader>d", '"+d', opts)
vim.keymap.set({ "n", "v" }, "p", '"+p', opts)
vim.keymap.set({ "n", "v" }, "P", '"+P', opts)
vim.keymap.set({ "n", "v" }, "<leader>p", "p", opts)
vim.keymap.set({ "n", "v" }, "<leader>P", "P", opts)
vim.keymap.set({ "n", "v" }, "<T-v>", "P", opts)

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
