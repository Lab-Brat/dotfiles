require('copilot').setup({
	suggestion = { enabled = false },
        panel = { enabled = false },
	filetypes = {
		yaml = false,
		markdown = true,
		help = false,
		gitcommit = false,
		gitrebase = false,
		hgcommit = false,
		svn = false,
		cvs = false,
		["."] = false,
	},
        copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v18.16.0/bin/node",
	server_opts_overrides = {},
})

require("copilot.suggestion").is_visible()

