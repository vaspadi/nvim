-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- <terminal>
local open_repl_after_terminal_closing = false

map("n", "<C-_>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
  open_repl_after_terminal_closing = require("dap").repl.close({ mode = "toggle" })
end, { desc = "which_key_ignore" })

map("t", "<C-_>", function()
  vim.cmd("close")

  if open_repl_after_terminal_closing then
    require("dap").repl.toggle({ height = 15 })
  end
end, { desc = "Hide Terminal" })
-- </terminal>

-- <paste insert>
map("n", 'pi"', 'di""+P', { desc = "Paste above" })
map("n", "pi'", "di'\"+P", { desc = "Paste above" })
map("n", "pib", 'dib"+P', { desc = "Paste above" })
map("n", "pi(", 'di("+P', { desc = "Paste above" })
map("n", "pi{", 'di{"+P', { desc = "Paste above" })
map("n", "pi[", 'di["+P', { desc = "Paste above" })
-- </paste insert>

-- <other>
map("n", "U", "<C-r>")
-- </other>
