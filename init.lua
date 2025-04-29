require("config.common")

if vim.g.vscode then
  require("config.vscode")
else
  require("config.default")
end

