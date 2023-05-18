local M = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup()
  end,
}

function M.config()
  local copilot = require "copilot"

  copilot.setup {
    suggestion = { enabled = true },
    panel = { enabled = true },
    filetypes = {
      yaml = true,
      markdown = true,
      python = true,
      ["."] = false,
    },
  }
end

return M
