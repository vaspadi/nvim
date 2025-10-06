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

-- <other>
map("n", "U", "<C-r>")
-- </other>
