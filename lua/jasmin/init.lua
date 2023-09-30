local M = {}

-- Apply the colorscheme
function M.load()
  require "jasmin.highlight".setup()
  require "jasmin.terminal".setup()
end

return M
