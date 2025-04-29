return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
		-- "theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dapui.setup({
			layouts = {
				{
					elements = {
						{ id = "breakpoints", size = 0.15 },
						{ id = "watches", size = 0.15 },
						{ id = "stacks", size = 0.15 },
						{ id = "scopes", size = 0.55 },
					},
					position = "left",
					size = 45,
				},
				{
					elements = {
						{ id = "repl", size = 0.8 },
						{ id = "console", size = 0.2 },
					},
					position = "bottom",
					size = 13,
				},
			},
		})

		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open({})
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close({})
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close({})
		end

		vim.api.nvim_set_hl(0, "DapBreakpointSign", { fg = "#f92672" })
		vim.api.nvim_set_hl(0, "DapStoppedSign", { fg = "#ffcc00", bg = "#515122" })
		vim.api.nvim_set_hl(0, "DapStoppedNumber", { fg = "#fd971f", bg = "#515122" })
		vim.api.nvim_set_hl(0, "DapStoppedLine", { bg = "#515122" })

		vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapBreakpointSign" })
		vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "DapBreakpointSign" })
		vim.fn.sign_define("DapBreakpointRejected", { text = "" })
		vim.fn.sign_define("DapLogPoint", { text = "󱂅" })
		vim.fn.sign_define(
			"DapStopped",
			{ text = "", texthl = "DapStoppedSign", numhl = "DapStoppedNumber", linehl = "DapStoppedLine" }
		)
	end,
	keys = {
		{
			"<leader>du",
			function()
				require("dapui").toggle({})
			end,
			desc = "Dap UI",
		},
		{
			"<leader>de",
			function()
				require("dapui").eval()
			end,
			desc = "Eval",
			mode = { "n", "v" },
		},
	},
}
