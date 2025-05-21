require("config.lazy")

local opts = { remap = true, silent = true }

vim.opt.undofile = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

vim.o.shell = "C:/Program Files/Git/bin/bash.exe"
vim.o.shellcmdflag = "-s"

-- Terminal
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
vim.keymap.set("t", "jj", [[<C-\><C-n>]], opts)
vim.keymap.set("t", "оо", [[<C-\><C-n>]], opts)
vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)

-- Arrows
-- vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- wrap
vim.opt.tabstop = 2 -- 1 таб = 2 пробела при отображении в файле
vim.opt.softtabstop = 2 -- Количество пробелов при нажатии <Tab> в режиме вставки
vim.opt.shiftwidth = 2 -- Количество пробелов при сдвиге строки (<< и >>)
vim.opt.expandtab = true -- Преобразует табуляции в пробелы
vim.opt.autoindent = true -- Автоматически копирует отступ с предыдущей строки
vim.opt.smartindent = true -- Умный отступ для кода (особенно в языках вроде C, Lua)
vim.opt.smarttab = true -- Смарт-работа клавиши <Tab>: сдвиг по shiftwidth
-- vim.opt.list = true            -- Показывать невидимые символы
-- vim.opt.listchars = "eol:.,tab:>-,trail:~,extends:>,precedes:<"

vim.opt.wrap = false

-- Удалить комментирование новой строки после коммента
vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions:remove({ "r", "o" })
	end,
})

vim.diagnostic.config({
	update_in_insert = true,
})

vim.keymap.set({ "n", "v" }, "<leader>l", "<cmd>:Lazy<cr>", opts)
vim.keymap.set({ "n", "v" }, "<leader>qq", "<cmd>:qa!<cr>", opts)
vim.keymap.set({ "i", "n", "v" }, "<C-s>", "<cmd>w<cr>")
vim.keymap.set({ "n", "v" }, "<leader>uw", "<cmd>set wrap!<cr>")

-- Windows
vim.keymap.set("n", "<leader>ws", "<C-W>s", { desc = "Split Window Below", remap = true })
vim.keymap.set("n", "<leader>wv", "<C-W>v", { desc = "Split Window Right", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })

-- Buffers
vim.keymap.set("n", "H", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "L", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
vim.keymap.set({ "n", "t" }, "<C-Up>", "<cmd>resize -2<cr>", { desc = "Increase Window Height" })
vim.keymap.set({ "n", "t" }, "<C-Down>", "<cmd>resize +2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set({ "n", "t" }, "<C-Left>", "<cmd>vertical resize -5<cr>", { desc = "Decrease Window Width" })
vim.keymap.set({ "n", "t" }, "<C-Right>", "<cmd>vertical resize +5<cr>", { desc = "Increase Window Width" })

-- Tabs
vim.keymap.set("n", "<leader>tt", "<cmd>:tabnew<CR>")
vim.keymap.set("n", "<leader>td", "<cmd>:tabclose<CR>")
vim.keymap.set("n", "<leader>to", "<cmd>:tabonly<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>:tabprev<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>:tabnext<CR>")
