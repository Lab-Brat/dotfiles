local M = {
  "nvim-treesitter/nvim-treesitter",
  commit = "226c1475a46a2ef6d840af9caa0117a439465500",
  event = "BufReadPost",
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
      commit = "729d83ecb990dc2b30272833c213cc6d49ed5214",
    },
    {
      "nvim-tree/nvim-web-devicons",
      event = "VeryLazy",
      commit = "0568104bf8d0c3ab16395433fcc5c1638efc25d4"
    },
  },
}
function M.config()
  local configs = require "nvim-treesitter.configs"

  configs.setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python" },
    ignore_install = { "" },
    sync_install = false,

    highlight = {
      enable = true,
      disable = { "css" },
    },
    autopairs = {
      enable = true,
    },
    indent = { enable = true, disable = { "python", "css" } },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  }
end

return M
