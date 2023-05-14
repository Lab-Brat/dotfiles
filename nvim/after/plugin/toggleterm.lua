require("toggleterm").setup{
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  direction = 'float',
}

local Terminal = require("toggleterm.terminal").Terminal
local python = Terminal:new({ cmd = "python", hidden = "true" })

function _PYTHON_TOGGLE()
	python:toggle()
end

