return {
	-- "nvim-flutter/flutter-tools.nvim",
	dir = "D:/projects/plugins/flutter-tools.nvim",
	name = "custom-flutter-tools.nvim",
	ft = "dart",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"mfussenegger/nvim-dap",
	},
	config = function()
		-- Элемент console бесполезен для flutter разработки
		local dapui_config = require("dapui.config")

		for _, layout in ipairs(dapui_config.layouts) do
			for i = #layout.elements, 1, -1 do
				if layout.elements[i].id == "repl" then
					layout.elements[i].size = 1
				end

				if layout.elements[i].id == "console" then
					table.remove(layout.elements, i)
				end
			end
		end

		require("dapui").setup(dapui_config)

		require("flutter-tools").setup({
			fvm = true,
			decorations = {
				device = true,
				project_config = true,
			},
			widget_guides = {
				enabled = true,
			},
			closing_tags = {
				enabled = true,
			},
			lsp = {
				color = { -- show the derived colours for dart variables
					enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
				},
				settings = {
					showTodos = true,
					completeFunctionCalls = true,
					analysisExcludedFolders = {
						--   -- TODO: Разобраться в настройке этого парметра
						--
						--   vim.fn.expand("$HOME/AppData/Local/Pub/Cache"),
						--           "$HOME/AppData/Local/Pub/Cache",
						--   "$HOME/.pub-cache",
						--   "/opt/homebrew/",
						--   "$HOME/tools/flutter/",
						vim.fn.expand("$HOME/AppData/Local/Pub/Cache"),
					},
					renameFilesWithClasses = "prompt",
					updateImportsOnRename = true,
					enableSnippets = true,
				},
			},
			-- dev_tools = {
			--   autostart = true, -- autostart devtools server if not detected
			--   auto_open_browser = true, -- Automatically opens devtools in the browser
			-- },
			debugger = {
				enabled = true,
				exception_breakpoints = {},
				-- register_configurations = function(paths)
				--   print("config")
				--   require("dap").configurations.dart = {
				--     {
				--       type = "dart",
				--       request = "launch",
				--       name = "Launch flutter 2",
				--       dartSdkPath = paths.dart_sdk,
				--       flutterSdkPath = paths.flutter_sdk,
				--       program = "lib/main.dart",
				--       args = {
				--         "--debugging-options",
				--         "debugSdkLibraries=false",
				--         "debugExternalLibraries=false",
				--       },
				--     },
				--   }
				-- end,
			},
			dev_log = {
				enabled = false,
			},
		})
	end,
}
