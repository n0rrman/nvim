return {
	-- FORMATTER --
	formatters = {
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		javascriptreact = { "prettierd", "prettier", stop_after_first = true },
		typescriptreact = { "prettierd", "prettier", stop_after_first = true },
		svelte = { "prettierd", "prettier", stop_after_first = true },
		css = { "prettierd", "prettier", stop_after_first = true },
		html = { "prettierd", "prettier", stop_after_first = true },
		htmlangular = { "prettierd", "prettier", stop_after_first = true },
		json = { "prettierd", "prettier", stop_after_first = true },
		yaml = { "prettierd", "prettier", stop_after_first = true },
		markdown = { "prettierd", "prettier", stop_after_first = true },
		graphql = { "prettierd", "prettier", stop_after_first = true },
		["*"] = { "codespell" },
	},

	-- LINTER & FORMATTER --
	linter = {
		ensure_installed = {
			-- General --
			"codespell",
			-- Web --
			"prettier",
			"prettierd",
		},
		ignore_install = {
			"janet",
			"inko",
			"ruby",
			"clj-kondo",
		},
	},
	-- LSP --
	lsp = {
		ensure_installed = {},
		ignore_install = {},
	},
}
