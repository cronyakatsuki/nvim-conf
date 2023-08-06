return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "python", "ninja", "rst", "toml" })
			end
		end,
	},
	{
		-- Ensure C/C++ debugger and lsp are installed
		"williamboman/mason.nvim",
		optional = true,
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "pyright", "mypy", "ruff", "black", "debugpy" })
			end
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"python",
			})
		end,
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		ft = { "python" },
		opts = function(_, opts)
			local nls = require("null-ls")
			if type(opts.sources) == "table" then
				vim.list_extend(
					opts.sources,
					{ nls.builtins.diagnostics.mypy, nls.builtins.diagnostics.ruff, nls.builtins.formatting.black }
				)
			end
		end,
	},
	{
		"mfussenegger/nvim-dap",
		optional = true,
		dependencies = {
			"mfussenegger/nvim-dap-python",
            -- stylua: ignore
            keys = {
                { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method" },
                { "<leader>dPc", function() require('dap-python').test_class() end,  desc = "Debug Class" },
            },
			config = function()
				local path = require("mason-registry").get_package("debugpy"):get_install_path()
				require("dap-python").setup(path .. "/venv/bin/python")
			end,
		},
	},
}
