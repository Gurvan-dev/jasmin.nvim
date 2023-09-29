local M = {}

-- Apply the colorscheme
function M.load()
  require "capucine.highlight".setup()
  require "capucine.terminal".setup()
end

return M
