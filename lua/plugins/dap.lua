return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		{
			"theHamsta/nvim-dap-virtual-text",
			opts = {
				enabled = true,
				show_stop_reason = true,
			},
		},
	},
	keys = {
		-- { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
		{
			"<leader>db",
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "Toggle Breakpoint",
		},

		{
			"<leader>dB",
			function()
				require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end,
			desc = "Breakpoint Condition",
		},
		{
			"<leader>dc",
			function()
				require("dap").continue()
			end,
			desc = "Run/Continue",
		},
		{
			"<leader>dr",
			function()
				require("dap").restart()
			end,
			desc = "Restart",
		},
		{
			"<leader>dp",
			function()
				require("dap").pause()
			end,
			desc = "Pause",
		},
		-- { "<leader>da", function() require("dap").continue({ before = get_args }) end, desc = "Run with Args" },
		-- { "<leader>dC", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
		-- { "<leader>dg", function() require("dap").goto_() end, desc = "Go to Line (No Execute)" },
		-- { "<leader>di", function() require("dap").step_into() end, desc = "Step Into" },
		-- { "<leader>dj", function() require("dap").down() end, desc = "Down" },
		-- { "<leader>dk", function() require("dap").up() end, desc = "Up" },
		-- { "<leader>dl", function() require("dap").run_last() end, desc = "Run Last" },
		-- { "<leader>do", function() require("dap").step_out() end, desc = "Step Out" },
		-- { "<leader>dO", function() require("dap").step_over() end, desc = "Step Over" },
		-- { "<leader>dP", function() require("dap").pause() end, desc = "Pause" },
		{
			"<leader>ds",
			function()
				require("dap").session()
			end,
			desc = "Session",
		},
		-- {
		-- 	"<leader>dr",
		-- 	function()
		-- 		require("dap").repl.toggle()
		-- 	end,
		-- 	desc = "Open REPL",
		-- },
		{
			"<leader>d",
		},
		{
			"<leader>dn",
			function()
				require("dap").step_over()
			end,
			desc = "Step over",
		},
		{
			"<leader>di",
			function()
				require("dap").step_into()
			end,
			desc = "Step into",
		},
		{
			"<leader>dI",
			function()
				require("dap").step_out()
			end,
			desc = "Step out",
		},
		{
			"<leader>dj",
			function()
				require("dap").up()
			end,
			desc = "Down by stack",
		},
		{
			"<leader>dk",
			function()
				require("dap").down()
			end,
			desc = "Up by stack",
		},
		-- Что-то не понятное, открывает плавающее окно
		-- {
		-- 	"<leader>dh",
		-- 	function()
		-- 		require("dap.ui.widgets").hover()
		-- 	end,
		-- 	desc = "Widget",
		-- },
		--  vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
		--    require('dap.ui.widgets').preview()
		--  end)
		--  vim.keymap.set('n', '<Leader>df', function()
		--    local widgets = require('dap.ui.widgets')
		--    widgets.centered_float(widgets.frames)
		--  end)
		--  vim.keymap.set('n', '<Leader>ds', function()
		--    local widgets = require('dap.ui.widgets')
		--    widgets.centered_float(widgets.scopes)
		--  end)
		{
			"<leader>dt",
			function()
				require("dap").terminate()
			end,
			desc = "Terminate",
		},
	},
}
