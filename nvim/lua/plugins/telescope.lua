local M = {}

local start = function()
  local actions = require("telescope.actions")
  require('telescope').setup{
    defaults = {
      mappings = {
        i = {
          ["<esc>"] = actions.close
        }
      }
    }
  }
end

M.start = start

return M
