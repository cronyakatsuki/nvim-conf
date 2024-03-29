return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	opts = {
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
			loops = { "bold" },
			functions = { "italic" },
			keywords = { "italic" },
			strings = { "italic" },
			variables = { "bold" },
			numbers = { "bold" },
			booleans = { "italic" },
			properties = { "italic" },
			types = { "underline" },
			operators = { "bold" },
		},
		flavour = "frappe",
		integrations = {
			alpha = true,
			bufferline = true,
			cmp = true,
			gitsigns = true,
			harpoon = true,
			indent_blankline = {
				enabled = true,
			},
			markdown = true,
			mason = true,
			mini = true,
			neotree = true,
			dap = {
				enabled = true,
			},
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "undercurl" },
					hints = { "undercurl" },
					warnings = { "undercurl" },
					information = { "undercurl" },
				},
			},
			notify = true,
			telescope = {
				enabled = true,
			},
			lsp_trouble = true,
			treesitter = true,
			which_key = true,
			fidget = true,
		},
	},
	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme("catppuccin")
	end,
}
